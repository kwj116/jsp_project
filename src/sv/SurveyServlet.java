package sv;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SurveyDAO;
import dao.UserDAO;

@WebServlet("/SurveyServlet")
public class SurveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String instagram_count = request.getParameter("insta");
		String facebook_count = request.getParameter("facebook");
		String friend_count = request.getParameter("friends");
		String other_count = request.getParameter("other");
		
		if (instagram_count != null) {
			try {
				SurveyDAO.resSurveyInsta(instagram_count);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (facebook_count != null) {
			try {
				SurveyDAO.resSurveyFacebook(facebook_count);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (friend_count != null) {
			try {
				SurveyDAO.resSurveyFriend(friend_count);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (other_count != null) {
			try {
				SurveyDAO.resSurveyOther(other_count);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		response.sendRedirect("home.jsp");
	}

}
