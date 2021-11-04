package action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DogViewService;
import vo.ActionForward;
import vo.DogVO;

public class DogViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		
		DogViewService dogViewService = new DogViewService();
		DogVO dogVO = dogViewService.getDog(id);
		
		//��Ű�� ���� �� ��ǰ ������ ����
		//��Ű �̸� : today�� �����ϰ� ��
		//today + �� ��ǰ�� ���̵�
		Cookie cookie = new Cookie("today" + id, dogVO.getDogImage());
		cookie.setMaxAge(60*60*24);
		response.addCookie(cookie);
		
		request.setAttribute("dogVO", dogVO);
		
		ActionForward forward = new ActionForward();
		forward.setUrl("dogView.jsp");
		return forward;
	}

}
