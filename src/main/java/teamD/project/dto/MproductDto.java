package teamD.project.dto;

import java.sql.Timestamp;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder

public class MproductDto {

	private String pname;
	private int pcode;
<<<<<<< HEAD
	private String id;
=======
	private String ID;
>>>>>>> b95258848772af5046332961e02831ee0c25a639
	private int price;
	private String brand;
	private int psize;
	private String category;
<<<<<<< HEAD
	private int readcount;
	private Timestamp createAt;
	private String picture;
	private String content;
	private String buyid;
	private int status;
	private Timestamp buyat;
=======
	private int readCount;
	private Timestamp craeteAt;
>>>>>>> b95258848772af5046332961e02831ee0c25a639

	
	

}
