package service;
import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.DogDAO;
import vo.DogVO;
public class DogViewService {

   public DogVO getDog(int id) throws Exception {
      // TODO Auto-generated method stub
      Connection con = getConnection();
       DogDAO dogDAO = DogDAO.getInstance();
       dogDAO.setConnection(con);
       
       DogVO dogVO = dogDAO.selectDog(id);
       close(con);
      return dogVO;
   }

}