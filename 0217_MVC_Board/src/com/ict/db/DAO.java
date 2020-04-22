package com.ict.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

// DB 처리하는 클래스
public class DAO {
	private static SqlSession ss;

	// 싱글턴 패턴
	private synchronized static SqlSession getSession() {
		if (ss == null) {
			// commit ; insert, update, delete 일때 의미가 있다.
			// 자동 커밋(오토커밋)
			// select 일때 사용
			// ss = DBService.getFactory().openSession();
			// ss = DBService.getFactory().openSession(true);

			// 수동 커밋 : 개발자가 커밋 명령을 해야 된다.
			// 트랜잭션 처리 할때는 사용
			ss = DBService.getFactory().openSession(false);
		}
		return ss;
	}
	
	public static int getCount() {
		int result = 0 ;
		try {
			result = getSession().selectOne("count");
			ss.commit();
		} catch (Exception e) {
		}
		return result;
	}
	
	public static List<VO> getList(int begin, int end) {
		List<VO> list = null;
		try {
			// Map를 사용하여  파라미터를 만든다.
			Map<String, Integer> map =
					new HashMap<String, Integer>();
			map.put("begin", begin);
			map.put("end", end);
			
			list = getSession().selectList("list", map);
			ss.commit();
		} catch (Exception e) {
		}
		return list;
	}
	// 원글 삽입
	public static int getInsert(VO vo) {
		int result = 0 ;
		try {
			result = getSession().insert("insert", vo);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}
		return result;
	}
	
	// 원글 히트수 업데이트
	public static void getHit(String idx) {
		try {
			getSession().update("hit_update", idx);
			ss.commit();
		} catch (Exception e) {
		}
	}
	
	// 원글 상세보기 
	public static VO getView(String idx) {
		VO vo = null;
		try {
			vo = getSession().selectOne("view", idx);
			ss.commit();
		} catch (Exception e) {
		}
		return vo;
	}
	
	// 댓글 처리 : 원글에 달려 있는 댓글 처리 
	public static void getUp_lev(Map<String, Integer> map) {
		try {
			getSession().update("lev_up", map);
			ss.commit();
		} catch (Exception e) {
		}
	}
	// 댓글 삽입
	public static void getAns_Insert(VO vo) {
		try {
			getSession().insert("ans_insert",vo);
			ss.commit();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	// 원글 댓글 상관없이 업데이트
	public static void getUpdate(VO vo) {
		try {
			getSession().update("update", vo);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	// 삭제
	public static void getDelete(String idx) {
		try {
			getSession().delete("delete",idx);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}







