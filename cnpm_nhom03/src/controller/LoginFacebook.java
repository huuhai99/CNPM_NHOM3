package controller;

import com.restfb.types.User;
import common.RestFB;
import connection.DBConnection;
import dao.AccountDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;

@WebServlet("/login_facebook")
public class LoginFacebook extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginFacebook() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");

        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
            dis.forward(request, response);
        } else {
            String accessToken = RestFB.getToken(code);
            User user = RestFB.getUserInfo(accessToken);
            request.setAttribute("id", user.getId());
            request.setAttribute("name", user.getName());


            if(AccountDao.checkIDFB(user.getId()) == true) {

            }else {
                AccountDao.InsertFBToDB(user.getId(), user.getName());

            }

            HttpSession session = request.getSession();
            session.setAttribute("userFB", user);
        }


        response.sendRedirect(request.getContextPath() + "/HomePage");


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}