<%-- 
    Document   : nesignup
    Created on : Dec 11, 2021, 7:26:51 PM
    Author     : Dasanjith Gunaratne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>login form</title>
    </head>
    <body>
        <form method="post" action="login">
        Email ID:<input type="text" name="email" /><br/>
        Password:<input type="text" name="pass" /><br/>
        <input type="submit" value="login" /><br/>
        <a href="Register.jsp"> Click here to register </a>
        </form>
    </body>
</html>
