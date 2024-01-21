package com.project4.user;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.project4.util.Action;
import com.project4.util.ActionForward;
import com.project4.util.JSMoveFunction;

public class JoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("JoinAction 실행!");	
		request.setCharacterEncoding("UTF-8");
		UserDTO udto = new UserDTO();
		udto.setUserid(request.getParameter("userid"));
		udto.setUserpw(request.getParameter("userpw"));
		udto.setUsername(request.getParameter("username"));
		udto.setUseremail(request.getParameter("useremail"));
		udto.setUsergender(request.getParameter("usergender"));
		System.out.println("회원정보저장완료!");
		
		UserDAO udao = new UserDAO();
		int result = udao.insertUser(udto);
		
		
		if(result == 1) {
			System.out.println("회원가입성공!");
			JSMoveFunction.alertLocation(response, "회원가입성공!","./main.ma");
		}
		if(result == 0) {
			System.out.println("회원가입에 실패했습니다!");
			JSMoveFunction.alertLocation(response, "다시가입을진행하세요!", "./main.ma");
		}
		
		
		return null;
	}

}
