package sv;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import vo.UserVO;

@WebServlet("/SignUp")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		UserVO user = new UserVO();
		user.setId(id);
		user.setPw(pw);
		user.setTel(tel);
		user.setName(name);
		user.setEmail(email);
		
		try {
			if (UserDAO.signUpCheck(id) == 1) {
				request.setAttribute("errorMessage", false);
				request.getRequestDispatcher("signUp.jsp").forward(request, response);
			}
			else {
				UserDAO.insertInfo(user);
				response.sendRedirect("home.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
