<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> AIM (All In Movie!) - 고객센터 </title>

<script type="text/javascript">
	function hpCheck(){
		
		var hp_select = $("#hp_select").val();
		var hp_subject = $("#hp_subject").val();
		var hp_content = $("#hp_content").val();
		var hp_agree1 = $("#radio10").val();
		var hp_agree2 = $("#radio11").val();
	
		if(hp_select == ""){
			alert('문의 분류를 선택해주세요');
			document.hp.hp_select.focus();
			return false();
		}
		if(hp_subject == ""){
			alert('문의 제목을 입력해주세요');
			document.hp.hp_subject.focus();
			return false();
		}
		if(hp_content == ""){
			alert('문의 내용을 입력해주세요');
			document.hp.hp_content.focus();
			return false();
		}
		if(hp_agree1 == ""){
			alert('개인정보 이용에 동의를 선택해주세요');
			documnet.hp.hp_agree.focus();
			return false();
		}
		document.hp.submit();
	}

</script>

</head>
<body style="">
	<!-- 각종 요소 -->
	<jsp:include page="../inc/include.jsp" />
	<!-- 사이드 퀵메뉴 -->
	<jsp:include page="../inc/side_quick_menu.jsp" />
	<!-- 헤더/네비 -->
	<jsp:include page="../inc/nav_bar.jsp" />

