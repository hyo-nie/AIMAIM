package com.aim.theater.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aim.theater.db.RentDAO;

public class AdminRentalListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : AdminRentalListAction.execute() 호출 ");
		
		//세션제어(회원만)
		HttpSession session = request.getSession();
		String mb_id = (String) session.getAttribute("mb_id");
		
		ActionForward forward = new ActionForward();
		if(mb_id==null) {
			forward.setPath("./Main.aim");
			forward.setRedirect(true);
			return forward;
		}
		
		//RentDAO 객체 생성
		RentDAO dao = new RentDAO();
		
		//전체 글 개수 확인
		int cnt = dao.getRtCount();
		System.out.println(" M : 전체 글 개수 : " + cnt + "개");

		
		// 페이징 처리 (1)

		// 한 페이지에 보여줄 글의 개수
		int pageSize = 5;

		// 현재 페이지 확인
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}

		// 시작행 번호 계산
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;

		// 끝행 번호 계산
		int endRow = currentPage * pageSize;
		
		
		// 대관문의한 글 리스트 가져오기
		ArrayList RtListAll = dao.getRtList(startRow,pageSize);
		
		
		// 전체 페이지수
		int pageCount = (cnt / pageSize) + (cnt % pageSize == 0 ? 0 : 1);

		// 한 화면에 보여줄 페이지수
		int pageBlock = 5;

		// 페이지블럭의 시작번호
		int startPage = ((currentPage - 1) / pageBlock) * pageBlock + 1;
		
		// 페이지블럭의 끝번호
		int endPage = startPage + pageBlock - 1;

		if (endPage > pageCount) {
			endPage = pageCount;
		}
		
		// 페이지 정보 전달(request 영역객체 저장)
		request.setAttribute("RtListAll", RtListAll);
		
		// 페이징처리 정보 저장
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalCnt", cnt);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("pageBlock", pageBlock);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		
		
		// 페이지 이동
		forward = new ActionForward();
		forward.setPath("./theater/rt_list.jsp");
		forward.setRedirect(false);

		return forward;
	}

}
