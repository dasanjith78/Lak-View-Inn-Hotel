<%-- 
    Document   : Register
    Created on : Dec 18, 2021, 9:43:43 PM
    Author     : Dasanjith Gunaratne
--%>

<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register form</title>
    </head>
    <body>
        <%
            String rd = (String)request.getAttribute("errMsg");
            if(rd == null){
                rd = "";
            }
            
        %>
        <form method="post" action="./register">
        Name:<input type="text" name="name" /><br/>
        Email ID:<input type="text" name="email" /><br/>
        Password:<input type="text" name="pass" /><br/>
        
        <p><%=rd%></p>
            
        <input type="submit" value="register" />
        </form>
    </body>
</html>
