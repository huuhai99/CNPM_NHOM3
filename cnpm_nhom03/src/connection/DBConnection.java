package connection;

import java.sql.*;

public class DBConnection {
    static Connection connection;
    //    static String host = "node231855-coffee.j.layershift.co.uk";
    static String host = "db4free.net:3306";
    private static final String db = "cnpm_nhom03";
    //    private static final String url = "jdbc:mysql://" + host + "/" + db + "?useUnicode=true&characterEncoding=utf-8";
    private static final String url = "jdbc:mysql://" + host + "/" + db + "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
    private static final String user = "nhom03";
    private static final String password = "Hai2711@";

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            return connection;
        }
        return connection;
    }


    public static void main(String[] args) {
        DBConnection.getConnection();
    }
//    static Connection con;
//    static Connection connection = null;
//
//    public static Statement connect() throws ClassNotFoundException, SQLException {
//        if (con == null || con.isClosed()) {
//            Class.forName("com.mysql.jdbc.Driver");
//            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cnpm_03?useUnicode=true&characterEncoding=utf-8", "root", "");
//            return con.createStatement();
//        } else {
//            return con.createStatement();
//        }
//
//    }
//
//    public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException {
//        if (con == null || con.isClosed()) {
//            Class.forName("com.mysql.jdbc.Driver");
//            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cnpm_03?useUnicode=true&characterEncoding=utf-8", "root", "");
//            return con.prepareStatement(sql);
//        } else {
//            return con.prepareStatement(sql);
//        }
//
//    }
//
//    public static Connection getConnection() {
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cnpm_03?useUnicode=true&characterEncoding=utf-8", "root", "");
//            return connection;
//        } catch (ClassNotFoundException | SQLException e) {
//            return connection;
//        }
//
//    }
}

//localhost