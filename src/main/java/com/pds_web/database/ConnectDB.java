package com.pds_web.database;

import java.sql.*;

public class ConnectDB {
    
    private final String url = "jdbc:mysql://localhost:3306/"; //insert db
    private final String user = "root";
    private final String pass = "SqlSakalam765";
    
    public void connect(){
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pass);
            System.out.println("Connection successful");
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
