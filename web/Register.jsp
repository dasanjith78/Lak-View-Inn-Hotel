<%-- 
    Document   : Register
    Created on : Dec 18, 2021, 9:43:43 PM
    Author     : Dasanjith Gunaratne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register form</title>
    </head>
    <body>
        <form method="post" action="./register">
        Name:<input type="text" name="name" /><br/>
        Email ID:<input type="text" name="email" /><br/>
        Password:<input type="text" name="pass" /><br/>
        <input type="submit" value="register" />
        </form>
    </body>
</html>
