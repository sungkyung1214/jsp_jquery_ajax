package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class MyModel01 implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse respose) {
		
		// 일처리
		
		List<VO> list = DAO.getList();
		
		// 받은 정보로 xml 만들쟈쟈쟈쟈쟈쟈챠챠챠쟈쟈쟈
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>");	
		sb.append("<members>");
		for (VO k : list) {
			sb.append("<member>");
			sb.append("<idx>"+k.getIdx()+"</idx>");
			sb.append("<m_id>"+k.getM_id()+"</m_id>");
			sb.append("<m_pw>"+k.getM_pw()+"</m_pw>");
			sb.append("<m_addr>"+k.getM_addr2()+"</m_addr>");
			sb.append("<m_reg>"+k.getM_reg()+"</m_reg>");
			sb.append("</member>");
		}
		
		sb.append("</members>");
		
		
		 // html 할때는 return에 "view/list.jsp"이런식으로 썼지만,
		 // ajax 처리하는 모델은 return에 위에 실행한 결과값을 넣어준다
		// MVC에서는 View 경로를 작성하지만
		//ajax는 만들어진 정보를 전달한다.
		
		return sb.toString();
	}


	}

