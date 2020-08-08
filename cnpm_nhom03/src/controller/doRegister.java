package controller;

import dao.AccountDao;
import model.Accounts;
import utils.UtilsPath;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet("/DoRegister")
public class DoRegister extends HttpServlet {
    Accounts taiKhoan = null;
    AccountDao accountDao = new AccountDao();


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        denTrangDangKy(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        taiKhoan = thongTinDangKy(request);
        kiemTraThongTin(taiKhoan, request, response);
    }

    //   3: Phương thức trả về trang đăng ký:
    private void denTrangDangKy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Gọi lại trang Register để hiện thị form Đăng kí
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/register.jsp");
        rd.forward(request, response);
    }

    // 5.1. Phương thức lấy thông tn Đăng ký
    private Accounts thongTinDangKy(HttpServletRequest request) {
        Accounts tk = new Accounts();
        tk.setUserName(request.getParameter("ten"));
        tk.setEmail(request.getParameter("email"));
        tk.setPassword(request.getParameter("password"));
        tk.setNumberPhone(request.getParameter("phone"));
        tk.setAddress(request.getParameter("address"));

        return tk;
    }

    // 5.2. Phương thức kiểm tra thông tin Đăng ký đã nhập ở form Đăng ký
    private void kiemTraThongTin(Accounts taiKhoan, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = taiKhoan.getUserName();
        String email = taiKhoan.getEmail();
        String phone = taiKhoan.getNumberPhone();
        String adress = taiKhoan.getAddress();
        String password = taiKhoan.getPassword();
        String re_password = request.getParameter("pwd1");
        String regex_email = "^[A-Za-z0-9]+([_\\.\\-]?[A-Za-z0-9])*@[A-Za-z0-9]+([\\.\\-]?[A-Za-z0-9]+)*(\\.[A-Za-z]+)+$";
        String regex_password = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\\$%\\^&\\*]).{8,}$";
        String regex_phone = "^[0-9]+$";
        String name_error = "";
        String email_error = "";
        String password_error = "";
        String repass_error = "";
        String phone_error = "";
        String adress_error = "";

        // 5.2.1.Hiển thị thông sai nếu nhập thông tin sai hoặc chưa nhập

        //Kiểm tra tên đăng nhập:
        if (name.equals("")) {
            name_error = "✖ Vui lòng nhập tên!";
        } else if (accountDao.kiemTraTonTai(name) == true) {
            name_error = "✖ Tên đã được đăng ký";
        }
        if (name_error.length() > 0) {
            request.setAttribute("name_error", name_error);
        }
        //Kiểm tra email:
        if (email.equals("")) {
            email_error = "✖ Vui lòng nhập email";
        } else if (accountDao.kiemTraChuoi(regex_email, email) == false) {
            email_error = "✖ Sai định dạng Email";
        }
        if (email_error.length() > 0) {
            request.setAttribute("email_error", email_error);
        }
        //Kiểm tra số điện thoại:
        if (phone.equals("")) {
            phone_error = "✖ Vui lòng nhập số điện thoại";
        } else if (accountDao.kiemTraChuoi(regex_phone, email) == false) {
            phone_error = "✖ Chỉ được nhập số";
        }
//        if (email_error.length() > 0) {
//            request.setAttribute("email_error", email_error);
//        }
//        //Kiểm tra địa chỉ:
//        if (adress.equals("")) {
//            adress_error = "✖ Vui lòng nhập địa chỉ!";
//        }
//        if (adress_error.length() > 0) {
//            request.setAttribute("adress_error", adress_error);
//        }

        //Kiểm tra mật khẩu:
        if (password.equals("")) {
            password_error = "✖ Vui lòng nhập mật khẩu";
        } else if (accountDao.kiemTraChuoi(regex_password, password) == false) {
            password_error = "✖ Mật khẩu không đủ mạnh";
        }
        if (password_error.length() > 0) {
            request.setAttribute("password_error", password_error);
        }
        //Kiểm tra người dùng nhập lại mật khẩu có đúng không:
        if (re_password.equals("")) {
            repass_error = "✖ Vui lòng xác nhập lại mật khẩu";
        } else if (!re_password.equals(password)) {
            repass_error = "✖ Mật khẩu nhập lại không đúng!";
        }
        if (repass_error.length() > 0) {
            request.setAttribute("repass_error", repass_error);
        }
        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("phone", phone);
        request.setAttribute("adress", adress);
        request.setAttribute("password", password);
        request.setAttribute("repass", re_password);
        String url = "/register.jsp";

        try {
            // Nếu Đăng ký thành công sẽ qua trang Đăng nhập
            if (name_error.length() == 0 && email_error.length() == 0 && password_error.length() == 0 && repass_error.length() == 0) {
//                Date id = new Date();
//                taiKhoan = new Accounts("" + id.getTime(), name, password, email, phone, adress, 1);
                taiKhoan = new Accounts(name, password, email, phone, adress, 1);
                accountDao.themTaiKhoan(taiKhoan);
                response.sendRedirect(UtilsPath.getPath("login.jsp"));

                // Còn nếu nhập sai thì vẫn ở trang Đăng ký
            } else {
                url = "/register.jsp";
                RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
                rd.forward(request, response);
            }


        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }


}
