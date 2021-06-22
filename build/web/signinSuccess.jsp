<%-- 
    Document   : signinSuccess
    Created on : Feb 2, 2021, 1:31:56 AM
    Author     : Arayom
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign in Success</title>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="success">
            <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//for http1.1
            response.setHeader("Pragma", "no-cache");//for http 1.0
            response.setDateHeader("Expires", 0); // for proxies
            response.setDateHeader("Expires", -1);
            %>
         
            <h1>Hello, Welcome to your Account!!</h1>
            <h3>You have signed in successfully!</h3>

            <%
                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//for http1.1
                response.setHeader("Pragma", "no-cache");//for http 1.0
                response.setDateHeader("Expires", 0); // for proxies

                String dbUrl = "jdbc:derby://localhost:1527/userDatabase";
                String dbUserName = "root";
                String dbPassword = "root";
                String dbDriver = "com.mysql.cj.jdbc.Driver";
                String sql = "select * from userInfo where username = '+userName+'";
                String userName = (String)session.getAttribute("userName");

                try{
                    Class.forName(dbDriver);
                    System.out.println("-------Connecting to database...");
                    Connection conn = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
                    System.out.println("--------Creating statement...");
                    //Statement st = conn.createStatement();
                    PreparedStatement ps = conn.prepareStatement("select *from userInfo where userName= ?");
                    ps.setString(1, userName);
                    System.out.println("--------Executing query...");
                    ResultSet rs = ps.executeQuery();
                    System.out.println("--------query Executed.");
                    System.out.println("--------printing ...");
                    System.out.println("Welcome " + userName);

                    out.println("Hi " + userName + "<br/>"); 
                    out.println("<br/>"); 
                    out.println("Your information are summerized down below." + "<br/>"); 
                    out.println("<br/>"); 

                    while(rs.next()){
                        System.out.println("Welcome again" + userName);
                        out.println("<b>First Name: </b>"); 
                        out.print(rs.getString(1));
                        out.println("<br/>");

                        out.println("<b>Last Name: </b>"); 
                        out.print(rs.getString(2));
                        out.println("<br/>");

                        out.println("<b>Email: </b>"); 
                        out.print(rs.getString(3));
                        out.println("<br/>");

                        out.println("<b>Gender: </b>"); 
                        out.print(rs.getString(4));
                        out.println("<br/>");

                        out.println("<b>User Name: </b>"); 
                        out.print(rs.getString(5));
                        out.println("<br/>");
                    }

                }catch(Exception p){
                    System.out.println("****************Error******************");
                    System.out.println(p);
                    System.out.println("****************Error******************");
                }
            %>
            <form action='confirm.jsp' method='post'>
            <input type = 'submit' value = 'Sign out' />
            </form> 
        </div>
    </body>
</html>
