package action;

import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardWriteProService;
import vo.ActionForward;
import vo.BoardVO;

public class BoardWriteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		// 사용자가 작성한 데이터들(파라미터값들)을 다 받아서 VO(DTO)객체에 할당하고 서비스클래스로 전달
		BoardVO boardVO = new BoardVO();
		boardVO.setContent(request.getParameter("content"));
		boardVO.setEmail(request.getParameter("email"));
		boardVO.setNum(Integer.parseInt(request.getParameter("num")));
		boardVO.setPasswd(request.getParameter("passwd"));
		boardVO.setRe_level(Integer.parseInt(request.getParameter("re_level")));
		boardVO.setRef(Integer.parseInt(request.getParameter("ref")));
		boardVO.setRe_step(Integer.parseInt(request.getParameter("re_step")));
		boardVO.setReadcount(0);
		boardVO.setReg_date(new Timestamp(System.currentTimeMillis()));
		boardVO.setSubject(request.getParameter("subject"));
		boardVO.setWriter(request.getParameter("writer"));
		
		BoardWriteProService boardWriteProService = new BoardWriteProService();
		boolean registSuccess = boardWriteProService.registArticle(boardVO);
		
		ActionForward forward = null;
		if (registSuccess) {
			forward = new ActionForward();
			forward.setUrl("boardList.bo"); //글작성후 글목록보기 요청
			forward.setRedirect(true);
		}else {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<scripte>");
			out.println("alert('등록실패')");
			out.println("history.back");
			out.println("</scripte>");
			
		}
		
		return forward;
	}

}
