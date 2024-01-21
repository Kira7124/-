package com.project4.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {

		// 공통) 변수선언
		 Connection con;
		 String sql;
		 PreparedStatement pstmt;
		 ResultSet rs;
		
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
	 
		// 메서드1
		public String getDate() {
			try {
				con = getCon();
				sql = "select now()";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					return rs.getString(1);
					
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "";
		}
		
		// 메서드2
		public int getNext() {
			try {
				con = getCon();
				sql = "select bbsID from BBS order by bbsID DESC";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					return rs.getInt(1)+1;
					
				}
				return 1;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return -1;
		}
		
	 // 메서드3
	public int Write(String bbsTitle,String userID,String bbsContent) {
		try {
			con = getCon();
			sql = "insert into BBS values(?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, bbsContent);
			pstmt.setInt(6, 1);
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
		
		
		
		
}
	 
	 
	 
	 
	 
	 
	 
 
