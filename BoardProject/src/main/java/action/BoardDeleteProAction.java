package action;

import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardDeleteProService;
import service.BoardUpdateProService;
import vo.ActionForward;
import vo.BoardVO;

public class BoardDeleteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		  BoardVO boardVO = new BoardVO();
	      boardVO.setNum(Integer.parseInt(request.getParameter("num")));
	      boardVO.setPasswd(request.getParameter("passwd"));
	      
	      BoardDeleteProService boardDeleteProService = new BoardDeleteProService();
	      System.out.println("ProAction1");
	      
	      boolean deleteSuccess = boardDeleteProService.deleteArticle(boardVO);
	      
	      ActionForward forward = null;
	      if(deleteSuccess) {
	         forward = new ActionForward();
	         forward.setUrl("boardList.bo");
	         forward.setRedirect(true);
	      }
	      else {
	         response.setContentType("text/html;charset=UTF-8");
	         PrintWriter out = response.getWriter();
	         out.println("<script>");
	         out.println("alert('삭제실패')");
	         out.println("history.back()");
	         out.println("</script>");
	      }
	      return forward;
	}

}
