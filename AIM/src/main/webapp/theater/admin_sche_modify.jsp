<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function roomCdChange(e) {
		var roomCd_seomyeon = [ "1", "2", "3" ];
		var roomCd_haewoondae = [ "4", "5", "6" ];
		var roomCd_daeyeon = [ "7", "8", "9" ];
		var roomCd_sasang = [ "10", "11", "12" ];
		var roomCd_dongrae = [ "13", "14", "15" ];
		var target = document.getElementById("room");

		if (e.value == "1")
			var d = roomCd_seomyeon;
		else if (e.value == "2")
			var d = roomCd_haewoondae;
		else if (e.value == "3")
			var d = roomCd_daeyeon;
		else if (e.value == "4")
			var d = roomCd_sasang;
		else if (e.value == "5")
			var d = roomCd_dongrae;

		target.options.length = 0;

		for (x in d) {
			var opt = document.createElement("option");
			opt.value = d[x];
			opt.innerHTML = d[x];
			target.appendChild(opt);
		}
	}
	function scheMo() {
		if (document.sm.roomCd.value == "") {
			alert("상영관을 선택해주세요");
			document.sm.roomCd.focus();
			return false;
		}
		if (document.sm.runcount.value == "") {
			alert("상영횟수를 입력해주세요");
			document.sm.runcount.focus();
			return false;
		}
		if (isNaN(document.sm.runcount.value)) {
			alert("상영횟수는 숫자로 입력해주세요");
			document.sm.runcount.focus();
			return false;
		}
		if (confirm("수정 하시겠습니까?") == true) { //확인
			document.sm.submit();
		} else { //취소
			return false;
		}
	}
</script>
</head>
<body>
	<!-- 각종 요소 -->
	<jsp:include page="../inc/include.jsp" />

	<!-- 헤더/네비 -->
	<jsp:include page="../inc/nav_bar.jsp" />

	<%
	//로그인 제어
	String mb_id = (String) session.getAttribute("mb_id");
	if (mb_id == null || !mb_id.equals("admin")) {
		response.sendRedirect("./Main.aim");
		System.out.println("비정상적 접근 발생! IP : " + request.getRemoteAddr());
	}
	%>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- 게시판 -->
	<article>
		<form action="./AdminScheModifyPro.th" method="post" name="sm">
			<div id="contents">
				<div class="title_top">
					<h2 class="tit">AIM 스케줄 수정</h2>
				</div>
				<input type="hidden" name="scCode" value="${getsche.scCode }">
				<table class="tbl_form">
					<colgroup>
						<col style="width: 15%;">
						<col style="width: auto;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row" class="req1">지점</th>
							<td><select name="branchCd" onchange="roomCdChange(this)">
									<option value="1"
										<c:if test="${getsche.branchCd eq 1}">
								selected="selected"
								</c:if>>서면점</option>
									<option value="2"
										<c:if test="${getsche.branchCd eq 2}">
								selected="selected"
								</c:if>>해운대점</option>
									<option value="3"
										<c:if test="${getsche.branchCd eq 3}">
								selected="selected"
								</c:if>>대연점</option>
									<option value="4"
										<c:if test="${getsche.branchCd eq 4}">
								selected="selected"
								</c:if>>사상점</option>
									<option value="5"
										<c:if test="${getsche.branchCd eq 5}">
								selected="selected"
								</c:if>>동래점</option>

							</select></td>
						</tr>
						<tr>
							<th scope="row" class="req1">날짜</th>
							<td><input type="date" name="sc_date"
								value="${getsche.sc_date }"></td>
						</tr>
						<tr>
							<th scope="row" class="req1">상영관</th>
							<td><select name="roomCd" id="room">
								 <option value="${getsche.roomCd }" ${room == 'getsche.roomCd' ? 'selected="selected"' : '' } disabled>${getsche.roomCd }관 (현재)</option>
									<c:choose>
										<c:when test="${getsche.branchCd eq 1}">
											<option value="1">1관</option>
											<option value="2">2관</option>
											<option value="3">3관</option>
										</c:when>
										<c:when test="${getsche.branchCd eq 2}">
											<option value="4">4관</option>
											<option value="5">5관</option>
											<option value="6">6관</option>
										</c:when>
										<c:when test="${getsche.branchCd eq 3}">
											<option value="7">7관</option>
											<option value="8">8관</option>
											<option value="9">9관</option>
										</c:when>
										<c:when test="${getsche.branchCd eq 4}">
											<option value="10">10관</option>
											<option value="11">11관</option>
											<option value="12">12관</option>
										</c:when>
										<c:when test="${getsche.branchCd eq 5}">
											<option value="13">13관</option>
											<option value="14">14관</option>
											<option value="15">15관</option>
										</c:when>
									</c:choose>
							</select></td>
						</tr>
						<tr>
							<th scope="row" class="req1">영화</th>
							<td><select name="movieCd">
									<c:forEach var="movie" items="${getmovie }">
										<option value="${movie.movieCd}"
											<c:if test="${getsche.movieCd eq movie.movieCd}">
									selected="selected"
									</c:if>>${movie.movieNm }
										</option>
									</c:forEach>

							</select></td>
						</tr>
						<tr>
							<th scope="row" class="req1">상영시간</th>
							<td><select title="상영시간 선택" name="starttime">
									<option value="${getsche.starttime }">${getsche.starttime }</option>
									<option value="09:00">09:00</option>
									<option value="10:00">10:00</option>
									<option value="11:00">11:00</option>
									<option value="12:00">12:00</option>
									<option value="13:00">13:00</option>
									<option value="14:00">14:00</option>
									<option value="15:00">15:00</option>
									<option value="16:00">16:00</option>
									<option value="17:00">17:00</option>
									<option value="18:00">18:00</option>
							</select></td>
						</tr>
						<tr>
							<th scope="row" class="req1">상영종료시간</th>
							<td><select title="상영시간 선택" name="endtime">
									<option value="${getsche.endtime }">${getsche.endtime }</option>
									<option value="11:00">11:00</option>
									<option value="12:00">12:00</option>
									<option value="13:00">13:00</option>
									<option value="14:00">14:00</option>
									<option value="15:00">15:00</option>
									<option value="16:00">16:00</option>
									<option value="17:00">17:00</option>
									<option value="18:00">18:00</option>
									<option value="19:00">19:00</option>
									<option value="20:00">20:00</option>
							</select></td>
						</tr>
						<tr>
							<th scope="row" class="req1">상영횟수</th>
							<td><input type="text" name="runcount"
								value="${getsche.runcount }"></td>
						</tr>
					</tbody>
				</table>
				<div id="table_search" align="center">
					<input type="button" value="수정하기" class="btn"
						style="color: #fff; background: #18315D; width: 100px; height: 40px; margin: 5px; border-radius: 5px; border: 1px solid #fff;"
						onclick="scheMo();">
				</div>
			</div>

		</form>
		<div class="clear"></div>
		<div id="page_control"></div>
	</article>
	<!-- 게시판 -->

	<!-- 하단배너 -->
	<jsp:include page="../inc/loginform_bottom_banner.jsp" />
	<!-- 약관 -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>