/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.sql.*;
public class dbconn 
     {
    
    
            public Connection createConnection() throws ClassNotFoundException, SQLException
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
                return con;
                
            }
         
                public  boolean checkUser(String email,String pass) 
                {
                  boolean st =false;
                  try {

                      
                      PreparedStatement ps = createConnection().prepareStatement("select * from student where email=? and password=?");
                      ps.setString(1, email);
                      ps.setString(2, pass);
                      ResultSet rs =ps.executeQuery();
                      st = rs.next();

                  }
                    catch(Exception e) {
                        e.printStackTrace();
                    }
        
                     return st;   
    
               }
                
                
             public  boolean regUser(String name, String email,String pass) throws ClassNotFoundException, SQLException 
                {
                    PreparedStatement ps = createConnection().prepareStatement("insert into student values(?,?,?)");
                    ps.setString(1, name);
                    ps.setString(2, email);
                    ps.setString(3, pass);
                    int i = ps.executeUpdate();

                    if(i > 0) 
                        return true;
                      else
                        return false;
                    
                }

                
                
                
}
