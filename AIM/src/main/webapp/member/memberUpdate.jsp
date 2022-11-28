<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AIM - 회원 정보 수정</title>
<script type="text/javascript">
  function check(){
		var mb_pw = $("#mb_pw").val();
		var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
		// 대문자,소문자,숫자,특수기호 포함 최소 8글자 여부
		// 특수기호는 "#?!@$%^&*-" 만 사용가능 필요시 추가하면 됍니다.
				
	  if(document.fr.mb_pw.value==""){
		  alert('비밀번호를 입력하세요');
		  document.fr.pw.focus();
		  return false;
	  }
	  else if (mb_pw.length < 8 || mb_pw.length > 20){
				alert("비밀번호를 8글자~20글자 사이로 입력해주세요");
				document.fr.mb_pw.focus();
				return false;
	 } 
	  else if (false === reg.test(mb_pw)) {
				alert('비밀번호는 숫자/대문자/소문자/특수문자를 최소 1개이상 모두 포함해야 합니다.');
				document.fr.mb_pw.focus();
				return false;
			} 
	  alert('회원정보가 변경되었습니다');
	  document.fr.submit();  
  }
</script>

<!-- 각종 요소 -->
<jsp:include page="../inc/include.jsp" />
<!-- 헤더/네비 -->
<jsp:include page="../inc/nav_bar.jsp"></jsp:include>

</head>
<body>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  
  <h1 align="center">회원정보변경</h1>
  <br>
  <br>
  <fieldset>
    <div align="center">
      <form action="./MemberUpdatePro.aim" name="fr" method="post">
        아이디 <input type="text" maxlength="10" value="${dto.mb_id }" name="mb_id" readonly><br>
        <br>
        비밀번호 <input type="password" maxlength="19" id="mb_pw" name="mb_pw" placeholder="비밀번호를 입력하세요." ><br>
        <br>
        이름 <input type="text" name="mb_name" value="${dto.mb_name }" ><br>
        <br>
        닉네임 <input type="text" name="mb_nick" value="${dto.mb_nick }" ><br>
        <br>
        전화번호 <input type="text" name="mb_tel" value="${dto.mb_tel }" ><br>
        <br>
        <input type="button" value="변경하기"  onclick="return check();" style="color:#fff; background:#18315D; width:75px; height:25px; margin:5px; border-radius:5px; border:1px solid #fff;">
        <input type="button" value="돌아가기" onclick="history.back();" style="color:#fff; background:#18315D; width:75px; height:25px; margin:5px; border-radius:5px; border:1px solid #fff;">
      </form>
    </div>
  </fieldset>





<!-- 약관 -->
<jsp:include page="../inc/footer.jsp"/>

</body>
</html>