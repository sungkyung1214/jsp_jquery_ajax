package com.ict.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

// DB처리하는 메서드들을 포함하고 있는 클래스

public class DAO {
	// 실제 사용하는 클래스 = SqlSession이다.
	private static SqlSession ss;

	// 싱글턴 패턴 (동기화처리) : 프로그램이 종료될 때 까지 한번 만들어진 객체를 재사용하는것.
	private synchronized static SqlSession getSession() {
		if (ss == null) {
			ss = DBService.getFactory().openSession();
		}
		return ss;
	}
	
	public static List<VO> getList(){
		try {
			List<VO> list = getSession().selectList("member.list");
			return list;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	public static List<MVO> membersList(){
		List<MVO> list = getSession().selectList("members.list");
		return list;
	}
	
	public static int membersDelete(String m_idx) {
		int result = getSession().delete("members.delete", m_idx);
		ss.commit();
		return result;
	}
	
	
	//
	//집합함수도 숫자로 나온다 => 1 로 나오니까 셀렉트 원
	
	public static int getIdChk(String m_id) {
		int result = getSession().selectOne("members.idchk",m_id);
		return result;
		
	}
	
	public static int getMembersInsert(MVO mvo) {
		int result = getSession().insert("members.insert", mvo);
		ss.commit();
		return result;
	}
	
}

