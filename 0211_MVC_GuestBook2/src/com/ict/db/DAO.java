package com.ict.db;

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
	// 인덱스=리스트
	public ArrayList<VO> getList(){
		try {
			conn = getConnection();
			String sql = "select * from guestbook2 order by idx";
			pstm = conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			while(rs.next()) {
				VO vo = new VO();
				vo.setIdx(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setSubject(rs.getString(3));
				vo.setContent(rs.getString(4));
				vo.setEmail(rs.getString(5));
				vo.setPwd(rs.getString(6));
				vo.setFile_name(rs.getString(7));
				vo.setRegdate(rs.getString(8));
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
	
	// 삽입
	public int getInsert(VO vo) {
		int result = 0 ;
		try {
			conn = getConnection();
			String sql = "insert into guestbook2 values(guestbook2_seq.nextval,?,?,?,?,?,?,sysdate)";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,vo.getName() );
			pstm.setString(2,vo.getSubject() );
			pstm.setString(3,vo.getContent() );
			pstm.setString(4,vo.getEmail() );
			pstm.setString(5,vo.getPwd() );
			pstm.setString(6,vo.getFile_name() );
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
	// 상세보기
	public VO getOneList(String idx) {
		VO vo = new VO();
		try {
			conn = getConnection();
			String sql = "select * from guestbook2 where idx = ?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, idx);
			rs = pstm.executeQuery();
			while(rs.next()) {
				vo.setIdx(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setSubject(rs.getString(3));
				vo.setContent(rs.getString(4));
				vo.setEmail(rs.getString(5));
				vo.setPwd(rs.getString(6));
				vo.setFile_name(rs.getString(7));
				vo.setRegdate(rs.getString(8));
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
		return vo;
	}
	//삭제
	public int getDelete(String idx) {
		int result = 0 ;
		try {
			conn = getConnection();
			String sql = "delete from guestbook2 where idx = ? ";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,idx);
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
	
	public int getUpdate(VO vo) {
		int result = 0 ;
		try {
			conn = getConnection();
			String sql = "update guestbook2 set name=?, subject=?, content=?, email=?, file_name=? where idx=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,vo.getName());
			pstm.setString(2,vo.getSubject());
			pstm.setString(3,vo.getContent());
			pstm.setString(4,vo.getEmail());
			pstm.setString(5,vo.getFile_name());
			pstm.setString(6,vo.getIdx());
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
}





