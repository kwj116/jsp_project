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
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/plain; charset=utf-8"); // 응답 형식을 텍스트로 지정

        String tel = request.getParameter("tel");
        HttpSession session = request.getSession();
        try {
            UserVO rlist = UserDAO.getResList(tel);
            if (rlist == null) {
                PrintWriter out = response.getWriter();
                out.print("예약되지 않은 번호입니다."); // AJAX 응답으로 메시지 전송
            } else {
                request.setAttribute("rlist", rlist);
                request.getRequestDispatcher("myResList.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
