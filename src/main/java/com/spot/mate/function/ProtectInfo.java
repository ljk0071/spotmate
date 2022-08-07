package com.spot.mate.function;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class ProtectInfo{
//	String encKey = "xcnmvbewyatuierhsdjkfhgdaaaaaaaa";
//	String encIv = "aaaaaaaaaaaaaaaa";
	String encType = "AES/ECB/PKCS5PADDING";
	int bitKeyType = 256;
	
	public String encryptData(String plainData) throws IOException{
		
		String encryptedData = encrypt(plainData, encKey(), encType, bitKeyType, null);
		return encryptedData;
	}
	
	public String decryptData(String encryptedData) throws IOException{
		
		String decryptedData = decrypt(encryptedData, encKey(), encType, bitKeyType, null);
		return decryptedData;
	}
	
	private String encKey() throws IOException {
		InputStream is = new FileInputStream("./src/main/resources/static/encKey.txt");
		InputStreamReader isr = new InputStreamReader(is, "UTF-8");
		BufferedReader br = new BufferedReader(isr);
		String encKey = br.readLine();
		br.close();
		return encKey;
	}
	
	@SuppressWarnings("unused")
	private String encIv() throws IOException {
		InputStream is = new FileInputStream("./src/main/resources/static/encIv.txt");
		InputStreamReader isr = new InputStreamReader(is, "UTF-8");
		BufferedReader br = new BufferedReader(isr);
		String encIv = br.readLine();
		br.close();
		return encIv;
	}
	
	private SecretKeySpec getKeySpec(String encKey, String encType, int bitKeyType) {
		byte[] bytesKey = encKey.getBytes(StandardCharsets.UTF_8);
		
		int byteKeySize = bitKeyType/8;
		
		byte[] copiedKey = new byte[byteKeySize];
		
		int keyLength = 0;
		if(keyLength > copiedKey.length) {
			keyLength = copiedKey.length;
		}else {
			keyLength = bytesKey.length;
		}
		
		System.arraycopy(bytesKey, 0, copiedKey, 0, keyLength);
		
		return new SecretKeySpec(bytesKey, encType.split("/")[0]);
	}
	
	private IvParameterSpec getIvSpec(String encIv, int bytesIvLength) {
		byte[] bytesIv = encIv.getBytes(StandardCharsets.UTF_8);
		
		byte[] copiedIv = new byte[bytesIvLength];
		
		int ivLength = 0;
		
		if(ivLength > copiedIv.length) {
			ivLength = copiedIv.length;
		} else {
			ivLength = bytesIv.length;
		}
		
		System.arraycopy(bytesIv, 0, copiedIv, 0, ivLength);
		
		return new IvParameterSpec(copiedIv);
	}
	
	private String encrypt(String plainData, String encKey, String encType, int bitKeyType, String encIv) {
		
		SecretKeySpec keySpec = getKeySpec(encKey, encType, bitKeyType);
		
		int bytesIvLength = 16;
		IvParameterSpec ivSpec = null;
		if(encIv != null) {
			ivSpec = getIvSpec(encIv, bytesIvLength);
		}
		
		Cipher cipher;
		String b64EncryptedData = "";
		
		try {
			cipher = Cipher.getInstance(encType);
			
			if (encType.split("/")[1].equals("ECB")) {
				cipher.init(Cipher.ENCRYPT_MODE, keySpec);
			}else {
				cipher.init(Cipher.ENCRYPT_MODE, keySpec, ivSpec);
			}
			
			byte[] encrypted = cipher.doFinal(plainData.getBytes(StandardCharsets.UTF_8));
			
			b64EncryptedData = new String(Base64.getEncoder().encode(encrypted));
		}catch (NoSuchAlgorithmException | NoSuchPaddingException | InvalidAlgorithmParameterException | InvalidKeyException |
				BadPaddingException | IllegalBlockSizeException e) {
			e.printStackTrace();
		}
		return b64EncryptedData;
	}
	
	private String decrypt(String encryptedData, String encKey, String encType, int bitKeyType, String encIv) {
		SecretKeySpec keySpec = getKeySpec(encKey, encType, bitKeyType);
		
		int bytesIvLength = 16;
		IvParameterSpec ivSpec = null;
		if(encIv != null) {
			ivSpec = getIvSpec(encIv, bytesIvLength);
		}
		Cipher cipher = null;
		String strDecrypted = null;
		
		try {
			cipher = Cipher.getInstance(encType);
			
			if (encType.split("/")[1].equals("ECB")) {
				cipher.init(Cipher.DECRYPT_MODE, keySpec);
			}else {
				cipher.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);
			}
			
			byte[] bytesEncrypted = Base64.getDecoder().decode(encryptedData);
			strDecrypted = new String(cipher.doFinal(bytesEncrypted), StandardCharsets.UTF_8);
			
		}catch (NoSuchAlgorithmException | NoSuchPaddingException | InvalidAlgorithmParameterException | InvalidKeyException |
				BadPaddingException | IllegalBlockSizeException e) {
			e.printStackTrace();
		}
		return strDecrypted; 
	}

}
