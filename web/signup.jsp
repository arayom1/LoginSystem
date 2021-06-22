<%-- 
    Document   : signup
    Created on : Feb 1, 2021, 11:07:24 PM
    Author     : Arayom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            <%
                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//for http1.1
                response.setHeader("Pragma", "no-cache");//for http 1.0
                response.setDateHeader("Expires", 0); // for proxies
            %>
            <h1>SIGN UP FORM</h1>
            <form action="SignupServlet" method="post">
                <table>
                    <tbody>
                        <tr>
                            <td>First Name: </td>
                            <td><input type="text" name="firstName" required/></td>
                        </tr>
                        <tr>
                            <td>Last Name: </td>
                            <td><input type="text" name="lastName" required/></td>
                        </tr>
                        <tr>
                            <td>Email: </td>
                            <td><input type="text" name="email" required/></td>
                        </tr>
                        <tr>
                            <td rowspan="2">Gender: </td>
                            <td><input type="radio" name="gender" value="Male" />Male</td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="gender" value="Female" />Female</td>
                        </tr>
                        <br>
                        <tr>
                            <td>User Name: </td>
                            <td><input type="text" name="userName" required/></td>
                        </tr>
                        <tr>
                            <td>Password: </td>
                            <td><input type="password" name="password" required/></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td><input type="submit" value="Sign up" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="reset" value="Reset" /></td>
                        </tr>
                    </tbody>
                </table>
            </form> 
        </div>
    </body>
</html>

