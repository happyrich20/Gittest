package action;

import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardUpdateProService;
import vo.ActionForward;
import vo.BoardVO;

public class BoardUpdateProAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      // TODO Auto-generated method stub
      BoardVO boardVO = new BoardVO();
      boardVO.setContent(request.getParameter("content"));
      boardVO.setEmail(request.getParameter("email"));
      boardVO.setNum(Integer.parseInt(request.getParameter("num")));
      boardVO.setPasswd(request.getParameter("passwd"));
      boardVO.setReadcount(0);
      boardVO.setReg_date(new Timestamp(System.currentTimeMillis()));
      boardVO.setSubject(request.getParameter("subject"));
      boardVO.setWriter(request.getParameter("writer"));
      
      BoardUpdateProService boardUpdateProService = new BoardUpdateProService();
      
      boolean modifySuccess = boardUpdateProService.modifyArticle(boardVO);
      
      ActionForward forward = null;
      if(modifySuccess) {
         forward = new ActionForward();
         forward.setUrl("boardList.bo");
         forward.setRedirect(true);
      }
      else {
         response.setContentType("text/html;charset=UTF-8");
         PrintWriter out = response.getWriter();
         out.println("<script>");
         out.println("alert('수정실패')");
         out.println("history.back()");
         out.println("</script>");
      }
      return forward;
   }

}