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
        <form method="post" action="./register">
        Name:<input type="text" name="name" /><br/>
        Email ID:<input type="text" name="email" /><br/>
        Password:<input type="text" name="pass" /><br/>
        
        <p><%=rd%></p>
            
        <input type="submit" value="register" />
        </form>
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
