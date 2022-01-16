<%@ include file ="header.jsp"%>
<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin</title>
    </head>
    <br>
    <style>
        
table {
  width: 100%;
  border: 1px solid black;
}
</style>
    <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/hotel","root","");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select roomid,idguest,roomtype,price from bookedroom;");
    %>
    <body>
        
        <table border=1 align=center style="text-align:center">
      <thead>
          <tr>
             <th>roomid</th>
             <th>guestid</th>
             <th>roomtype</th>
             <th>price</th>
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("roomid") %></td>
                <td><%=rs.getString("idguest") %></td>
                <td><%=rs.getString("roomtype") %></td>
                <td><%=rs.getString("price") %></td>
            </tr>
            <%}%>
           </tbody>
        </table>
    </body>     
        
     <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }

    %>     
            
        
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
<br>
<br>
<br>
<br>
<%@ include file ="footer.jsp"%>
