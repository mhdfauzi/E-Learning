/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.model;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ScoreModel {
    
String student_nim, student_name, course_id, course_name, lecturer_name, score;

DBConnection db=null;
    
    public ScoreModel(){
        db= new DBConnection();
    }

    public String getStudent_nim() {
        return student_nim;
    }

    public void setStudent_nim(String student_nim) {
        this.student_nim = student_nim;
    }

    public String getStudent_name() {
        return student_name;
    }

    public void setStudent_name(String student_name) {
        this.student_name = student_name;
    }

    public String getCourse_id() {
        return course_id;
    }

    public void setCourse_id(String course_id) {
        this.course_id = course_id;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getLecturer_name() {
        return lecturer_name;
    }

    public void setLecturer_name(String lecturer_name) {
        this.lecturer_name = lecturer_name;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

   


     public List show() {
        List<ScoreModel> data = new ArrayList<ScoreModel>();
        ResultSet rs = null;
 
        try {
            String sql = "select * from score order by student_nim asc";
            rs = db.retrieveData(sql);
            while (rs.next()) {
                ScoreModel um = new ScoreModel();
                um.setStudent_nim(rs.getString("student_nim"));
                um.setStudent_name(rs.getString("student_name"));
                um.setCourse_id(rs.getString("course_id"));
                um.setCourse_name(rs.getString("course_name"));
                um.setLecturer_name(rs.getString("lecturer_name"));
                um.setScore(rs.getString("score"));
                data.add(um);
 
            }
            db.disconnect(rs);
        } catch (Exception ex) {
            System.out.println("Error occured while displaying the data" + ex);
        }
        return data;
    }
    
    public void save(){
    String sql="insert into score values('"+student_nim+"','"+student_name+"','"+course_id+"','"+course_name+"','"+lecturer_name+"','"+score+"')";
    db.saveData(sql);
  }
 
    public void update(){
    String sql="update score SET student_nim='"+student_nim+"',student_name='"+student_name+"',course_id='"+course_name+"',lecturer_name='"+lecturer_name+"',score='"+score+"' WHERE student_nim='"+student_nim+"'";
    db.saveData(sql);
    System.out.println(sql);
}
    
        public List cariSID() {
        List<ScoreModel> data = new ArrayList<ScoreModel>();
        ResultSet rs = null;
 
        try {
            String sql = "SELECT * FROM score WHERE student_nim='"+student_nim+"'";
            rs = db.retrieveData(sql);
            while (rs.next()) {
                ScoreModel m = new ScoreModel();
                m.setStudent_nim(rs.getString("student_nim"));
                m.setStudent_name(rs.getString("student_name"));
                m.setCourse_id(rs.getString("course_id"));
                m.setCourse_name(rs.getString("course_name"));
                m.setLecturer_name(rs.getString("lecturer_name"));
                m.setScore(rs.getString("score"));
                data.add(m);
 
            }
            db.disconnect(rs);
        } catch (Exception ex) {
            System.out.println("Terjadi Kesalah Saat menampilkan Nilai Mahasiswa" + ex);
        }
        return data;
    }
    public void hapus(){
        String sql="DELETE FROM score WHERE student_nim='"+student_nim+"'";
        db.saveData(sql);
        System.out.println("");
    }

}
