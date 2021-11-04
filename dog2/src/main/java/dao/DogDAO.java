package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vo.DogVO;

//DAO(Data Access Object) : DBMS로 SQL 구문을 전송하는 클래스
public class DogDAO {
   private Connection con;
   //singleton 패턴
   
   private static DogDAO instance;
   
   private DogDAO() {}
   
   public static DogDAO getInstance() {
      if(instance == null) {
         instance = new DogDAO();
      }
      return instance;
   }
   
   public void setConnection(Connection con) {
      this.con = con;
   }

public ArrayList<DogVO> selectDogList() throws Exception {
	// TODO Auto-generated method stub
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ArrayList<DogVO> dogList = null;
	String sql = "SELECT * FROM dog";
	
	try {
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if (rs.next()) {
			dogList = new ArrayList<DogVO>();
			DogVO dogVO = null;
			
			do {
				dogVO = new DogVO();
				dogVO.setDogContent(rs.getString("dogContent"));
				dogVO.setDogCountry(rs.getString("dogContent"));
				dogVO.setDogHeight(rs.getInt("dogHeight"));
				dogVO.setDogId(rs.getInt("dogId"));
				dogVO.setDogImage(rs.getString("dogImage"));
				dogVO.setDogKind(rs.getString("dogKind"));
				dogVO.setDogPrice(rs.getInt("dogPrice"));
				dogVO.setDogReadCount(rs.getInt("dogReadCount"));
				dogVO.setDogWeight(rs.getInt("dogWeight"));
				
				dogList.add(dogVO);
				
				
			} while (rs.next());
		}
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	finally {
		close(rs);
		close(pstmt);
	}
	return dogList;
}

public DogVO selectDog(int id) throws Exception{
	// TODO Auto-generated method stub
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	DogVO dogVO = null;
	String sql = "";
	
	try {
		sql = "UPDATE dog SET dogReadCount = dogReadCount + 1 WHERE dogId = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1,id);
		int updateCount = pstmt.executeUpdate();
		
		if (updateCount > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		sql = "SELECT * FROM dog WHERE dogId = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, id);
		rs = pstmt.executeQuery();
		
		if (rs.next()) {
			
				dogVO = new DogVO();
				dogVO.setDogContent(rs.getString("dogContent"));
				dogVO.setDogCountry(rs.getString("dogCountry"));
				dogVO.setDogHeight(rs.getInt("dogHeight"));
				dogVO.setDogId(rs.getInt("dogId"));
				dogVO.setDogImage(rs.getString("dogImage"));
				dogVO.setDogKind(rs.getString("dogKind"));
				dogVO.setDogPrice(rs.getInt("dogPrice"));
				dogVO.setDogReadCount(rs.getInt("dogReadCount"));
				dogVO.setDogWeight(rs.getInt("dogWeight"));
				
		}
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	finally {
		close(rs);
		close(pstmt);
	}
	return dogVO;
}

}
