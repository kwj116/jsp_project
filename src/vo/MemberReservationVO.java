package vo;


import lombok.Data;

@Data
public class MemberReservationVO {
	private int resNum;
	private String resDate;
	private String payDate;
	private int headCount;
	private String userId;
	private int pay;
	private String resTime;
	
}
