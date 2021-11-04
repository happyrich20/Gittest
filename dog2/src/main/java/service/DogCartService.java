package service;
import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.DogDAO;
import vo.CartVO;
import vo.DogVO;



public class DogCartService {

	public DogVO getCartDogVO(int id) throws Exception {
		// TODO Auto-generated method stub
		Connection con = getConnection();
	    DogDAO dogDAO = DogDAO.getInstance();
	    dogDAO.setConnection(con);
	    
	    DogVO cartDogVo = dogDAO.selectCartDogVO(id);
	    close(con);
		return cartDogVO;
	}

	public void addCart(DogVO cartDogVO, HttpServletRequest request) {
		// TODO Auto-generated method stub
		//1. 세션 객체 얻어오기
		HttpSession session = request.getSession();
		
		
		//2. 자기자신 세션영역에 있는 장바구니 항목을 얻어옴
		//2-1. 현재 세션에 장바구니 영역(컬렉션) 자체가 없으면 새로 만들어서 상품정보를 담고 세션에 추가
		//2-2. 현재 세션에 장바구니 영역(단위)가 있으면 해당 단위를 얻어와서 거기에 상품정보를 추가
		ArrayList<CartVO> cartList = session.getAttribute("cartList");
		
		
	}


}
