package controller;

import dao.AccountDao;
import model.Accounts;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/UpdateInfoUser")
public class UpdateInfoUser extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        // fetch data need to update

        String name = request.getParameter("user_name");
        String email = request.getParameter("user_email");
        String phone = request.getParameter("user_phone");
        String address = request.getParameter("user_address");

        // get user from session...
        HttpSession session = request.getSession();
        Accounts user = (Accounts) session.getAttribute("account");
        user.setUserName(name);
        user.setEmail(email);
        user.setNumberPhone(phone);
        user.setAddress(address);

        // update database
        AccountDao accountDao = new AccountDao();
        boolean result = accountDao.updateUser(user);

        if (result) {
//            response.sendRedirect("HomePage");
        } else {
            request.getRequestDispatcher("IfoUser.jsp").forward(request, response);
        }

//        String sql = "UPDATE `cnpm_03`.`account` SET  `username` = ?, `email` = ?, `numberphone` = ?, `address`=? WHERE `id` = ? LIMIT 1";
//        HttpSession session = request.getSession();
//        Accounts user = (Accounts) session.getAttribute("account");
//        try {
//            PreparedStatement up = (PreparedStatement) DBConnection.getPreparedStatement(sql);
//            up.setString(1, name);
//            up.setString(2, email);
//            up.setString(3, phone);
//            up.setString(4, address);
//            up.setString(5, user.getId());
//            int rinsert = up.executeUpdate();
//            if (rinsert == 1) {
//                response.sendRedirect("HomePage");
//            } else {
//                request.getRequestDispatcher("cnpm_nhom03/IfoUser.jsp").forward(request, response);
//            }
//
//        } catch (SQLException | ClassNotFoundException ex) {
//            ex.printStackTrace();
//        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}