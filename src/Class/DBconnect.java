

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Class;



import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;



public class DBconnect {

    public static Connection getConnection() throws ClassNotFoundException{
    Connection con = null;
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("Driver Loaded");
        con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/System_Details", "root", "");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/System_Details", "root", "");
        
        
        System.out.println("Successfully Connected to database");
        
            
              
          
        }
        catch(SQLException e){
          
          System.out.print(e.getMessage());
        }
          
          
          
      return con;    
    }


    
}
