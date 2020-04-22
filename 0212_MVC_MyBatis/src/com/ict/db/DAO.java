package com.ict.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

// DB 처리하는 클래스
public class DAO {
	private static SqlSession ss;
	
	// 싱글턴 패턴
	private synchronized static SqlSession getSession() {
		if(ss == null) {
			// commit ; insert, update, delete 일때 의미가 있다.
			// 자동 커밋(오토커밋) 
			// select 일때 사용
			// ss = DBService.getFactory().openSession(); 
			// ss = DBService.getFactory().openSession(true);
			
			// 수동 커밋 : 개발자가 커밋 명령을 해야 된다.
			//          트랜잭션 처리 할때는 사용
			ss = DBService.getFactory().openSession(false);
		}
		return ss;
	}
	
	// 리스트
	public static List<VO> getList(){
		List<VO> list = null;
		try {
			list = getSession().selectList("list");
			ss.commit();
		} catch (Exception e) {
		}
		return list;
	}
	
	// insert
	public static int getInsert(VO vo) {
		int result = 0 ;
		try {
			result = getSession().insert("insert", vo);
			ss.commit();
		} catch (Exception e) {
		}
		return result;
	}
	
	// onelist
	public static VO getOneList(String idx) {
		VO vo = null ;
		try {
			vo = getSession().selectOne("onelist", idx);
			ss.commit();
		} catch (Exception e) {
		}
		return vo;
	}
	
	// delete
	public static int getDelete(String idx) {
		int result = 0 ;
		try {
			result = getSession().delete("delete", idx);
			ss.commit();
		} catch (Exception e) {
		}
		return result;
	}
	
	// update
	public static int getUpdate(VO vo) {
		int result = 0 ;
		try {
			result = getSession().update("update", vo);
			ss.commit();
		} catch (Exception e) {
		}
		return result;
	}	
}





