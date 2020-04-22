package com.ict.mybatis;

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
	
	// Select를 사용하면 VO, List<VO> 둘 중 하나다.
	// 리스트
	public static List<VO> getList(){
		List<VO> list = null;
		try {
			// 결과 하나일때 , return VO
			// list = getSession().selectOne("mapper의 id");
			// list = getSession().selectOne("mapper의 id",파라미터);
			
			// 결과 여러개 일때, return List<VO>
			// list = getSession().selectList("mapper의 id");
			// list = getSession().selectList("mapper의 id",파라미터);
			
			list = getSession().selectList("list");
			ss.commit(); // 수동커밋일때 반드시 실행해야 함
		} catch (Exception e) {
		}
		return list;
	}
	
	// insert, update, delete는 결과가 int 
	public static int getInsert(VO vo) {
		int result = 0 ;
		 try {
			// result = getSession().insert("mapper의 id");
			// result = getSession().insert("mapper의 id",파라미터);
			 
			 result = getSession().insert("insert",vo);
			 ss.commit(); 
		} catch (Exception e) {
			System.out.println(e);
		}
		return result;
	}
	public static VO getOneList(String idx) {
		VO vo = null;
		try {
			vo = getSession().selectOne("onelist", idx);
			ss.commit();
		} catch (Exception e) {
		}
		return vo;
	}
	
	public static int getDelete(String idx) {
		int result = 0 ;
		try {
			result = getSession().delete("delete", idx);
			ss.commit();
		} catch (Exception e) {
		}
		return result;
	}
	
	public static int getUpdate(VO vo) {
		int result = 0 ;
		try {
			result = getSession().update("update", vo);
		} catch (Exception e) {
		}
		return result;
	}
}





