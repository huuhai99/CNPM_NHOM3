package controller;

import com.captcha.botdetect.web.servlet.Captcha;
import dao.AccountDao;
import model.Accounts;
import utils.VerifyUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
    AccountDao accountDao = new AccountDao();

    protected void requestProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String username = request.getParameter("username");
        String pass = request.getParameter("password");

        boolean valid = true;
        String errorString = "";

// kiểm tra tên và email đăng nhập
        String err = "";
        if (username == "" || pass == "") {
            err = "Chưa nhập tài khoản hoặc mật khẩu";
        } else {
            if (accountDao.checkAccount(username, pass) == false) {
                err = "Sai tên tài khoản hoặc mật khẩu";
            }
        }
        if (err.length() > 0) {
            request.setAttribute("err", err);
        }
        request.setAttribute("username", username);
        request.setAttribute("pass", pass);

        String path = "/login.jsp";

        Accounts accounts = new Accounts();
        accounts = accountDao.checkLogin(username, pass);

        Accounts accountAdmin = new Accounts();
        accountAdmin = accountDao.checkLogin(username, pass);
        try {
            // kiểm tra check captcha
            if (valid) {
                String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
                System.out.println("gRecaptchaResponse=" + gRecaptchaResponse);
                // Verify CAPTCHA.
                valid = VerifyUtils.verify(gRecaptchaResponse);
                if (!valid) {
                    errorString = "CaptCha không hợ lệ!";
                }
            }
            if (!valid) {
                request.setAttribute("errorString", errorString);
                request.getRequestDispatcher("login.jsp").forward(request, response);
                return;
            } else {
                if (accounts == null && err.length() > 0) {
                    request.getRequestDispatcher("login.jsp").forward(request, response);

                }
                // kiểm tra quyền đăng nhập

                if (accounts != null) { //&& accounts.getType().equals("user")
                    HttpSession session = request.getSession();
                    session.setAttribute("account", accounts);
                    session.setAttribute("nodisplay", "display:none;");
                    response.sendRedirect(request.getContextPath() + "/HomPage");
                } else if (accountAdmin != null && accountAdmin.getType() == 2) {
                    HttpSession session = request.getSession();
                    session.setAttribute("accountAdmin", accountAdmin);
                    session.setAttribute("nodisplay", "display:none;");
                    response.sendRedirect(request.getContextPath() + "/Admin");
//                response.sendRedirect(request.getContextPath() +"/Admin?id=0&page=page1");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        //captcha


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session != null) {
            session.removeAttribute("account");
            session.removeAttribute("userFB");
            session.removeAttribute("userGG");
            session.removeAttribute("accountAdmin");
            session.setAttribute("nodisplay", "display:block;");
            response.sendRedirect(request.getContextPath() + "/HomPage");
//
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        requestProcess(request, response);
    }

}