package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DogCartService;
import vo.ActionForward;
import vo.DogVO;

public class DogCartAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		DogCartService dogCartService = new DogCartService();
		DogVO cartDogVO = dogCartService.getCartDogVO(id);
		
		dogCartService.addCart(cartDogVO, request);
		
		ActionForward forward = new ActionForward();
		forward.setUrl("dogCartList.dog"); //-장바구니목록보기 요청
		forward.setRedirect(true);
		
		return forward;

	}

}
