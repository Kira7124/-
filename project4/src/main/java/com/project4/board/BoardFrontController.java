package com.project4.board;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.project4.util.Action;
import com.project4.util.ActionForward;

@WebServlet("*.bo")
public class BoardFrontController extends HttpServlet {
	
	protected void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		/***********************1. 가상주소 계산 시작 **************************/
		String requestURI = request.getRequestURI();
		String CTXPath = request.getContextPath();
		String command = requestURI.substring(CTXPath.length());
		/***********************1. 가상주소 계산 끝 **************************/
		
		/***********************2. 가상주소 매핑 시작**************************/
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("/BoardWriteAction.bo")) {
			try {
				System.out.println("C : /BoardWriteAction.bo 맵핑");
				System.out.println("패턴 2 - 데이터처리o, 페이지이동o");
				action = new BoardWriteAction();
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else if(command.equals("/BoardWriteProAction.bo")) {
			System.out.println("C : /BoardWriteProAction.bo 맵핑");
			System.out.println("패턴 1 - 데이터처리 x 페이지이동 o");
			forward = new ActionForward();
			forward.setPath("./board/eplboard.jsp");
			forward.setRedirect(false);
		}
		
		
		
		
		
		
		
		
		
		
	
		
		
		/***********************2. 가상주소 매핑 끝**************************/
		
		
		
		
		
		
		/***********************3. 가상주소 이동 시작**************************/
		if(forward != null) {
			if(forward.isRedirect()) { // true
				response.sendRedirect(forward.getPath());
			}else { // false
				RequestDispatcher dis = 
						request.getRequestDispatcher(forward.getPath());
				dis.forward(request, response);
			}			
		}		

		/***********************3. 가상주소 이동 끝**************************/
		
		
		
	}//doProcess 끝
	
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
		
		
	}
	
}
