package service;

import vo.MemberVO;
import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.MemberDAO;

public class LoginService {

	public MemberVO getLoginMember(String id, String passwd) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		
		MemberVO loginMember = MemberDAO.selectLoginMember(id, passwd);
		close(con);
		return loginMember;
	}
	
}
