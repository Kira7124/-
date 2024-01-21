package com.project4.user;


import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.catalina.connector.Response;

public class UserDAO {

	// 변수선언
	Connection con;
	String sql;
	ResultSet rs;
	PreparedStatement pstmt;
	
	// 공통) getCon() 선언
	private Connection getCon() throws Exception {

		Context initCTX = new InitialContext();
		DataSource ds = (DataSource) initCTX.lookup("java:comp/env/jdbc/mvc");
		con = ds.getConnection();
		return con;
	}

	// 공통) 디비 자원해제
	public void CloseDB() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	//로그인체크 메서드
	public int userCheck(UserDTO udto) {
		System.out.println("DAO userCheck() 호출!");
		int result = -1; //-1 : 정보없음 0: 아이디 비밀번호 오류 // 1: 로그인
		
		try {
			con = getCon();
			sql = "select userpw from user where userid =?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, udto.getUserid());
			System.out.println(udto.getUserid());
			rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				if(udto.getUserpw().equals(rs.getString("userpw"))) {
					result = 1;
				} else {
					result = 0;
				}
				
			}else {
				result = -1;
			}
			System.out.println("로그인 데이터 처리완료"+ result);
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			CloseDB();
		}
		return result;	
		
	}
	
	//회원가입 메서드
	public int insertUser(UserDTO udto) {
		System.out.println("DAO : insertUser() 호출!");
		int result = 0;
		try {
			con = getCon();
			sql = "insert into user"
			     +"(userid,userpw,username,useremail,usergender,regdate)"
			     +"values(?,?,?,?,?,now())";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, udto.getUserid());
			pstmt.setString(2, udto.getUserpw());
			pstmt.setString(3, udto.getUsername());
			pstmt.setString(4, udto.getUseremail());
			pstmt.setString(5, udto.getUsergender());
			
			result = pstmt.executeUpdate();
			System.out.println("회원가입 성공!");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			CloseDB();
		}
		
		return result;
	
	}
	
	//로그아웃 메서드
	
	
	
	


}
