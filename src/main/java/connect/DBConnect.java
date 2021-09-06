/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnect {
    
     public static Connection getConnecttion() {
        Connection cons = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            //cons = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopmaytinh", "root", "admin");
            //cons = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/shopmaytinh", "root", "khang123");
            cons = DriverManager.getConnection("jdbc:mysql://mysql-19511-0.cloudclusters.net:19511/shopmaytinh", "root", "khang123");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cons;
    }
 
    public static void main(String[] args) {
        System.out.println(getConnecttion());
    }
    
}
