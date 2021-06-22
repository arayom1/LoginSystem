/**
 *
 * @author Arayom
 */
package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

class SigninDao {
    private final String dbUrl = "jdbc:derby://localhost:1527/userDatabase";
    private final String dbUserName = "root";
    private final String dbPassword = "root";
    private final String dbDriver = "com.mysql.cj.jdbc.Driver";
    
    public boolean validate(SigninInfo signinInfo) {
        boolean check = false;
        loadDriver(dbDriver);
        Connection conn = getConnection();
        String sql = "select * from userInfo where username = ? and password = ?";
        PreparedStatement ps;
        
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, signinInfo.getUserName());
            ps.setString(2, signinInfo.getPassword());
            ResultSet rs = ps.executeQuery();
            check = rs.next();
        } catch (SQLException ex) {
            Logger.getLogger(SigninDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return check;
    }

    private void loadDriver(String dbDriver) {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SigninDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
        } catch (SQLException ex) {
            Logger.getLogger(SigninDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }   
}
