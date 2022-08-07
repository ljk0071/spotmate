package com.spot.mate.function;

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

public class AESTest {
	
	public static void main(String[] args) {
		String plainData = "DN7PHK";
//		String encKey = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
		String encKey = "wxSQ7S6yfknCgGnSf#RkkVgySCmGnwxk";
//		String encIv = "aaaaaaaaaaaaaaaa";
		String encIv = "gxy276uwSC4kk6GG";
		String encType = "AES/ECB/PKCS5PADDING";
		int bitKeyType = 256;
		
		System.out.println("plain :" + plainData);

		String encryptedData = encrypt(plainData, encKey, encType, bitKeyType, null);
		System.out.println("encrypted :" + encryptedData);
		
		String decryptedData = decrypt(encryptedData, encKey, encType, bitKeyType, null);
		System.out.println("decrypted :" + decryptedData);
	}
	
	public static SecretKeySpec getKeySpec(String encKey, String encType, int bitKeyType) {
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
	
	public static IvParameterSpec getIvSpec(String encIv, int bytesIvLength) {
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
	
	public static String encrypt(String plainData, String encKey, String encType, int bitKeyType, String encIv) {
		
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
	
	public static String decrypt(String encryptedData, String encKey, String encType, int bitKeyType, String encIv) {
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
