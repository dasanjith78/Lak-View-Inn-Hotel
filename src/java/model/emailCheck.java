/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dasanjith Gunaratne
 */
public class emailCheck {
    
    String url = "jdbc:mysql://localhost:3306/hotel";
        String driver = "com.mysql.jdbc.Driver";
        Statement st;
    
    public boolean viewdata(String email) {
       
       ConnectDB() ;
        
           String query="SELECT * FROM guest where email LIKE '%"+email+"%' ";
         boolean flag=false;
            try {
                ResultSet rs = st.executeQuery(query);
                
              if(rs.next())
              {
                  flag=true;
              }
             
               
            } catch (SQLException ex) {
                Logger.getLogger(emailCheck.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        return flag;
        
        
    }
    
      private void ConnectDB() {
       
         try {
             Class.forName(driver);
             Connection con=DriverManager.getConnection(url, "root","");
               st  = con.createStatement();
         } catch (ClassNotFoundException | SQLException ex) {
             Logger.getLogger(emailCheck.class.getName()).log(Level.SEVERE, null, ex);
         }
    
     }
}
