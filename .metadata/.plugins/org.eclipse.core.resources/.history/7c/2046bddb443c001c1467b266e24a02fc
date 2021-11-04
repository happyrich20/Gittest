package service;
import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.BoardDAO;
import vo.BoardVO;
public class BoardUpdateService {

   public BoardVO getArtcticle(int num) {
      // TODO Auto-generated method stub
      
      Connection con = getConnection();
         BoardDAO boardDAO = BoardDAO.getInstance();
         boardDAO.setConnection(con);
         
         BoardVO article = boardDAO.selectUpdateArticle(num);
         close(con);
      return article;
   }
   

}