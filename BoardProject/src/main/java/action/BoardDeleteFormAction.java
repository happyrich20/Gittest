package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ActionForward;
import vo.BoardVO;

public class BoardDeleteFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("action");
	      int num = Integer.parseInt(request.getParameter("num"));
	      String pageNum = request.getParameter("pageNum");
	      
	      request.setAttribute("num", num);
	      request.setAttribute("pageNum", pageNum);
	      
	      ActionForward forward = new ActionForward();
	      forward.setUrl("board/deleteForm.jsp");
	      
	      
	      
	      return forward;
	}


}
