/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.model;

/**
 *
 * @author admin
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;

public class DBConnection {
    private Connection conn;
    private Statement st;
 
    public static void getConnection() {
        try {
            String db = "jdbc:mysql://localhost:3306/learning";
            String user = "root";
            String pass = ""; //dikosongkan hjika tidak ada password pada mysql anda
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(db, user, pass);
        } catch (Exception x) {
            System.out.println("Get connection error occured : " + x);
        }
    }
 
    public void Connection() {
        try {
            String db = "jdbc:mysql://localhost:3306/learning";
            String user = "root";
            String pass = ""; //dikosongkan hjika tidak ada password pada mysql anda
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(db, user, pass);
            st = conn.createStatement();
        } catch (Exception x) {
 
            System.out.println("Connection error occured : " + x);
        }
    }
 
    public void disconnect(ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            st.close();
            conn.close();
        } catch (Exception x) {
            System.out.println("Error occured while disconnect : " + x);
        }
    }
 
    public ResultSet retrieveData(String sql) {
        ResultSet rs = null;
        try {
            Connection();
            rs = st.executeQuery(sql);
        } catch (Exception x) {
            System.out.println("Retrieve data error : " + x);
        }
        return rs;
    }
    
    public void saveData(String sql) {
        try {
            Connection();
            st.executeUpdate(sql);
        } catch (Exception x) {
            System.out.println("Terjadi kesalahan simpan data : " + x);
        }
    }
}
