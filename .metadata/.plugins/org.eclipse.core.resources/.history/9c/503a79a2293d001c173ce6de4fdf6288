package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardUpdateService;
import vo.ActionForward;
import vo.BoardVO;

public class UpdateFormAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      // TODO Auto-generated method stub
      System.out.println("action");
      int num = Integer.parseInt(request.getParameter("num"));
      String pageNum = request.getParameter("pageNum");
      
      BoardUpdateService boardUpdateService = new BoardUpdateService(); 
      BoardVO artcticle =  boardUpdateService.getArtcticle(num);
      
      request.setAttribute("article", artcticle);
      request.setAttribute("pageNum", pageNum);
      
      ActionForward forward = new ActionForward();
      forward.setUrl("board/updateForm.jsp");
      
      
      
      return forward;
      
      
   }

}