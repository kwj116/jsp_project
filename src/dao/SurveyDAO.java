package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vo.SurveyVO;

public class SurveyDAO {
	public static void resSurveyInsta(String instagram_count) throws ClassNotFoundException, SQLException {
		String sql = "UPDATE survey SET instagram_count = instagram_count + 1";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.executeUpdate();
	}
	public static void resSurveyFacebook(String facebook_count) throws ClassNotFoundException, SQLException {
		String sql = "UPDATE survey SET facebook_count = facebook_count + 1";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.executeUpdate();
	}
	public static void resSurveyFriend(String friend_count) throws ClassNotFoundException, SQLException {
		String sql = "UPDATE survey SET friend_count = friend_count + 1";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.executeUpdate();
	}
	public static void resSurveyOther(String other_count) throws ClassNotFoundException, SQLException {
		String sql = "UPDATE survey SET other_count = other_count + 1";
		PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
		pstmt.executeUpdate();
	}
	
	public static SurveyVO surveyResult() throws ClassNotFoundException, SQLException {
	    String sql = "SELECT * FROM survey";
	    PreparedStatement pstmt = DBcon.connection().prepareStatement(sql);
	    ResultSet rs = pstmt.executeQuery();
	    
	    SurveyVO slist = new SurveyVO();
	    
	    if (rs.next()) {
	        int instaResult = rs.getInt(1);
	        int facebookResult = rs.getInt(2);
	        int friendResult = rs.getInt(3);
	        int otherResult = rs.getInt(4);
	        
	        slist.setInstaResult(instaResult);
	        slist.setFacebookResult(facebookResult);
	        slist.setFriendResult(friendResult);
	        slist.setOtherResult(otherResult);
	    }
	    
	    return slist;
	}

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		System.out.println(surveyResult().getInstaResult());
	}
}
