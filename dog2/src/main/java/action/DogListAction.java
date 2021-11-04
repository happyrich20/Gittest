package action;

import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DogListService;
import vo.ActionForward;
import vo.DogVO;

public class DogListAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      // TODO Auto-generated method stub
      
      //오늘 본 상품 정보를 저장한 쿠키에 저장된 이미지들을 가져와서 저장할 컬렉션 객체 생성
      ArrayList<String> todayImageList = new ArrayList<String>();
      
      Cookie[] cookieArray = request.getCookies();
      if(cookieArray != null) {
         //쿠키 객체가 하나라도 넘어왔으면...
         for (int i = 0; i < cookieArray.length; i++) {
            if(cookieArray[i].getName().startsWith("today")) {
               todayImageList.add(cookieArray[i].getValue());
            }
         }
      }
      
      DogListService dogListService = new DogListService();
      
      ArrayList<DogVO> dogList = dogListService.getDogList();
      request.setAttribute("dogList", dogList);
      request.setAttribute("todayImageList", todayImageList);
      
      ActionForward forward = new ActionForward();
      forward.setUrl("dogList.jsp");
      return forward;
   }

}