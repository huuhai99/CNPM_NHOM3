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
        Accounts account = (Accounts) session.getAttribute("account");
        account.setUserName(name);
        account.setEmail(email);
        account.setNumberPhone(phone);
        account.setAddress(address);

        // update database
        AccountDao accountDao = new AccountDao();
        boolean result = accountDao.updateUser(account);

        if (result) {
            response.sendRedirect("HomePage");
        } else {
            request.getRequestDispatcher("infoUser.jsp").forward(request, response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}