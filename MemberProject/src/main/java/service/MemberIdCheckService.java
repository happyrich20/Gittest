package service;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.MemberDAO;

public class MemberIdCheckService {

	public boolean exitMemberId(String memberId) {
		// TODO Auto-generated method stub
		boolean memberIdExist = false;
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		
		String dbMemberId = memberDAO.selectMemberId(memberId);
		if(dbMemberId != null) {
			memberIdExist = true;
			
		}
		close(con);
		return memberIdExist;
	}

}
