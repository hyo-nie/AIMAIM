package com.aim.nt.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aim.hp.db.HpDAO;
import com.aim.hp.db.HpDTO;
import com.aim.nt.db.NtDAO;
import com.aim.nt.db.NtDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class NtUpdateProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
			
				//세션 제어
				HttpSession session = request.getSession();
				String mb_id = (String)session.getAttribute("mb_id");
						
				ActionForward forward = new ActionForward();
				if(mb_id == null || !mb_id.equals("admin")) {
					forward.setPath("./Main.aim");
					forward.setRedirect(true);
					return forward;
				}
		
		
				// DTO 객체 생성 및 데이터 저장
				NtDTO dto = new NtDTO();
				dto.setNt_bno(Integer.parseInt(request.getParameter("nt_bno")));
				dto.setMb_id(request.getParameter("mb_id"));
				dto.setMb_pw(request.getParameter("mb_pw"));
				dto.setNt_subject(request.getParameter("nt_subject"));
				dto.setNt_content(request.getParameter("nt_content"));
				
				
				String pageNum = request.getParameter("pageNum");
				
				
				System.out.println("@@@@@@@@@@@@@@@@@@@"+request.getParameter("mb_id"));
				System.out.println("@@@@@@@@@@@@@@@@@@@"+request.getParameter("mb_pw"));
				// DB
				NtDAO dao = new NtDAO();
				
				
				int result = dao.ntupdate(dto);
				
				System.out.println(" M : 결과 "+result);
				
				
				response.setContentType("text/html; charset=UTF-8");
				
				// => 응답페이지의 형태를 html 형태로 사용
				PrintWriter out = response.getWriter();
				
				// => 응답페이지로 출력
				
				if(result == 1) {
					out.print("<script>");
					out.print(" alert('공지사항 수정 완료');");
					out.print(" location.href='./NtList.nt?pageNum="+pageNum+"'; ");
					out.print("</script>");
					out.close();
					
					return null;	
					// 더이상 실행없이 컨트롤러로 전달		
				}else if(result == 0) {
					out.print("<script>");
					out.print(" alert(' 비밀번호가 맞지 않습니다 '); ");
					out.print(" history.back(); ");
					out.print("</script>");
					out.close();
					
					return null;
				}else { // result == -1
					out.print("<script>");
					out.print(" alert('공지사항이 없습니다 '); ");
					out.print(" history.back(); ");
					out.print("</script>");
					out.close();
					
					return null;
				}
				
			}
}
