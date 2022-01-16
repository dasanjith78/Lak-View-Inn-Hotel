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

public class dbCon 
     {
        String url = "jdbc:mysql://localhost:3306/hotel";
        String driver = "com.mysql.jdbc.Driver";
        Statement st;
        
        
         public  void addData(String name, String email,String pass) {
       ConnectDB()  ;
        String query="INSERT INTO guest(guestname,email,password) VALUES('"+name+"','"+email+"','"+pass+"')"; 
        
        
            try {
                st.executeUpdate(query);
            } catch (SQLException ex) {
                Logger.getLogger(dbCon.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
         
        
         
         public List checkLogin(String email, String pass) {
        
          ConnectDB();
               
        List loginList=new ArrayList();
        ConnectDB();
        String query="SELECT * FROM guest where email LIKE '%"+email+"%'";
        
            try {
                ResultSet rs = st.executeQuery(query);
                
                
                 while(rs.next())
            {
               
                loginList.add(rs.getString("email"));
                loginList.add(rs.getString("password"));   
            }
                
            } catch (SQLException ex) {
                Logger.getLogger(dbCon.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        return loginList;
        
        
    }
         
         
         
         private void ConnectDB() {
       
         try {
             Class.forName(driver);
             Connection con=DriverManager.getConnection(url, "root","");
               st  = con.createStatement();
         } catch (ClassNotFoundException | SQLException ex) {
             Logger.getLogger(dbCon.class.getName()).log(Level.SEVERE, null, ex);
         }
    
     }
         
        
       
     
                
}
