package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.LoginService;
import vo.ActionForward;
import vo.MemberVO;

public class MemberLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String id = request.getParameter("memberId");
		String passwd = request.getParameter("memberPassword");
		
		//비즈니스 로직은 컨트롤러에 구현하면 안됨
		//비즈니스 로직은 모델영역에서 구현
		LoginService loginService = new LoginService();
		MemberVO loginMember = loginService.getLoginMember(id, passwd);
		
		ActionForward forward = null;
		if(loginMember != null) {
			HttpSession session = request.getSession();
			session.setAttribute("memberId", id);
			forward = new ActionForward();
			forward.setUrl("index.jsp");
			forward.setRedirect(true);
			
		}
		else {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('인증실패')");
			out.println("history.back()");	//history.go(-1)
			out.println("</script>");
		}
				
		return forward;
	}

}
