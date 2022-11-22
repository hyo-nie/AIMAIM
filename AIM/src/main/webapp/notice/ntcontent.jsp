<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="contents" class="contents_customer area__movingbar litype5"
		style="margin-top: 120px;">
		<div class="title_top">
			<h2 class="tit">고객센터</h2>
		</div>
		<ul class="tab_wrap outer actionmovingbar">
			
			<li class="active"><button type="button" class="tab_tit"
					style="width: 33.33%; left: 0%;">
					<span>공지사항</span>
				</button>
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
												<span class="tit">영화관</span><span class="cont">전체</span>
												<span class="tit">등록일</span><span class="cont">${dto.nt_date }</span>
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
									 <input type="button" value="공지 사항 수정" class="btn_col2 ty6" 
									 	onclick="location.href='./NtUpdate.nt?nt_bno=${dto.nt_bno}&pageNum=${pageNum }';" >
  	        						 <input type="button" value="공지 사항 삭제" class="btn_col2 ty6" 
  	        						 	onclick="location.href= './MyHpDeleteCheck.hp?nt_bno=${dto.nt_bno}&pageNum=${param.pageNum }';">
									 <a href="./MyHpList.hp" class="btn_col2 ty6">문의 목록</a>
								</div>
							</div></li>
					</ul>
				</div></li>
			<li><button type="button" class="tab_tit"
					style="width: 33.33%; left: 33.33%;">
					<span>1:1문의</span>
				</button></li>
			<li><button type="button" class="tab_tit"
					style="width: 33.33%; left: 66.67%;">
					<span>문의 내용 목록</span>
				</button></li>
			
			<li class="wrap_nav_underline"><span class="nav_underline"></span></li>
		</ul>
	</div>
</body>
</html>