package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ActionForward;
import vo.ReplyVO;

public class BoardWriteFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		// 글을 작성하는 화면에서는 우너글을 작성할 수 도 있고, 답변글을 작성할 수 도있다.
		// 작성하는 글이 답변 글일때는 답변글에 필요한 값들이 파라미터 값으로 넘어옴.
		
		int num = 0, ref = 1, re_step = 0, re_level = 0;
		if(request.getParameter("num") != null) {
			// 답변글이면
			num = Integer.parseInt(request.getParameter("num"));
			ref = Integer.parseInt(request.getParameter("ref"));
			re_step = Integer.parseInt(request.getParameter("re_step"));
			re_level = Integer.parseInt(request.getParameter("re_level"));
		}
		
		// 포워딩
		// 작성할 글이 답변글인지 정보를 공유하고 포워딩
		ReplyVO replyVO = new ReplyVO();
		replyVO.setNum(num);
		replyVO.setRe_level(re_level);
		replyVO.setRe_step(re_step);
		replyVO.setRef(ref);
		
		request.setAttribute("replyVO", replyVO);
		
		ActionForward forward = new ActionForward();
		forward.setUrl("board/writeForm.jsp");
		
		return forward;
	}

}
