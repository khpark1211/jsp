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

	// 리스트 : 나중에 페이징 기법을 사용하면 변경된다.
	/*
	public static List<BVO> getList() {
		List<BVO> list = null;
		try {
			list = getSession().selectList("list");
			ss.commit();
		} catch (Exception e) {
		}
		return list;
	}
   */ 
	public static List<BVO> getList(int begin, int end) {
		List<BVO> list = null;
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
	public static int getInsert(BVO bvo) {
		int result = 0;
		try {
			result = getSession().insert("b_insert", bvo);
			ss.commit();
		} catch (Exception e) {
		}
		return result;
	}

	public static BVO getOneList(String b_idx) {
		BVO bvo = null;
		try {
			bvo = getSession().selectOne("onelist", b_idx);
			ss.commit();
		} catch (Exception e) {
		}
		return bvo;
	}
	
	public static int getHit(String b_idx) {
		int result = 0 ;
		try {
			result = getSession().update("hit2", b_idx);
			ss.commit();
		} catch (Exception e) {
		}
		return result;
	}
	
	public static int getHit(BVO bvo) {
		int result = 0 ;
		try {
			result = getSession().update("hit", bvo);
			ss.commit();
		} catch (Exception e) {
		}
		return result;
	}
	
	public static int getCount() {
		int result = 0 ;
		try {
			result = getSession().selectOne("count");	
			ss.commit();
		}catch (Exception e) {
		}
		return result;
	}
	
	public static List<CVO> getc_list(String b_idx){
		List<CVO> c_list = null;
		try {
			c_list = getSession().selectList("c_list", b_idx);
			ss.commit();
		} catch (Exception e) {
		}
		return c_list;
	}
	
	public static int getC_Insert(CVO cvo) {
		int result = 0 ;
		try {
             result = getSession().insert("c_insert", cvo);
             ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}
		return result;
	}
	
	public static int getC_Delete(String c_idx) {
		int result = 0 ;
		try {
			result = getSession().delete("c_delete", c_idx);
		} catch (Exception e) {
		}
		return result;
	}
	
	public static int getDelete(String b_idx) {
		int result = 0 ;
		try {
			result = getSession().delete("delete", b_idx);
		} catch (Exception e) {
		}
		return result ;
	}
	
	public static void getC_AllDelete(String b_idx) {
		try {
			getSession().delete("com_delete", b_idx);
		} catch (Exception e) {
		}
	}
	public static int getUpdate(BVO bvo) {
		int result = 0 ;
		try {
			result = getSession().delete("update", bvo);
		} catch (Exception e) {
			System.out.println(e);
		}
		return result;
	}
}
