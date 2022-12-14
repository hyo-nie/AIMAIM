package com.aim.store.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aim.store.db.AdminStoreDAO;
import com.aim.store.db.StoreDTO;

public class AdminStoreModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M : AdminStoreModifyAction_execute()");
		
		int st_num = Integer.parseInt(request.getParameter("st_num"));
		
		AdminStoreDAO dao = new AdminStoreDAO();
		StoreDTO dto = dao.getAdminStore(st_num);
		
		request.setAttribute("dto", dto);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./store/admin_store_modify.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
