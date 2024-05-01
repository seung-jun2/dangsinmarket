package teamD.project.dto;

import java.sql.Date;


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

public class MserviceDto {
	
<<<<<<< HEAD
	private long idx;
=======
	private int idx;
>>>>>>> b95258848772af5046332961e02831ee0c25a639
	private String writer;
	private String title;
	private String content;
	private int readCount;
	private Date createdAt;
	private int commentCount;

}
