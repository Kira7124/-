package com.project4.user;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project4.util.Action;
import com.project4.util.ActionForward;
import com.project4.util.JSMoveFunction;

public class LogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("LogoutAction 호출!!");
		
		//로그아웃처리 
		HttpSession session =  request.getSession();
		
		session.invalidate();
		
		JSMoveFunction.alertLocation(response, "로그아웃되었습니다!", "./main.ma");
		
		return null;
	}

}
