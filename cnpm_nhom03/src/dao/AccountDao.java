package dao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import com.restfb.types.User;
import connection.DBConnection;
import model.Accounts;
import model.Users;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AccountDao {
    public boolean checkAccount(String email, String password)  {
        Connection connection = DBConnection.getConnection();
        String sql = "SELECT * FROM account WHERE email = '" + email + "' AND password ='" + password + "'";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }
    public static boolean checkIDFB(String ID)  {
        Connection con = DBConnection.getConnection();
        String sql = "SELECT * FROM account WHERE  facebookID = ? ";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, ID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }
    public static boolean checkIDGG(String ID)  {
        Connection connection = DBConnection.getConnection();
        String sql = "SELECT * FROM account WHERE  googleID = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, ID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }

    public Accounts checkLogin(String email, String password)  {
        Connection connection = DBConnection.getConnection();
        String sql = "SELECT * FROM account WHERE email = '" + email + "' AND password ='" + password + "'";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Accounts accountsBean = new Accounts();
                accountsBean.setId(rs.getInt("id"));
                accountsBean.setUserName(rs.getString("username"));
                accountsBean.setPassword(rs.getString("password"));
                accountsBean.setType(rs.getString("type"));
                accountsBean.setNumberPhone(rs.getString("numberphone"));
                accountsBean.setEmail(rs.getString("email"));
                accountsBean.setAddress(rs.getString("address"));
                return accountsBean;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static User checkLoginFB(String facebookID) {
        PreparedStatement stm = null;
        ResultSet rs = null;
        Connection con = null;
        try {
            con = DBConnection.getConnection();
            String sql = "SELECT * FROM account WHERE facebookID = ? ";
            stm = con.prepareStatement(sql);
            stm.setString(1, facebookID);
            rs = stm.executeQuery();
            if (rs.next()) {
                String faceID = rs.getString(8);
                String faceLink = rs.getString(9);

                User userInfo = new User();
                userInfo.setId(faceID.trim());
                userInfo.setLink(faceLink);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

        }
        return null;
    }

    public static boolean InsertFBToDB(String ID, String name) {
        PreparedStatement stm = null;
        Connection con = null;
        try {
            con = DBConnection.getConnection();
            String sql = "INSERT INTO account (facebookID,username) VALUES (?,?)";
            stm = con.prepareStatement(sql);
            stm.setString(1, ID);
            stm.setString(2, name);
            int row = stm.executeUpdate();
            if (row > 0) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

        }
        return false;
    }
    public static boolean InsertGGToDB( String email ,String googleID) {
        PreparedStatement stm = null;
        Connection con = null;
        try {
            con = DBConnection.getConnection();
            String sql = "INSERT INTO account (email, googleID) VALUES (?,?)";
            stm = con.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, googleID);
            int row = stm.executeUpdate();
            if (row > 0) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

        }
        return false;
    }

    //Kiểm tra chuỗi hợp lệ:
    public static boolean kiemTraChuoi(String regex, String input) {
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(input);
        return matcher.matches();
    }

    //Mã hóa mật khẩu MD5:
    public static String maHoaMD5(String str) {
        byte[] defaultBytes = str.getBytes();
        try {
            MessageDigest algorithm = MessageDigest.getInstance("MD5");
            algorithm.reset();
            algorithm.update(defaultBytes);
            byte messageDigest[] = algorithm.digest();
            StringBuffer hexString = new StringBuffer();
            for (int i = 0; i < messageDigest.length; i++) {
                String hex = Integer.toHexString(0xFF & messageDigest[i]);
                if (hex.length() == 1) {
                    hexString.append('0');
                }
                hexString.append(hex);
            }
            str = hexString + "";
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return str;
    }

    //Kiem tra tai khoan nay da ton tai hay chua:
    public boolean kiemTraTonTai(String userName) {
        String sql = "SELECT * FROM account WHERE username = '" + userName + "'";
        try {
            Connection cons = DBConnection.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
            cons.close();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    //Them tai khoan vao database:
    public void themTaiKhoan(Users taiKhoan) {
        String sql = "INSERT INTO account VALUE (?,?,?,?,?,?,?)";
        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, taiKhoan.getId());
            pst.setString(2, taiKhoan.getName());
            pst.setString(3, taiKhoan.getEmail());
            pst.setString(4, taiKhoan.getPhone());
            pst.setString(5, taiKhoan.getAdress());
            pst.setString(6, taiKhoan.getPassword());
            pst.setInt(7, taiKhoan.getQuyen());
            pst.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
