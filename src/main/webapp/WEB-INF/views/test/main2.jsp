<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <title>실시간 위치 나타내기</title>
<body>
</body>

<script type="text/javascript"> 
	var IMP = window.IMP; // 생략 가능
	IMP.init("imp72838338"); // 예: imp00000000
	IMP.certification({
	}, function(rsp) {
	    if ( rsp.success ) {
	    	 // 인증성공
	        console.log(rsp.imp_uid);
	        console.log(rsp.merchant_uid);
	        
	        $.ajax({
					type : 'POST',
					url : '/certifications/confirm',
					dataType : 'json',
					data : {
						imp_uid : rsp.imp_uid
					}
			 }).done(function(rsp) {
			 });
	        	
	    } else {
	        var msg = '인증에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;

	        alert(msg);
	    }
	});
document.domain = "abc.go.kr";
</script>

</html>