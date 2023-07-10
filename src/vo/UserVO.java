package vo;

import lombok.Data;

@Data
public class UserVO {
	private int userno;
	private String id;
	private String pw;
	private String tel;
	private String name;
	private String email;
	private String resDate;
	private String payDate;
	private int headCount;
}
