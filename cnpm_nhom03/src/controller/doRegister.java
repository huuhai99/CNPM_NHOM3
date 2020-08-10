package controller;

import dao.AccountDao;
import dao.SendMail;
import model.Accounts;
import model.Accounts;
import utils.UtilsPath;
import utils.UtilsPath;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.Random;

@WebServlet("/DoRegister")
public class doRegister extends HttpServlet {
    Accounts users = null;
    AccountDao accountDao = new AccountDao();


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        denTrangDangKy(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        users = thongTinDangKy(request);
        kiemTraThongTin(users, request, response);

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
        // lấy username, email, passwword, sđt, địa chỉ
        tk.setUserName(request.getParameter("ten"));
        tk.setEmail(request.getParameter("email"));
        tk.setPassword(request.getParameter("password"));
        tk.setNumberPhone(request.getParameter("phone"));
        tk.setAddress(request.getParameter("address"));

        return tk;
    }
    // 5.2. Phương thức kiểm tra thông tin Đăng ký đã nhập ở form Đăng ký
    private void kiemTraThongTin(Accounts users, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = users.getId();
        String name = users.getUserName();
        String email = users.getEmail();
        String phone = users.getNumberPhone();
        String address = users.getAddress();
        String password = users.getPassword();
        String re_password = request.getParameter("pwd1");
        // kiểm tra các trường phải có chuỗi hợp lệ
        // email phải có dạng abc@gmal.com
        String regex_email = "^[A-Za-z0-9]+([_\\.\\-]?[A-Za-z0-9])*@[A-Za-z0-9]+([\\.\\-]?[A-Za-z0-9]+)*(\\.[A-Za-z]+)+$";
        // password có ít nhất 8 kí tự, có 1 kí tự đặc biệt, 1 kí tự in hoa, 1 kí tự số
        String regex_password = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\\$%\\^&\\*]).{8,}$";
        // số điện thoại phải là số
        String regex_phone ="^[0-9]+$";
        // khai báo các biến giá trị sai
        String name_error = "";
        String email_error = "";
        String password_error = "";
        String repass_error = "";
        String phone_error ="";
        String adress_error ="";

        // 5.2.1.Hiển thị thông sai nếu nhập thông tin sai hoặc chưa nhập

        //Kiểm tra tên đăng nhập:
        if (name.equals("")) {
            name_error = "✖ Vui lòng nhập tên!";
        } else if (accountDao.kiemTraTonTai(name,email) == true) {
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
        } else if (accountDao.kiemTraChuoi(regex_phone, phone) == false) {
            phone_error = "✖ Chỉ được nhập số";
        }
        if (phone_error.length() > 0) {
            request.setAttribute("phone_error", phone_error);
        }


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
        request.setAttribute("address", address);
        request.setAttribute("password", password);
        request.setAttribute("repass", re_password);
        String url = "/register.jsp";
        HttpSession session = request.getSession();

        try {
            // Nếu Đăng ký thành công sẽ qua trang Đăng nhập
            if (name_error.length() == 0 && email_error.length() == 0 && password_error.length() == 0 && repass_error.length() == 0 ) {
//                Date id = new Date();
                users = new Accounts(name, email,phone,address, password, 1);

                String email_1 = mXN();
                SendMail.sendMail(users.getEmail(), "Coffee", "Mã xác nhận của bạn là: " + email_1);
                System.out.println(users.getEmail());
                String maXN = email_1;
//                accountDao.themTaiKhoan(users);
                session.setAttribute("maxn",maXN);
                session.setAttribute("users", users);
                // Còn nếu nhập sai thì vẫn ở trang Đăng ký
                response.sendRedirect(UtilsPath.getPath("xacnhan.jsp"));


            } else {
                url = "/register.jsp";
                RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
                rd.forward(request, response);
            }



        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
    public static String mXN() {
        int leftLimit = 48; // numeral '0'
        int rightLimit = 122; // letter 'z'
        int targetStringLength = 5;
        Random random = new Random();

        String generatedString = random.ints(leftLimit, rightLimit + 1)
                .filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97))
                .limit(targetStringLength)
                .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
                .toString();
        return generatedString;
    }



}
