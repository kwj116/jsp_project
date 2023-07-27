package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.MemberReservationVO;

public class AdminDAO {
	public static ArrayList<MemberReservationVO> resMemStatus() throws ClassNotFoundException, SQLException {
		String sql = "SELECT * FROM res_member";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		ArrayList<MemberReservationVO> mResList = new ArrayList<>();
		while (rs.next()) {
			MemberReservationVO mv = new MemberReservationVO();
			mv.setResNum(rs.getInt("resNum"));
		    mv.setResDate(rs.getString("resDate"));
		    mv.setPayDate(rs.getString("payDate"));
		    mv.setHeadCount(rs.getInt("headCount"));
		    mv.setUserId(rs.getString("userId"));
		    mv.setPay(rs.getInt("pay"));
		    mv.setResTime(rs.getString("resTime"));
		    mResList.add(mv);
		}
		return mResList;
	}
}
