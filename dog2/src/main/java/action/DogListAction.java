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
      
      //���� �� ��ǰ ������ ������ ��Ű�� ����� �̹������� �����ͼ� ������ �÷��� ��ü ����
      ArrayList<String> todayImageList = new ArrayList<String>();
      
      Cookie[] cookieArray = request.getCookies();
      if(cookieArray != null) {
         //��Ű ��ü�� �ϳ��� �Ѿ������...
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