package teamD;

<<<<<<< HEAD
import java.util.List;
=======
import java.util.HashMap;
import java.util.List;
import java.util.Map;
>>>>>>> b95258848772af5046332961e02831ee0c25a639

import teamD.project.dao.MproductDao;
import teamD.project.dto.MproductDto;

public class Test {
	
	
	public static void main(String[] args) {
		MproductDao dao = MproductDao.getInstance();
<<<<<<< HEAD
		List<MproductDto> list = dao.recentlist();
=======
		MproductDto dto = new MproductDto();
		
		Map<String,MproductDto> map = new HashMap<>();
		map.put("pcode", dto);
		
		List<MproductDto> list = dao.recentlist(map);
>>>>>>> b95258848772af5046332961e02831ee0c25a639
		
		System.out.println(list);
	}
	
<<<<<<< HEAD
	
	
	
=======
>>>>>>> b95258848772af5046332961e02831ee0c25a639
}
