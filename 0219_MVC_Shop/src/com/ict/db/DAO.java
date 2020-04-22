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
	
	public static MVO getLogIn(MVO mvo) {
		MVO m_vo = null;
		try {
			m_vo = getSession().selectOne("login", mvo);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}
		return m_vo;
	}
	
	public static List<VO> getList(String category){
		List<VO> list = null;
		try {
			list = getSession().selectList("list", category);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static VO getOneList(String idx) {
		VO vo  = null;
		try {
			vo = getSession().selectOne("onelist", idx);
			ss.commit();
		} catch (Exception e) {
		}
		return vo;
	}
	
	// id와 제품번호를 이용해서 카트 리스트 구하기 
	public static CVO getCartList(String id, String p_num) {
		CVO cvo = null;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("p_num", p_num);
		
		try {
			cvo = getSession().selectOne("cartList", map);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}
		return cvo;
	}
	public static void getCartInsert(CVO cvo) {
		try {
			getSession().insert("cartInsert", cvo);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	public static void getCartUpdate(CVO cvo) {
		try {
			getSession().update("cartUpdate", cvo);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	public static List<CVO> getCartList(String id){
		List<CVO> list = null;
		try {
			list = getSession().selectList("cartList2", id);
			ss.commit();
		} catch (Exception e) {
		}
		return list;
	}
	
	public static void getCartUpdate2(CVO cvo) {
		try {
			getSession().update("cartUpdate2", cvo);
			ss.commit();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public static void getCartDel(String id, String p_num) {
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", id);
			map.put("p_num", p_num);
			getSession().delete("cartdel", map);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	public static void getProduct_Insert(VO vo) {
		try {
			getSession().insert("add", vo);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}








