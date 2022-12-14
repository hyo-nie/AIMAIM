<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AIM (All In Movie!) - 고객센터</title>
</head>
<body>
	<!-- 각종 요소 -->
	<jsp:include page="../inc/include.jsp" />
	<!-- 헤더/네비 -->
	<jsp:include page="../inc/nav_bar.jsp" />
	<!-- 사이드 퀵메뉴 -->
	<jsp:include page="../inc/side_quick_menu.jsp" />
	
	<br><br><br>
	
	<div id="contents" class="contents_customer area__movingbar litype5"
		style="margin-top: 120px;">
		<div class="title_top">
			<h2 class="tit">고객센터</h2>
		</div>
		<ul class="tab_wrap outer actionmovingbar">
			
			<li class="active"><button type="button" class="tab_tit"
					style="width: 33.33%; left: 0%;" onclick="location.href='./NtList.nt'">
					<span>공지사항</span>
				</button>
				<form action="./NtUpdate.nt?nt_bno=${dto.nt_bno}&pageNum=${pageNum }" method="post">
				<div class="tab_con">
					<h3 class="hidden">공지사항</h3>
					<ul class="tab_wrap inner">
						<li class="active"><div class="tab_con ty4">
								<h4 class="hidden">전체 공지</h4>
								<table class="tbl_dtal" summary="공지사항 상세내용에 대한 표입니다">
								
									<caption>공지사항 상세내용</caption>
									<colgroup>
										<col style="width: auto;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">${dto.nt_subject }</th>
										</tr>
									</thead>
									<tbody>
										<tr class="tb_info">
											<td>
												<span class="tit">작성자</span><span class="cont">${dto.mb_id }</span>
												<span class="tit">등록일</span><span class="cont">${dto.nt_date }</span>
												<span class="tit">번호</span><soab class="cont">${requestScope.dto.nt_bno }
											</tr>
										<tr class="tb_content">
											<td><div id="divNoticeContents">
													<p>
														<font size="2" face="맑은 고딕">
															${dto.nt_content }
														</font>
													</p>
												</div></td>
										</tr>
									</tbody>
								</table>
								<div class="btn_btm_wrap">
									<input type="hidden" name="mb_pw" id="mb_pw" value="${dto.mb_pw }">
									<c:if test="${mb_id.equals('admin') }">
									 <input type="submit" style="background-color:#18315D" value="공지 사항 수정" class="btn_col2 ty6">
  	        						 <input type="button" value="공지 사항 삭제" class="btn_col3 ty6" 
  	        						 	onclick="location.href= './NtDelete.nt?nt_bno=${dto.nt_bno}&pageNum=${pageNum }';">
									 </c:if>
									 <a href="./NtList.nt" style="background-color:#18315D" class="btn_col2 ty6">공지사항 목록</a>
								</div>
							</div></li>
					</ul>
				</div></form>
				</li>
				
			<li><button type="button" class="tab_tit"
					style="width: 33.33%; left: 33.33%;" onclick="location.href='./HpLogin.hp';">
					<span>1:1문의</span>
				</button></li>
			<li><button type="button" class="tab_tit"
					style="width: 33.33%; left: 66.67%;" onclick="location.href='./MyHpList.hp';">
					<span>문의 내용 목록</span>
				</button></li>
			
			<li class="wrap_nav_underline"><span class="nav_underline"></span></li>
		</ul>
	</div>
	<!-- 푸터 -->
	<jsp:include page="../inc/footer.jsp" />
	
</body>
</html>