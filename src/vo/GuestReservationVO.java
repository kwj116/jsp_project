package vo;

import lombok.Data;

@Data
public class GuestReservationVO {
	private int resNum;
	private String resDate;
	private String payDate;
	private int headCount;
	private String nonMemTel;
	private int pay;
	private String resTime;
}
