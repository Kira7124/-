package com.project4.user;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServletMapping;

import com.project4.util.Action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project4.util.Action;
import com.project4.util.ActionForward;

@WebServlet("*.me")
public class UserFrontController extends HttpServlet {

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
		
		//로그인영역
		if(command.equals("/loginForm.me")) {
			System.out.println("C : /loginForm.me 맵핑");
			System.out.println("패턴1 - 데이터처리 x 페이지이동 o");
			forward = new ActionForward();
			forward.setPath("./user/loginform.jsp");
			forward.setRedirect(false);
		}
		
		else if(command.equals("/loginAction.me")) {
			try {
				System.out.println("C : /loginAction.me 맵핑");
				System.out.println("패턴2 - 데이터처리o 페이지이동o");
				action = new LoginAction();
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		// 회원가입영역
		else if(command.equals("/joinForm.me")) {
			System.out.println("C : /joinForm.me 맵핑");
			System.out.println("패턴1 - 데이터처리 x , 페이지이동 o");
			forward = new ActionForward();
			forward.setPath("./user/joinform.jsp");
			forward.setRedirect(false);
		}
		
		else if(command.equals("/joinAction.me")) {
			try {
				System.out.println("C : /joinAction.me 맵핑");
				System.out.println("패턴2 - 데이터처리o 페이지이동o");
				action = new JoinAction();
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		//로그아웃영역
		
		else if(command.equals("/logoutAction.me")) {
			try {
				System.out.println("C: /logoutAction.me 맵핑");
				System.out.println("패턴 2 -데이터처리 o 페이지이동 o");
				action = new LogoutAction();
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
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