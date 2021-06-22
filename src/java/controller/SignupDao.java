/**
 *
 * @author Arayom
 */
package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SignupDao {
    private final String dbUrl = "jdbc:derby://localhost:1527/userDatabase";
    private final String dbUserName = "root";
    private final String dbPassword = "root";
    private final String dbDriver = "com.mysql.cj.jdbc.Driver";
    
    public Boolean validate(UserInfo userInfo){
        loadDriver(dbDriver);
        Connection conn = getConnection();
        String sql = "insert into userInfo VALUES(?,?,?,?,?,?)";
        PreparedStatement ps;
        boolean output = true;
        
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, userInfo.getFirstName());
            ps.setString(2, userInfo.getLastName());
            ps.setString(3, userInfo.getEmail());
            ps.setString(4, userInfo.getGender());
            ps.setString(5, userInfo.getUserName());
            ps.setString(6, userInfo.getPassword());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(SignupDao.class.getName()).log(Level.SEVERE, null, ex);
            output = false;
        }
        return output;
    }

    public void loadDriver(String dbDriver) {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SignupDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
        } catch (SQLException ex) {
            Logger.getLogger(SignupDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
 
}
