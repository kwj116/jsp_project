package sv;
 
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;

@WebServlet("/LoginCheck")
public class LoginCheckServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
    	String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        HttpSession session = request.getSession();
        String login="";
        try {
        	int result = UserDAO.loginCheck(id, pw); 
        	String userId = UserDAO.userName(id)+"님";
        	  if (result == 1) {
                  login = "loginComplete";
                  session.setAttribute("id", id);
                  session.setAttribute("login", login);
                  session.setAttribute("userId", userId);
                  if (id.equals("admin")) {
					request.getRequestDispatcher("admin.jsp").forward(request, response);
                  }
                  else {
                	  request.getRequestDispatcher("home.jsp").forward(request, response);
                  }
              } else {
            	  login = "refuse";
            	  request.setAttribute("login", login);
            	  request.getRequestDispatcher("login.jsp").forward(request, response);
              }
        } catch (ClassNotFoundException | SQLException | IOException e) {
            e.printStackTrace();
        }
    }
}
