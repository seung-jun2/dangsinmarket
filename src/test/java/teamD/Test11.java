package teamD;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.jupiter.api.Test;

import mybatis.SqlSessionBean;
import teamD.project.dao.MproductDao;
<<<<<<< HEAD
import teamD.project.dao.MuserDao;
import teamD.project.dto.MproductDto;
import teamD.project.dto.MuserDto;
=======
import teamD.project.dto.MproductDto;
>>>>>>> b95258848772af5046332961e02831ee0c25a639

class Test11 {

	
<<<<<<< HEAD
	
	 @Test void write() { 
		 
	 MuserDao dao = MuserDao.getInstance();
	 List<MuserDto> list = dao.list();
	 
	 System.out.println(list); 
	 assertNotNull(list);
	 
	 }
	 
=======
	  @Test void write() { MproductDao dao = MproductDao.getInstance();
	  List<MproductDto> list = dao.mostlist();
	  
	  System.out.println(list); assertNotNull(list);
	  
	  }
	  
>>>>>>> b95258848772af5046332961e02831ee0c25a639
		/*
		 * @Test void all() { MproductDao dao = MproductDao.getInstance();
		 * List<MproductDto> list = dao.list(); System.out.println(list);
		 * assertNotNull(list);
		 * 
		 * 
		 * }
		 */
	 

	/*
	 * @Test void write() { SqlSession mapper = SqlSessionBean.getSession(); }
	 */

}
