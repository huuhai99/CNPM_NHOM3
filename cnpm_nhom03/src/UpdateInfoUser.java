import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import model.Users;

@WebServlet("/UpdateInfoUser")
public class UpdateInfoUser extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("user_name");
        String email = request.getParameter("user_email");
        String phone = request.getParameter("user_phone");
        String address = request.getParameter("user_address");
        String password = request.getParameter("user_password");
        String sql = "UPDATE `test`.`user` SET  `HOTEN` = ?, `EMAIL` = ?, `SDT` = ?, DIACHI = ? WHERE `ID` = ? LIMIT 1";
        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("account");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
