package sv;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import dao.UserDAO;
import vo.UserVO;

@WebServlet("/CheckResServlet")
public class CheckResServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");

        String tel = request.getParameter("tel");
        try {
            UserVO rlist = UserDAO.getResList(tel);
            if (rlist == null) {
                PrintWriter out = response.getWriter();
                out.print("예약되지 않은 번호입니다.");
            } 
            else {
            	request.setAttribute("tel", tel);
                request.setAttribute("rlist", rlist);
                request.getRequestDispatcher("myResList.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
