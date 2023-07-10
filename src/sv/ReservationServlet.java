package sv;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import vo.UserVO;

@WebServlet("/reservation")
public class ReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
		int headCount = Integer.parseInt(request.getParameter("headCount"));
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String resTime = request.getParameter("time");
		String resDate = year+"-"+month+"-"+day;
		int pay = Integer.parseInt(request.getParameter("revenue"));
		String nonMemTel = request.getParameter("nonMemTel");
		HttpSession session = request.getSession();
		String isLogin = (String) session.getAttribute("userId");
		
		try {
			if (isLogin != null) {
				String userId = isLogin.substring(0,isLogin.length()-1);
				UserDAO.insertMemResInfo(resDate, headCount, userId,pay,resTime);
				session.setAttribute("name", isLogin);
				response.sendRedirect("resSuccess.jsp?year="+year+"&month="+month+"&day="+day+"&time="+resTime+"&headCount="+headCount);
				//예약 날짜 및 예약 인원 파라미터로 보내기
			}//회원인 경우
			else {
				UserDAO.insertNonMemResInfo(resDate,headCount,nonMemTel, pay, resTime); 
				response.sendRedirect("resSuccess.jsp?year="+year+"&month="+month+"&day="+day+"&time="+resTime+"&headCount="+headCount);
			}//회원이 아닌 경우
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
