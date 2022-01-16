<%-- 
    Document   : Register
    Created on : Dec 18, 2021, 9:43:43 PM
    Author     : Dasanjith Gunaratne
--%>

<%@ include file ="header.jsp"%>

        <%
            String rd = (String)request.getAttribute("errMsg");
            if(rd == null){
                rd = "";
            }
            
        %>
        <center>
    <table>
        
        <form method="post" action="./register">
        <tr><td>Name:</td><td><input type="text" name="name" /></td></tr><br/>
        <tr><td> </td></tr>
        <tr><td>Email ID:</td><td><input type="text" name="email" /></td></tr><br/>
        <tr><td> </td></tr>
        <tr><td>Password:</td><td><input type="text" name="pass" /></td></tr><br/>
        
        <p><%=rd%></p>
            <tr><td> </td></tr>
        <tr><td><input type="submit" value="register" /></td></tr>
        </form>
    </table>
        </center>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<%@ include file ="footer.jsp"%>
