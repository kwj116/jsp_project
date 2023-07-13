package sv;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.SurveyDAO;
import dao.UserDAO;
import vo.SurveyVO;
import vo.UserVO;

@WebServlet("/UserInfo")
public class UserInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		try {
			String sessionId = (String)session.getAttribute("userId");
			String userId = sessionId.substring(0,sessionId.length()-1);
			UserVO infoList = UserDAO.showInfo(userId);
			UserVO resList = UserDAO.showResInfo(userId);
			session.setAttribute("ilist", infoList);
			session.setAttribute("rlist", resList);
			response.sendRedirect("info.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}
