<%-- 
    Document   : confirm
    Created on : Feb 12, 2021, 8:41:07 PM
    Author     : Arayom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm</title>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//for http1.1
            response.setHeader("Pragma", "no-cache");//for http 1.0
            response.setDateHeader("Expires", 0); // for proxies
            response.setDateHeader("Expires", -1);
            session.invalidate();
            
        %>
        <div class="container">
            <h1>Are you sure you want to sign out?</h1>
            <form action='signout.jsp' method='post'>
                <input type = 'submit' value = 'Sign out' />
            </form> 
        </div>
    </body>
</html>
