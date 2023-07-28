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
        	  if (result == 1) {//로그인 하려는 아이디가 존재 할 시 
                  login = "loginComplete";
                  session.setAttribute("id", id);
                  session.setAttribute("login", login);//로그인시 회원가입,로그인 메뉴가 사라지고, 로그아웃 메뉴가 나타나게 하기 위함
                  session.setAttribute("userId", userId);
                  if (id.equals("admin")) {
                	session.removeAttribute("userId");
                	session.removeAttribute("id");
                	session.removeAttribute("login");//관리자 로그인을 하면 임의로 홈화면 이동 시 admin로그인 정보가 남아 있기 때문
					request.getRequestDispatcher("admin.jsp").forward(request, response);
                  }
                  else {
                	  request.getRequestDispatcher("home.jsp").forward(request, response);
                  }
              } else {//로그인 하는아이디가 존재 안할 시
            	  login = "refuse";
            	  request.setAttribute("login", login);
            	  request.getRequestDispatcher("login.jsp").forward(request, response);
              }
        } catch (ClassNotFoundException | SQLException | IOException e) {
            e.printStackTrace();
        }
    }
}