<br><br><br><br><br><br><br><br><br><br>
<div id="contents" class="contents_customer area__movingbar litype5"
		style="">
		<div class="title_top">
			<h2 class="tit"> 고객센터 - 1:1 문의 </h2>
		</div>
		<ul class="tab_wrap outer actionmovingbar">
			<li>
				<button type="button" class="tab_tit" style="width: 33.33%; left: 0%;" onclick="location.href='./NtList.nt';">
					<span>공지 사항</span>
				</button>
			</li>
			<li class="active">
				<button type="button" class="tab_tit" style="width: 33.33%; left: 33.33%;">
					<span>1:1 문의</span>
				</button>
				<div class="tab_con">
					<h3 class="hidden">1:1 문의</h3>
					<div class="con_top">
						<div class="ico_tit qus">1:1 문의글 답변 운영시간 10:00 ~ 19:00 <br>
												 접수 후 48시간 안에 답변 드리겠습니다.
							
						</div>
					</div>
					<dl class="contxt_type1">
						<dt class="tit">고객님의 문의에 
						<span class="txt_color02">답변하는 직원은 고객 여러분의 가족 중 한 사람</span>
						일 수 있습니다.</dt>
						<dd class="desc">고객의 언어폭력(비하, 욕설, 반말, 성희롱 등)으로부터 직원을 보호하기 위해 관련 법에 따라 수사기관에 필요한 조치를 요구할 수 있으며, 형법에 의해 처벌 대상이 될 수 있습니다.</dd>
					</dl>
					<div class="con_tit ty2">
						<h4 class="tit">문의내용</h4>
						<div class="group_rgt">
							<span class="txt_req">필수입력</span>
						</div>
					</div>
				<form action="./Write.hp" method="post" name="hp" >
					<table class="tbl_form" summary="문의내용작성 테이블">
						<caption>문의 내용을 작성해주세요</caption>
						<colgroup>
							<col style="width: 15%;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
						
							<tr>
								<th scope="row" class="req">분류</th>
								<td>
									<select id="hp_select" title="문의내용 분류선택" name="hp_select">
										<option	value="">분류 선택</option>
										<option value="1">영화관</option>
										<option value="2">영화</option>
										<option value="3">멤버십</option>
										<option value="4">예매/결제</option>
										<option value="5">이벤트</option>
										<option value="6">홈페이지/모바일</option>
										<option value="7">개인정보</option>
									</select>
								</td>
							</tr>
							<tr>
								<th scope="row" class="req" >제목</th>
								<td>
									<div class="bx_textarea">
										<input type="text" class="ty2 w_full" placeholder="제목을 입력해주세요" title="문의내용 제목입력" id="hp_subject" name="hp_subject">
										<span class="txt_count">
										<em id="strongContentsCount_Title">0</em>/한글<em> 50</em>자</span>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row" class="req" id="">내용</th>
								<td>
									<div class="bx_textarea">
										<textarea class="ty2" cols="10" rows="10" name="hp_content"  id="hp_content"
										placeholder="내용 및 첨부파일에 개인정보(카드번호, 계좌번호, 주민번호)가 포함되지 않도록 유의하여 입력해주세요."></textarea>
										<span class="txt_count"><em id="strongContentsCount">0</em>/한글<em> 2,000</em>자</span>
									</div></td>
							</tr>
						</tbody>
					</table>
			
					<div class="con_tit ty2">
						<h4 class="tit">고객정보</h4>
						<div class="group_rgt">
							<span class="txt_req">필수입력</span>
						</div>
					</div>
					<table class="tbl_form" summary="고객정보작성 테이블">
						<caption>고객정보를 작성해주세요</caption>
						<colgroup>
							<col style="width: 15%;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" class="req">아이디</th>
								<td>
									<input type="text" class="ty2 inp_name" name="mb_id" id="mb_id" title="성명을 입력해주세요" value="${dto.mb_id }" readonly>
								</td>
							</tr>
							<tr>
								<th scope="row" class="req">비밀번호</th>
								<td>
									<input type="password" class="ty2 inp_id" title="삭제용 비밀번호" id="mb_pw" name="mb_pw" value="${dto.mb_pw }" readonly> 
									<span class="txt_caution1 fl_r with_inp">사용되는 비밀번호는 수정 및 삭제에 이용됩니다.</span></td>
							</tr>
						</tbody>
					</table>
					<div class="con_tit ty2">
						<h4 class="tit">개인정보 수집에 대한 동의</h4>
						<div class="group_rgt">
							<p class="txt_form"> 문의를 통해 아래의 개인정보를 수집합니다. 수집된 개인정보는 문의 외 목적으로 사용하지 않습니다. </p>
						</div>
					</div>
					<div class="privacy_wrap">
						<div class="txtarea">
							<a class="focus_textarea" href="javascript:void(0);">개인정보의 수집목적 및 항목</a><br>
								① 수집 목적 : 원활한 고객 상담, 불편사항 및 문의사항 관련 의사소통 경로 확보<br>
								② 수집 항목<br>
								*필수입력사항<br>
								- 이용자 식별을 위한 항목 : 성명, 연락처, 이메일, 아이디(로그인 시 수집)<br>
								<span class="color_red"><br>
								개인정보의 보유 및 이용기간<br>
								입력하신 개인정보는 소비자 보호에 관한 법률 등 관계 법률에 의해 다음과 같이 보유합니다.<br>
								보유기간 : 문의접수 후 처리 완료시점으로 부터 3년</span><br><br>
								※ 1:1문의 서비스 제공을 위한 최소한의 개인정보이며 거부할 수 있습니다. 다만, 수집에 동의하지 않을 경우 서비스 이용이 제한됩니다
						</div>
<!-- 							<input type="radio" name="hp_agree" id="radio10"> -->
<!-- 								<label for="radio10">동의 </label> -->
<!-- 							<input type="radio" name="hp_agree" id="radio11" checked> -->
<!-- 								<label for="radio11">동의하지않음</label> -->
						
						
					<div class="submit">
						<div class="btn_btm_wrap">
							<input type="hidden" name="mb_id" id="mb_id" value="${dto.mb_id }">
							<input type="hidden" name="mb_pw" id="mb_pw" value="${dto.mb_pw }">
							<input type="button" class="btn_col3 ty6" value="취소하기" onclick="location.href='./Main.aim';">
							<input type="button" style="background-color:#18315D" class="btn_col2 ty6" value="문의하기" onclick="hpCheck()" >
						</div>
					</div>
						</form>
					</div>
				</div></li>
		<li>
				<button type="button" class="tab_tit" style="width: 33.33%; left: 66.67%;" onclick="location.href='./MyHpList.hp';">
					<span>문의 내용 목록</span>
				</button></li>
			<li class="wrap_nav_underline"><span class="nav_underline"></span></li>
		</ul>
	</div>
	<!-- 푸터 -->
	<jsp:include page="../inc/footer.jsp" />

	

   
</body>

</html>