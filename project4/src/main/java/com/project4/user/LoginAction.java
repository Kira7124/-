package com.project4.user;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project4.util.Action;
import com.project4.util.ActionForward;
import com.project4.util.JSMoveFunction;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("LoginAction 실행!!");
		
		
		//한글처리 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//전달받은 정보저장
		UserDTO udto = new UserDTO();
		udto.setUserid(request.getParameter("userid"));
		udto.setUserpw(request.getParameter("userpw"));
		String id = request.getParameter("userid");
		String pw = request.getParameter("userpw");
		
		
		UserDAO udao = new UserDAO();
		
		//회원정보 확인메서드
		int result = udao.userCheck(udto);
		
		if(result == 0) {
			JSMoveFunction.alertBack(response, "비밀번호 오류!");
			return null;
		}
		if(result == -1) {
			JSMoveFunction.alertBack(response, "회원정보없음!");
			return null;
		}
		
		if(result == 1) {
			JSMoveFunction.alertLocation(response, "로그인성공!", "./main.ma");
			HttpSession session = request.getSession();
			session.setAttribute("udto", udto);
			session.setAttribute("userid", id);
		}
		
		
		return null;
	}

}
