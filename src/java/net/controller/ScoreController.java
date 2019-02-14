/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.model.ScoreModel;

/**
 *
 * @author admin
 */
@WebServlet(name = "ScoreController", urlPatterns = {"/ScoreController"})
public class ScoreController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    String proses=request.getParameter("proses");
    String action=request.getParameter("action");
     if (proses.equals("input-score")){
        response.sendRedirect("addscore.jsp");
     return;
  }
     else if(proses.equals("edit-score")){
            response.sendRedirect("editscore.jsp?student_nim="+request.getParameter("student_nim"));
            return;
    }
     else if(proses.equals("hapus-score")){
            ScoreModel hm=new ScoreModel();
            hm.setStudent_nim(request.getParameter("student_nim"));
            hm.hapus();
            response.sendRedirect("score.jsp");
        }
    } 
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {  
        
        String data = request.getParameter("data");
        String proses = request.getParameter("proses");
        
        if (data != null){
        if(data.equals("score")){
            ScoreModel um=new ScoreModel();
            um.setStudent_nim(request.getParameter("student_nim"));
            um.setStudent_name(request.getParameter("student_name"));
            um.setCourse_id(request.getParameter("course_id"));
            um.setCourse_name(request.getParameter("course_name"));
            um.setLecturer_name(request.getParameter("lecturer_name"));
            um.setScore(request.getParameter("score"));
             if (proses.equals("input-score")){
                  um.save();
             }
             else if (proses.equals("update-score")){
                    um.update();
                }
             else if(proses.equals("hapus-score")){
                    um.hapus();
                }
             response.sendRedirect("score.jsp");
            }
        }
    }
     
}  
