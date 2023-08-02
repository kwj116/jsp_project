	package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import vo.MemberReservationVO;
import vo.UserVO;

public class UserDAO {
	
	//회원 가입 시 정보 등록 하는 함수
	public static void insertInfo(UserVO user) throws ClassNotFoundException, SQLException {
		String sql="INSERT INTO tbl_userinfo (id,pw,tel,name,email) VALUES (?,?,?,?,?)";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.setString(1,user.getId());
		pstmt.setString(2, user.getPw());
		pstmt.setString(3,user.getTel());
		pstmt.setString(4,user.getName());
		pstmt.setString(5,user.getEmail());
		pstmt.executeUpdate();
	}
	
	//로그인 확인 함수
	public static int loginCheck(String id, String pw) throws ClassNotFoundException, SQLException {
		String sql ="SELECT * FROM tbl_userinfo WHERE id=? AND pw=?";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		int result = 0;
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			result = 1;
		}
		else {
			result = 0;
		}
		
		return result;
	}
	
	//회원가입 아이디 중복 확인 함수
	public static int signUpCheck(String id) throws ClassNotFoundException, SQLException {
		String sql ="SELECT COUNT(*) FROM tbl_userinfo WHERE id=?";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		
		if (rs.getInt(1) == 1) {
			return 1;
		}
		else {
			return 0;
		}
		
	}
	
	//userId 출력 함수
	public static String userName(String id) throws SQLException, ClassNotFoundException {
		String sql = "SELECT id FROM tbl_userinfo WHERE id=?";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		rs.next();
		
		String userName = rs.getString("id");
		return userName;
		
	}
	
	
	//회원 정보 출력 함수
	public static UserVO showInfo(String id) throws ClassNotFoundException, SQLException{
		String sql = "SELECT * FROM tbl_userinfo WHERE id=?";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		UserVO user = new UserVO();
		 if (rs.next()) {
		        user.setId(rs.getString("id"));
		        user.setEmail(rs.getString("email"));
		        user.setName(rs.getString("name"));
		        user.setTel(rs.getString("tel"));
		        user.setPw(rs.getString("pw"));
		    }
		 if (rs != null) {
		     rs.close();
		 }
		 if (pstmt != null) {
		     pstmt.close();
		 }
		return user;
		
	}
	
	//예약 내역 출력 함수
	public static UserVO showResInfo(String id) throws ClassNotFoundException, SQLException {
	    String sql = "SELECT rm.resDate, rm.payDate, rm.headCount, um.id, um.tel, um.name, um.email, um.pw" +
	                 " FROM res_member rm" +
	                 " JOIN tbl_userinfo um ON rm.userId = um.id" +
	                 " WHERE rm.userId = ?;";
	    PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
	    pstmt.setString(1, id);
	    ResultSet rs = pstmt.executeQuery();
	    UserVO user = new UserVO();
	    if (rs.next()) {
	        user.setId(rs.getString("id"));
	        user.setEmail(rs.getString("email"));
	        user.setName(rs.getString("name"));
	        user.setTel(rs.getString("tel"));
	        user.setPw(rs.getString("pw"));
	        user.setResDate(rs.getString("resDate"));
	        user.setPayDate(rs.getString("payDate"));
	        user.setHeadCount(rs.getInt("headCount"));
	    }
	    if (rs != null) {
	        rs.close();
	    }
	    if (pstmt != null) {
	        pstmt.close();
	    }
	    return user;
	}

	//개인정보 수정
	public static void edit(UserVO user) throws ClassNotFoundException, SQLException {
		String sql = "UPDATE tbl_userinfo SET name=?,pw=?,tel=?,email=? WHERE id=?";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.setString(1, user.getName());
		pstmt.setString(2, user.getPw());
		pstmt.setString(3, user.getTel());
		pstmt.setString(4, user.getEmail());
		pstmt.setString(5, user.getId());
		pstmt.executeUpdate();
	}
	
	//비회원 예약정보 DB등록
	public static void insertNonMemResInfo(String resDate,int headCount, String nonMemTel, int pay, String resTime) throws ClassNotFoundException, SQLException{
		LocalDate now = LocalDate.now();
		DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String nowString = now.format(dateTimeFormatter);
		int resCheckNum = 0;
		String sql = "INSERT INTO res_nonmember (resDate, payDate, headCount, nonMemTel, resCheckNum, pay, resTime) VALUES (?,?,?,?,?,?,?)";//VALUES 추가
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.setString(1, resDate);
		pstmt.setString(2, nowString);
		pstmt.setInt(3, headCount);
		pstmt.setString(4, nonMemTel);
		pstmt.setInt(5,resCheckNum);
		pstmt.setInt(6,pay);
		pstmt.setString(7,resTime);
		pstmt.executeUpdate();
	}
	
	//회원 예약정보 DB등록
	public static void insertMemResInfo(String resDate, int headCount, String id, int pay, String resTime) throws ClassNotFoundException, SQLException{
		LocalDate now = LocalDate.now();
		DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String nowString = now.format(dateTimeFormatter);   
		String sql = "INSERT INTO res_member (resDate,payDate,headCount,userId,pay,resTime) VALUES (?,?,?,?,?,?)";//VALUES 추가??
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.setString(1, resDate);
		pstmt.setString(2, nowString);
		pstmt.setInt(3, headCount);
		pstmt.setString(4, id);
		pstmt.setInt(5, pay);
		pstmt.setString(6, resTime);
		pstmt.executeUpdate();
	}
	
	//회원 예약 인원 불러오기
	public static int getMemberCnt() throws ClassNotFoundException, SQLException {
		String sql = "SELECT SUM(headCount) FROM res_member";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int memHeadCount = 0;
		if (rs.next()) {
			memHeadCount = rs.getInt("SUM(headcount)");
		}
		else {
			System.out.println("예약된 인원 없음");
		}
		
		return memHeadCount;
	}
	
	//비회원 예약 인원 
	public static int getNonMemCtn() throws ClassNotFoundException, SQLException {
		String sql = "SELECT SUM(headCount) FROM res_nonmember";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int nonMemHeadCount = 0;
		if (rs.next()) {
			nonMemHeadCount = rs.getInt("SUM(headcount)");
		}
		else {
			System.out.println("예약된 인원 없음");
		}
		
		return nonMemHeadCount;
	}//총 누적 예약 인원(관리자 모드)
	
	
	public static int getPrice() throws ClassNotFoundException, SQLException {
		String sql ="SELECT SUM(totalPay) AS grandTotalPay FROM ("
	             + " SELECT SUM(pay) AS totalPay FROM res_member"
	             + " UNION ALL"
	             + " SELECT SUM(pay) AS totalPay FROM res_nonmember) AS combined_table";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int totalPay = 0;
		if (rs.next()) {
			totalPay = rs.getInt("grandTotalPay");
		}
		return totalPay;
	}//총 누적 수입(관리자 모드)
	
	public static UserVO getResList(String nonMemTel) throws ClassNotFoundException, SQLException {
		
		String sql = "SELECT * FROM res_nonmember WHERE nonMemTel=?";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.setString(1,nonMemTel);
		ResultSet rs = pstmt.executeQuery();
		UserVO user = new UserVO();
		if (rs.next()) {
			String resDate = rs.getString("resDate");
			String payDate = rs.getString("payDate");
			String resTime = rs.getString("resTime");
			int headCount = rs.getInt("headCount"); 
			int pay = rs.getInt("pay");

			user.setResDate(resDate);
			user.setPayDate(payDate);
			user.setResTime(resTime);
			user.setHeadCount(headCount);
			user.setPay(pay);
			
			
		}
		else {
			return null;
		}
		return user;
	}
	
	
	public static void deleteRes(String id) throws ClassNotFoundException, SQLException {
		String sql = "DELETE FROM res_member WHERE userId = ?";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
	}
	public static void deleteResNonMember(int no) throws ClassNotFoundException, SQLException {
		String sql = "DELETE FROM res_nonmember WHERE resNum = ?";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.setInt(1, no);
		pstmt.executeUpdate();
	}
	
}