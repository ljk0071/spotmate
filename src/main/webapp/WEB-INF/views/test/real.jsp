<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet' type='text/css' href='/real.css'>

<title>Insert title here</title>
</head>
<body>
	<div id='real'>
		<h1>real</h1>
		<input type='text' id='mid' value='홍길동'>
		<input type='button' value='로그인' id='btnLogin'>
		<br/>
		<div id='talk'></div>
		<div id='sendZone'>
			<textarea id='msg'>hi...</textarea>
			<input type='button' value='전송' id='btnSend'>
		</div>
	</div>
</body>
<script src='/assets/js/real.js'></script>
</html>