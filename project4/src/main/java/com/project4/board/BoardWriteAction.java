package com.project4.board;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.project4.util.Action;
import com.project4.util.ActionForward;
import com.project4.util.JSMoveFunction;

public class BoardWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardWriteAction 실행!");
		
		//한글처리 인코딩
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		BoardDTO bdto = new BoardDTO();
		
		bdto.setBbsContent(request.getParameter("bbsContent"));
		bdto.setBbsTitle(request.getParameter("bbsTitle"));
		
		String userID = null;
		if(session.getAttribute("userid")!=null) {
			userID = (String)session.getAttribute("userid");
		}
		if(userID == null) {
			JSMoveFunction.alertLocation(response, "로그인을하세요!", "./main.ma");
		}else {
			
			if(bdto.getBbsTitle() == null || bdto.getBbsContent() == null) {
				JSMoveFunction.alertLocation(response, "다시글을쓰세요!", "./main.ma");
				
			}else {
				  JSMoveFunction.alertLocation(response, "글쓰기에성공했습니다!", "./main.ma");
					
				}
				
				
				
			}
			
			
			
		
		return null;
	}

}
