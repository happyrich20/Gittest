package service;

import java.sql.Connection;
import dao.BoardDAO;
import vo.BoardVO;
import static db.JdbcUtil.*;

public class BoardWriteProService {

   public boolean registArticle(BoardVO boardVO) throws Exception {
      // TODO Auto-generated method stub
      boolean registSuccess = false;
      Connection con = getConnection();
      BoardDAO boardDAO = BoardDAO.getInstance();
      boardDAO.setConnection(con);
      
      int insertCount = boardDAO.insertArticle(boardVO);
      if(insertCount > 0) {
         registSuccess = true;
         commit(con);
      }
      else {
         rollback(con);
      }
      
      return registSuccess;
   }

}