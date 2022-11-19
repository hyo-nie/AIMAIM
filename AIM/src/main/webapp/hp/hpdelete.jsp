<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function ckhppw(){
		
		if(document.delpw.hp_deletepw.value==""){
			alert('비밀번호를 입력해주세요!');
			return false;
		}
	}

</script>

</head>
<body>
	<!-- 각종 요소 -->
	<jsp:include page="../inc/include.jsp" />
	<!-- 상위 배너 -->
	<jsp:include page="../inc/topbanner.jsp"/>
	<!-- 헤더/네비 -->
	<jsp:include page="../inc/login_nav_bar.jsp" />
	
		
	<div id="loginContents"
		class="contents_full contents_member_comn area__movingbar litype3">
		<div class="tab_con">
			<div class="member_login_wrap">
				<div class="contents_inner">
					<div class="login_box">
						<p class="tip">세상의 모든 영화 - All In Movie !</p>
						<div class="login_area">
							<form action="./MyHpDelete.hp?hp_bno=${param.hp_bno }&pageNum=${param.pageNum }" method="post" name="delpw"
								onsubmit="return ckhppw()">
								<div>
									<input type="hidden" name="bno" value="${param.hp_bno }">
									<input type="password" id="hp_deletepw" maxlength="15"  placeholder="삭제 비밀번호를 입력해 주세요." title="입력태그" name="hp_deletepw">
									<button type="submit" class="btn_login">log in</button>
								</div>
							</form>
						</div>
					
					</div>
					
				</div>
			</div>
		</div>
	</div>




	<!-- 하단배너 -->
	<jsp:include page="../inc/loginform_bottom_banner.jsp" />
	<!-- 약관 -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>