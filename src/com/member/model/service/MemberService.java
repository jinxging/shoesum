package com.member.model.service;

import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.rollback;
import static com.common.JDBCTemplate.commit;

import java.sql.Connection;

import com.member.model.dao.MemberDao;
import com.member.model.vo.Member;

public class MemberService {
	
	private MemberDao dao= new MemberDao();
	
	public int updateMember(Member m) {
		//회원정보수정
		Connection conn= getConnection();
		int result = dao.updateMember(conn, m);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
}
