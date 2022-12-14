<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>비밀번호 변경</title>
</head>
<body>
	<script>
		function check(){
			if(document.fr.id.value == ""){
				alert('아이디를 입력하세요!');
				document.fr.id.focus();
				return false;
			}
			if(document.fr.newPw.value == ""){
				alert('새 비밀번호를 입력하세요!');
				document.fr.newPw.focus();
				return false;
			}
			if(document.fr.newPw2.value == ""){
				alert('새 비밀번호를 입력하세요!');
				document.fr.newPw2.focus();
				return false;
			}
			
			if(document.fr.newPw.value != document.fr.newPw2.value){
				alert('비밀번호가 일치하지 않습니다!');
				return false;
			}
			
			alert('비밀번호가 변경되었습니다!');			
		}
	</script>
	
	
	
	<!-- 각종 요소 -->
	<jsp:include page="../inc/include.jsp" />

	<!-- 헤더/네비 -->
	<jsp:include page="../inc/nav_bar.jsp"></jsp:include>

	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
	<h1 align="center">비밀번호 변경</h1><br>
	
	
	<fieldset>
		<div align="center">
	    <form action="./UpdatePwAction.aim" method="post" name="fr" onSubmit="return check()">			  
	    	<div>
	    		<input type="text" name="id" placeholder="아이디를 입력하세요.">
	    	</div> 
	    	<br>
			<div>
				<input type="password" name="newPw" placeholder="새비밀번호를 입력하세요.">
			</div>        	
			<br>
			<div>
				<input type="password" name="newPw2" placeholder="다시 새비밀번호를 입력하세요.">
			</div>      
			<br>
			<div>
			<input type="submit" value="비밀번호 변경" style="color:#fff; background:#18315D; width:85px; height:25px; margin:5px; border-radius:5px; border:1px solid #fff;">
			</div>  	
		</form>
		</div>
	</fieldset>

</body>
</html>