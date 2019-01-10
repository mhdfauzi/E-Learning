/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.model;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author service
 */
public class UserModel {
 String nim,nip,id,name,password,role;

    
    DBConnection db = null;
    
    public UserModel(){
        db =new DBConnection();
    }
    
    public String getNim() {
        return nim;
    }

    public void setNim(String nim) {
        this.nim = nim;
    }

    public String getNip() {
        return nip;
    }

    public void setNip(String nip) {
        this.nip = nip;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    

    
    
    public List LoginStudent(String nim, String password) {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from student where nim='" + nim + "' and password='" + password + "'";
            rs = db.retrieveData(sql);
 
            while (rs.next()) {
                UserModel am = new UserModel();
                am.setNim(rs.getString("nim"));
                am.setPassword(rs.getString("password"));
                am.setName(rs.getString("name"));               
                data.add(am);
            }
            db.disconnect(rs);
        } catch (Exception a) {
            System.out.println("Cannot find the user, at :\n" + a);
        }
        return data;
    }
    
    public List LoginLecturer(String nip, String password) {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from lecturer where nip='" + nip + "' and password='" + password + "'";
            rs = db.retrieveData(sql);
 
            while (rs.next()) {
                UserModel am = new UserModel();
                am.setNip(rs.getString("nip"));
                am.setName(rs.getString("name"));               
                am.setPassword(rs.getString("password"));
                data.add(am);
            }
            db.disconnect(rs);
        } catch (Exception a) {
            System.out.println("Cannot find the user, at :\n" + a);
        }
        return data;
    }
    
    public List LoginAdministrator(String id, String password) {
        List data = new ArrayList();
        ResultSet rs = null;
        try {
            String sql = "select * from administrator where id='" + id + "' and password='" + password + "'";
            rs = db.retrieveData(sql);
 
            while (rs.next()) {
                UserModel am = new UserModel();
                am.setId(rs.getString("id"));
                am.setName(rs.getString("name"));               
                am.setPassword(rs.getString("password"));
                am.setRole(rs.getString("role")); 
                data.add(am);
            }
            db.disconnect(rs);
        } catch (Exception a) {
            System.out.println("Cannot find the user, at :\n" + a);
        }
        return data;
    }
    
    
    
    
    public List showstudent() {
        List<UserModel> data = new ArrayList<UserModel>();
        ResultSet rs = null;
 
        try {
            String sql = "select * from student order by username asc";
            rs = db.retrieveData(sql);
            while (rs.next()) {
                UserModel um = new UserModel();
                um.setId(rs.getString("id"));
                um.setNim(rs.getString("nim"));
                um.setPassword(rs.getString("password"));
                um.setName(rs.getString("name"));
                data.add(um);
 
            }
            db.disconnect(rs);
        } catch (Exception ex) {
            System.out.println("Error occured while displaying the data" + ex);
        }
        return data;
    }
    
    //TO SAVE THE DATA INTO TABLE "student"
    public void savestudent(){
    String sql="insert into student values('"+nim+"','"+name+"','"+password+"')";
    db.saveData(sql);
    }
    
    //TO UPDATE THE DATA IN TABLE "student"
    public void updatestudent(){
    String sql="update student SET name='"+name+"',password='"+password+"' WHERE username='"+nim+"'";
    db.saveData(sql);
    System.out.println(sql);
    }
    
    //TO EDIT THE DATA IN TABLE "student"
        public List cariUSERNAME() {
        List<UserModel> data = new ArrayList<UserModel>();
        ResultSet rs = null;
 
        try {
            String sql = "SELECT * FROM student WHERE username='"+nim+"'";
            rs = db.retrieveData(sql);
            while (rs.next()) {
                UserModel m = new UserModel();
                m.setNim(rs.getString("nim"));
                m.setPassword(rs.getString("password"));
                m.setName(rs.getString("name"));
                data.add(m);
 
            }
            db.disconnect(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalah Saat menampilkan Cari ID" + ex);
        }
        return data;
    }
        
    //TO DELETE THE DATA IN TABLE "student"
    public void deletestudent(){
        String sql="DELETE FROM student WHERE nim='"+nim+"'";
        db.saveData(sql);
        System.out.println("");
    }
    
    
    
    
    //TO DISPLAY ALL DATA FROM TABLE "lecturer"
    public List showlecturer() {
        List<UserModel> data = new ArrayList<UserModel>();
        ResultSet rs = null;
 
        try {
            String sql = "select * from lecturer order by nip asc";
            rs = db.retrieveData(sql);
            while (rs.next()) {
                UserModel um = new UserModel();
                um.setNip(rs.getString("nip"));
                um.setName(rs.getString("name"));
                um.setPassword(rs.getString("password"));
                data.add(um);
 
            }
            db.disconnect(rs);
        } catch (Exception ex) {
            System.out.println("Error occured while displaying the data" + ex);
        }
        return data;
    }
    
    //TO SAVE THE DATA INTO TABLE "lecturer"
    public void savelecturer(){
    String sql="insert into lecturer values('"+nip+"','"+name+"','"+password+"')";
    db.saveData(sql);
    }
 
    //TO UPDATE THE DATA IN TABLE "lecturer"
    public void updatelecturer(){
    String sql="update lecturer SET name='"+name+"', password='"+password+"' WHERE nip='"+nip+"'";
    db.saveData(sql);
    System.out.println(sql);
    }
    
    
    //TO EDIT THE DATA BY NIP FROM TABLE "lecturer"
        public List cariNIP() {
        List<UserModel> data = new ArrayList<UserModel>();
        ResultSet rs = null;
 
        try {
            String sql = "SELECT * FROM lecturer WHERE nip='"+nip+"'";
            rs = db.retrieveData(sql);
            while (rs.next()) {
                UserModel m = new UserModel();
                m.setNip(rs.getString("nip"));
                m.setName(rs.getString("name"));
                m.setPassword(rs.getString("password"));
                data.add(m);
 
            }
            db.disconnect(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalah Saat menampilkan Cari NIP" + ex);
        }
        return data;
    }
        
    //TO DELETE THE DATA FROM TABLE "lecturer"
    public void deletelecturer(){
        String sql="DELETE FROM lecturer WHERE nip='"+nip+"'";
        db.saveData(sql);
        System.out.println("");
    }
}