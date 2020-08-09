package controller;

import dao.AccountDao;
import model.Accounts;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/UpdateInfoUser")
public class UpdateInfoUser extends HttpServlet {
    private AccountDao accountDao = new AccountDao();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        // Fetch data need to update
        String name = request.getParameter("user_name");
        String email = request.getParameter("user_email");
        String phone = request.getParameter("user_phone");
        String address = request.getParameter("user_address");

        // Get user from session and check info input
        HttpSession session = request.getSession();
        Accounts account = (Accounts) session.getAttribute("account");
        account.setUserName(name);
        account.setEmail(email);
        account.setNumberPhone(phone);
        account.setAddress(address);
        checkInfoInput(account, request, response);


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private void checkInfoInput(Accounts account, HttpServletRequest request, HttpServletResponse response) {
        String userName = account.getUserName();
        String email = account.getEmail();
        String phone = account.getNumberPhone();
        String regex_email = "^[A-Za-z0-9]+([_\\.\\-]?[A-Za-z0-9])*@[A-Za-z0-9]+([\\.\\-]?[A-Za-z0-9]+)*(\\.[A-Za-z]+)+$";
        String regex_phone = "^[0-9]+$";
        String userName_error = "";
        String email_error = "";
        String phone_error = "";

        // Check username
        if (userName.equals("")) {
            userName_error = "✖ Tên đăng nhập không được bỏ trống!";
        } else if (accountDao.kiemTraTonTai(userName) == true) {
            userName_error = "✖ Tên đăng nhập đã tồn tại!";
        }
        if (userName_error.length() > 0) {
            request.setAttribute("userName_error", userName_error);
        }

        // Check email
        if (email.equals("")) {
            email_error = "✖ Địa chỉ Email không được bỏ trống!";
        } else if (accountDao.kiemTraChuoi(regex_email, email) == false) {
            email_error = "✖ Sai định dạng Email!";
        }
        if (email_error.length() > 0) {
            request.setAttribute("email_error", email_error);
        }

        // Check phone number
//        if (phone.equals("")) {
//            phone_error = "✖ Vui lòng nhập số điện thoại!";
//        } else
        if (!phone.equals("")) {
            if (!accountDao.kiemTraChuoi(regex_phone, phone)) {
                phone_error = "✖ Chỉ được nhập số!";
            } else if (phone.length() > 15 || phone.length() < 8) {
                phone_error = "✖ Độ dài số điện thoại không hợp lệ!";
            }
        }
        if (phone_error.length() > 0) {
            request.setAttribute("phone_error", phone_error);
        }

        // Update database
        try {
            if (userName_error.length() == 0 && email_error.length() == 0) {
                accountDao.updateUser(account);
                response.sendRedirect("HomePage");
            } else {
                String url = "/infoUser.jsp";
                RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

}