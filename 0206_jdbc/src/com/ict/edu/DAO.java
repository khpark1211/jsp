package com.ict.edu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

// DB처리하는 클래스
public class DAO {
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	ArrayList<VO> list;
	
	// 싱글톤 패턴 : 프로그램이 끝날때 까지 하나의 객체를 하는 것 
    //           필요한 객체를 또 만들지 않고 한번 만든 객체를 재사용하는 것을 의미
	private static DAO dao = new DAO();
	public static DAO getInstance() {
		return dao;
	}
	
	// 오라클에 접속
	public Connection getConnection() {
		try {
			list = new ArrayList<VO>();
			Class.forName("oracle.jdbc.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "nohsam";
			String password = "1111";
			conn = DriverManager.getConnection(url,user,password);
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}
	
	// DB에 사용할 메소드들 만든다.
	// 회워가입 (insert)
	public int getInsert(VO vo) {
		int result = 0 ;
		try {
			conn = getConnection();
			String sql ="insert into members values(?,?,?,?,?,?)";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, vo.getIdx());
			pstm.setString(2, vo.getId());
			pstm.setString(3, vo.getPw());
			pstm.setString(4, vo.getName());
			pstm.setString(5, vo.getAge());
			pstm.setString(6, vo.getAddr());
			// insert, update, delete
			result = pstm.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			try {
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return result;
	}
	
	// 로그인 
	public VO getLogin(VO vo) {
		VO pvo = null;
		try {
			conn = getConnection();
			String sql ="select * from members where id=? and pw=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, vo.getId());
			pstm.setString(2, vo.getPw());
			// select
			rs = pstm.executeQuery();
			if(rs.next()) {
				pvo = new VO();
				pvo.setIdx(rs.getString(1));
				pvo.setId(rs.getString(2));
				pvo.setPw(rs.getString(3));
				pvo.setName(rs.getString(4));
				pvo.setAge(rs.getString(5));
				pvo.setAddr(rs.getString(6));
			}
		} catch (Exception e) {
		} finally {
			try {
				rs.close();
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return pvo;
	}
	// 전체 정보 보기 
	public ArrayList<VO> getList(){
		try {
			conn = getConnection();
			String sql ="select * from members order by idx";
			pstm = conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			while(rs.next()) {
				VO vo  = new VO();
				vo.setIdx(rs.getString(1));
				vo.setId(rs.getString(2));
				vo.setPw(rs.getString(3));
				vo.setName(rs.getString(4));
				vo.setAge(rs.getString(5));
				vo.setAddr(rs.getString(6));
				list.add(vo);
			}
			
		} catch (Exception e) {
		} finally {
			try {
				rs.close();
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return list;
	}
	
	// 내정보 수정
	public int getUpdate(VO vo) {
		int result = 0 ;
		try {
			conn = getConnection();
			String sql ="update members set name=?, age=?, addr=? where idx=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, vo.getName());
			pstm.setString(2, vo.getAge());
			pstm.setString(3, vo.getAddr());
			pstm.setString(4, vo.getIdx());
			result = pstm.executeUpdate();
		} catch (Exception e) {
		} finally {
			try {
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return result;
	}
	
	// 내정보 삭제
	public int getDelete(String idx) {
		int result = 0 ;
		try {
			conn = getConnection();
			String sql ="delete from members where idx = ?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, idx);
			result = pstm.executeUpdate();
		}catch (Exception e) {
		}finally {
			try {
				pstm.close();
				conn.close();
			} catch (Exception e2) {
			}
		}
		return result;
	}
}





