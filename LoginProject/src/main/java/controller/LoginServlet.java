package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.LoginService;
import vo.MemberVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }	

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	//1. 요청에서 전달된 쿠키객체들을 얻어옴
    	Cookie[] cookieArray = request.getCookies();
    	
    	//2. 전달된 쿠키 중에 idCookie 와 passwordCookie를 찾는다.
    	String memberId = "";
    	String memberPassword = "";
    	if(cookieArray != null) {
    		//최소한 쿠키정보가 하나라도 넘어왔으면...
    		for (int i = 0; i < cookieArray.length; i++) {
    			//cookieName=cookieValue;...........
    			if(cookieArray[i].getName().equals("memberId")) {
    				memberId = cookieArray[i].getValue(); 
    			}else if(cookieArray[i].getName().equals("memberPassword")) {
    				memberPassword = cookieArray[i].getValue(); 
    			}
    		}
    	}
    	//비즈니스 로직은 컨트롤러에 구현하면 안됨
		//비즈니스 로직은 모델영역에서 구현
		LoginService loginService = new LoginService();
		
		//로그인에 성공하면 화면에 로그인에 성공한 회원의 정보를 출력
		
		//로그인에 성공하면 로그인된 회원정보 하나를 반환하고, 로그인에 실패하면 null을 반환
		MemberVO loginMember = loginService.getLoginMember(memberId, memberPassword);
		if(loginMember != null) {
			//서블릿에서 데이터 공유하는 방법
			//1. 속성 사용 방법
			//1-1. 속성공유
			//영역객체.setAttribute(String attrName, Object attrValue)
			//영역(Scope)
			//page : 동일페이지에서만 공유
			//request : 동일 요청을 처리하는 모든 페이지에서 공유	--로그인
			//session : 하나의 사용자(브라우저)당 할당되는 영역
			//application : 동일 애플리케이션에서는 모두 공유
			
			request.setAttribute("loginMember", loginMember);
			
			//2. 초기화 파라미터 사용 방법
			
			//뷰페이지로 포워딩
			//서블릿에서 포워딩 방식
			//1.디스패치
			//페이지 전환이 서버상에서 이루어짐
			//주소 표시줄상의 요청 URL이 변경되지 않음 즉, /login 으로 되어있음
			//따라서, 요청(request)가 변경되지 않는다.
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("loginSuccess.jsp");
			dispatcher.forward(request, response);
			
		}
		else {
			//뷰페이지로 포워딩 하는 방식
			//2. 리다이렉트 방식의 포워딩
			//페이지전환이 클라이언트에서 진행됨
			//즉, 주소표시줄의 주소가 최종적으로 포워딩되는 URL로 변경
			//request가 공유되지 않는다.
			
			response.sendRedirect("loginForm.html");
		}
    
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("memberId");
		String passwd = request.getParameter("memberPassword");
//		String cookieUse = request.getParameter("cookieUse");
		
		/*
		 * if(cookieUse != null) { Cookie idCookie = new Cookie("memberId", id);
		 * 
		 * //Cookie 객체를 생성하면 기본 생존기간은 -1로 설정됨 //즉, 브라우저가 실행되어 있을 때는 쿠키가 존재하지만 브라우저를 종료하면
		 * 즉시 소멸됨 //따라서, 생존기간을 명시적으로 설정해야 함 idCookie.setMaxAge(24 * 60 * 60);//단위는 초
		 * response.addCookie(idCookie); Cookie passwordCookie = new
		 * Cookie("memberPassword", passwd);
		 * 
		 * //Cookie 객체를 생성하면 기본 생존기간은 -1로 설정됨 //즉, 브라우저가 실행되어 있을 때는 쿠키가 존재하지만 브라우저를 종료하면
		 * 즉시 소멸됨 //따라서, 생존기간을 명시적으로 설정해야 함 idCookie.setMaxAge(24 * 60 * 60);//단위는 초
		 * response.addCookie(passwordCookie); }
		 */
		
		//비즈니스 로직은 컨트롤러에 구현하면 안됨
		//비즈니스 로직은 모델영역에서 구현
		LoginService loginService = new LoginService();
		
		//로그인에 성공하면 화면에 로그인에 성공한 회원의 정보를 출력
		
		//로그인에 성공하면 로그인된 회원정보 하나를 반환하고, 로그인에 실패하면 null을 반환
		MemberVO loginMember = loginService.getLoginMember(id, passwd);
		if(loginMember != null) {
			//서블릿에서 데이터 공유하는 방법
			//1. 속성 사용 방법
			//1-1. 속성공유
			//영역객체.setAttribute(String attrName, Object attrValue)
			//영역(Scope)
			//page : 동일페이지에서만 공유
			//request : 동일 요청을 처리하는 모든 페이지에서 공유	--로그인
			//session : 하나의 사용자(브라우저)당 할당되는 영역
			//application : 동일 애플리케이션에서는 모두 공유
			
			request.setAttribute("loginMember", loginMember);
			
			//2. 초기화 파라미터 사용 방법
			
			//뷰페이지로 포워딩
			//서블릿에서 포워딩 방식
			//1.디스패치
			//페이지 전환이 서버상에서 이루어짐
			//주소 표시줄상의 요청 URL이 변경되지 않음 즉, /login 으로 되어있음
			//따라서, 요청(request)가 변경되지 않는다.
			/*
			 * RequestDispatcher dispatcher =
			 * request.getRequestDispatcher("loginSuccess.jsp"); dispatcher.forward(request,
			 * response);
			 */
			
			//세션을 이용한 로그인 처리
			HttpSession session = request.getSession();
			session.setAttribute("memberId", id);
			response.sendRedirect("index.jsp");
		}
		else {
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("loginFail.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
