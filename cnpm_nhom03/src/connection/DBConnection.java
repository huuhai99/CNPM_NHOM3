package connection;

import java.sql.*;

public class DBConnection {
    static Connection con;
    static Connection connection = null;

    public static Statement connect() throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useUnicode=true&characterEncoding=utf-8", "root", "");
            return con.createStatement();
        } else {
            return con.createStatement();
        }

    }

    public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useUnicode=true&characterEncoding=utf-8", "root", "");
            return con.prepareStatement(sql);
        } else {
            return con.prepareStatement(sql);
        }

    }

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useUnicode=true&characterEncoding=utf-8", "root", "");
            return connection;
        } catch (ClassNotFoundException | SQLException e) {
            return connection;
        }

    }

    public static void main(String[] args) throws Exception {
        Statement s = DBConnection.connect();
        ResultSet rs = s.executeQuery("select * from account ");
//        int i=rs.
        rs.last();

        rs.beforeFirst();
        while (rs.next()) {
            System.out.println(rs.getString(3));
        }
    }

}

