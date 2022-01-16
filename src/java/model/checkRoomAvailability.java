/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Dasanjith Gunaratne
 */
public class checkRoomAvailability extends Thread{
    
    String url = "jdbc:mysql://localhost:3306/hotel";
String driver  = "com.mysql.jdbc.Driver";
Statement st;
    public String availibility(int rooms,String roomType) {
      String data;
      String count= "";
        ConnectDB();
         // List booklist=new ArrayList();
       String query="SELECT if("+rooms+"<=(SELECT count(roomid) from hotel.rooms where availability='yes' AND roomtype='"+roomType+"'),'available','not available')"; 
          
//       String flag="false";
          try {
                ResultSet rs = st.executeQuery(query);
                
                rs.next();
                count = rs.getString(1);
               
            
                
            } catch (SQLException ex) {
                Logger.getLogger(checkRoomAvailability.class.getName()).log(Level.SEVERE, null, ex);
            }
         
      return count;
    }

    
    
      private void ConnectDB() {
       
         try {
             Class.forName(driver);
             Connection con=DriverManager.getConnection(url, "root","");
               st  = con.createStatement();
         } catch (ClassNotFoundException | SQLException ex) {
             Logger.getLogger(checkRoomAvailability.class.getName()).log(Level.SEVERE, null, ex);
         }
    
     }
    
}
