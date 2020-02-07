package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.VO.memberVO;

public class memberDAO {

	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	public void getConn() throws Exception{// throws Exception 메소드 전체에 예외처리 가능
		
		InputStream in = getClass().getResourceAsStream("../../../../db.properties");
		Properties p = new Properties();
		p.load(in);
		
		
		String url = p.getProperty("dburl");
		String dbid = p.getProperty("dbid");
		String dbpw= p.getProperty("dbpw");
		
		Class.forName(p.getProperty("dbclass"));
		
		conn = DriverManager.getConnection(url, dbid, dbpw);
	}
	
	public void close() {
		try {
			if(rs!=null) {
				rs.close();
			}
			if(pst!=null) {
				pst.close();
			}
			if(conn!=null) {
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public int Join(memberVO vo) {
		int cnt=0;
		try {
			
			getConn();
			if(conn!=null) {
				System.out.println("DB연결 성공");
			}
			else {
				System.out.println("연결 실패");
			}
			
			String sql ="insert into client values(?,?,?,?,?,?)";
			//sql = "insert into web_member values(?,?,?,?)";
			System.out.println("11");
			pst = conn.prepareStatement(sql);
			System.out.println("22");
			pst.setString(1, vo.getId());
			pst.setString(2, vo.getPwd());
			pst.setString(3, vo.getBorn());
			pst.setString(4, vo.getSex());
			pst.setString(5, vo.getEmail());
			pst.setString(6, vo.getType());
			System.out.println("33");
			cnt = pst.executeUpdate();
			
		} catch (Exception e) {
			
		}finally {
			close();
		}
		return cnt;
	}
	
	public memberVO Login(memberVO vo) {
	      int cnt=0;
	      memberVO mv = null;
	      try {
	         
	         getConn();
	         if(conn!=null) {
	            System.out.println("DB연결 성공");
	         }
	         else {
	            System.out.println("연결 실패");
	         }
	         
	        System.out.println( vo.getId());
	        System.out.println( vo.getPwd());
	         String sql ="select * from client where user_id = ? and user_pwd = ?;";
	       
	         pst = conn.prepareStatement(sql);
	         
	         pst.setString(1, vo.getId());
	         pst.setString(2, vo.getPwd());
	         
	         ResultSet rs = pst.executeQuery();
	      
	         if(rs.next()) {
	               mv = new memberVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
	               cnt = 1;
	         }else {
	               cnt = 0;
	         }
	         
	      } catch (Exception e) {
	         
	      }
	      return mv;
	      
	  }
	

	   public int Update(memberVO vo) {
	      int cnt = 0;
	      try {

	         getConn();
	         if (conn != null) {
	            System.out.println("DB연결 성공");
	         } else {
	            System.out.println("연결 실패");
	         }

	         String sql = "update client set user_pwd=?, user_email=? where user_id=?";
	         
	         pst = conn.prepareStatement(sql);

	         pst.setString(1, vo.getPwd());
	         pst.setString(2, vo.getEmail());
	         pst.setString(3, vo.getId());

	         cnt = pst.executeUpdate();

	      } catch (Exception e) {

	      }
	      return cnt;

	   }

	   public int Delete(String id) {
	      int cnt = 0;
	      try {

	         getConn();
	         if (conn != null) {
	            System.out.println("DB연결 성공");
	         } else {
	            System.out.println("연결 실패");
	         }
	         String sql = "delete from client where user_id=?;";
	         pst = conn.prepareStatement(sql);
	         pst.setString(1, id);
	         cnt = pst.executeUpdate();
	      } catch (Exception e) {

	      }
	      return cnt;
	   }
	   
	   public String IdSearch(String email) {
	      String id = null;
	      memberVO mv = null;
	      try {

	         getConn();
	         if (conn != null) {
	            System.out.println("DB연결 성공");
	         } else {
	            System.out.println("연결 실패");
	         }

	         String sql = "select user_id from client where user_email=?;";
	         pst = conn.prepareStatement(sql);

	         pst.setString(1, email);
	         ResultSet rs = pst.executeQuery();

	         if (rs.next()) {
	             id = rs.getString(1);
	         } else {
	            
	         }

	      } catch (Exception e) {

	      }
	      return id;
	   }
	   
	   public String PwSearch(String id, String email) {
	      String pw = null;
	      memberVO mv = null;
	      try {

	         getConn();
	         if (conn != null) {
	            System.out.println("DB연결 성공");
	         } else {
	            System.out.println("연결 실패");
	         }

	         String sql = "select user_pwd from client where user_id=?and user_email=?;";
	         pst = conn.prepareStatement(sql);

	         pst.setString(1, id);
	         pst.setString(2, email);
	         ResultSet rs = pst.executeQuery();

	         if (rs.next()) {
	             pw = rs.getString(1);
	         } else {
	            
	         }

	      } catch (Exception e) {

	      }
	      return pw;
	   }

	public int TypeUpdate(String id, String user_type) {
		 int cnt = 0;
	      try {
	         getConn();
	         
	         if (conn != null) {
	            System.out.println("DB연결 성공");
	         } else {
	            System.out.println("연결 실패");
	         }

	         String sql = "update client set user_type=? where user_id=?";
	         
	         pst = conn.prepareStatement(sql);

	         pst.setString(1, user_type);
	         pst.setString(2, id);
	         
	         cnt = pst.executeUpdate();

	      } catch (Exception e) {
	    	  e.printStackTrace();
	      }
	      return cnt;
		
	}
}

