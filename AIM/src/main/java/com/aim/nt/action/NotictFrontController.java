package com.aim.nt.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.nt")
public class NotictFrontController extends HttpServlet {
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// 1. 가상 주소를 계산
		System.out.println("C : 1. 가상주소 계산 시작");

		String requestURI = request.getRequestURI();		
		System.out.println("C : requestURI : " + requestURI);
				
		String ctxPath = request.getContextPath();	
		System.out.println("C : ctxPath : " + ctxPath);
				
		String command = requestURI.substring(ctxPath.length());
		System.out.println("C : command : " + command);
				
		System.out.println("C : 1. 가상주소 계산 끝\n");
		System.out.println("===============================================");
		System.out.println();
		
		// 2. 가상주소 매핑
		System.out.println("===============================================");
		System.out.println("C : 2. 가상주소 매핑 시작");
    	
    	Action action = null;
    	ActionForward forward = null;
    	
    	// 공지사항 리스트 페이지
    	if(command.equals("/NtList.nt")){
    		System.out.println(" C : /NtList.nt 실행");
    		
    		action = new NtListAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}
    	// 공지사항 쓰기 페이지로 이동
    	else if(command.equals("/NtWriteForm.nt")) {
			System.out.println(" C : /NtWriteForm.nt 호출 ");
			
			action = new NtWriteFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}	
		}
    	// 공지사항 어드민 확인
    	else if(command.equals("/NtAdminLoginAction.nt")) {
    		System.out.println(" C : /NtAdminLoginAction.nt 호출");
    		
    		action = new NtAdminLoginAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}
    	
    	// 공지사항 글 쓰기
    	else if(command.equals("/NtWrite.nt")) {
    		System.out.println(" C : /NtWrite.nt 실행");
    		
    		action = new NtWriteAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}
    	// 공지사항 글 내용 보기
    	else if(command.equals("/NtContent.nt")) {
    		System.out.println(" C : /NtContent.nt 실행 ");
    		
    		action = new NtContentAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}
    	// 공지사항 글 수정페이지 이동
    	else if(command.equals("/NtUpdate.nt")) {
    		System.out.println(" C : /NtUpdate.nt 실행");
    		
    		action = new NtUpdateAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}
    	
    	// 공지사항 글 수정
    	else if(command.equals("/NtUpdatePro.nt")) {
    		System.out.println(" C : /NtUpdatePro.nt 실행");
    		
    		action = new NtUpdateProAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}
    	
    	
    	// 공지사항 글 삭제
    	else if(command.equals("/NtDelete.nt")) {
    		System.out.println(" C : /NtDelete.nt 실행 ");
    		
    		action = new NtDeleteAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}
    	
    
    	
    	System.out.println("C : 2. 가상주소 매핑 끝\n");
    	System.out.println("===============================================");
		System.out.println();
		
		// 3. 페이지 이동
		System.out.println("===============================================");
		System.out.println("C : 3. 페이지 이동 시작");
    	
    	if(forward != null) {		// 이동경로가 있음
    		if(forward.isRedirect()) {		// true 일 때,
				System.out.println("C : sendRedirect() : " + forward.getPath());
				response.sendRedirect(forward.getPath());
    		} else {						// false 일 때,
				System.out.println("C : forward() : " + forward.getPath());
				RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
				dis.forward(request, response);
    		}
    	}
    	
    	System.out.println("C : 3. 페이지 이동 끝\n");
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
}
