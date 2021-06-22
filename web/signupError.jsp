<%-- 
    Document   : signupError
    Created on : Feb 12, 2021, 4:33:38 AM
    Author     : Arayom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up Error!</title>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            <h1>There is a missing information or it is a duplicate account. try again.</h1>
            <form action="signup.jsp" method="post">
                <input type="submit" value="Back" />
            </form>
        </div>
    </body>
</html>
