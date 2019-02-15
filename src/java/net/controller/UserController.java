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
import net.model.UserModel;

/**
 *
 * @author service
 */
@WebServlet(name = "UserController", urlPatterns = {"/UserController"})
public class UserController extends HttpServlet {

   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    String proses=request.getParameter("proses");
    String action=request.getParameter("action");
    
    //FOR STUDENT DATA
     if (proses.equals("input-student")){
        response.sendRedirect("addstudent.jsp");
     return;
  }
     else if(proses.equals("edit-student")){
            response.sendRedirect("editstudent.jsp?username="+request.getParameter("username"));
            return;
    }
     else if(proses.equals("hapus-student")){
            UserModel hm=new UserModel();
            hm.setNim(request.getParameter("nim"));
            hm.deletestudent();
            response.sendRedirect("datastudent.jsp");
        }
     
   //FOR LECTURER DATA  
     else if (proses.equals("input-lecturer")){
        response.sendRedirect("addlecturer.jsp");
     return;
  }
     else if(proses.equals("edit-lecturer")){
            response.sendRedirect("editlecturer.jsp?nip="+request.getParameter("nip"));
            return;
    }
     else if(proses.equals("hapus-lecturer")){
            UserModel hm=new UserModel();
            hm.setNip(request.getParameter("nip"));
            hm.deletelecturer();
            response.sendRedirect("datalecturer.jsp");
        }
    
    } 
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {  
        
        String data = request.getParameter("data");
        String proses = request.getParameter("proses");
        
        //FOR STUDENT
        if (data != null){
        if(data.equals("student")){
            UserModel um=new UserModel();
            um.setId(request.getParameter("id"));
            um.setNim(request.getParameter("nim"));
            um.setPassword(request.getParameter("password"));
            um.setName(request.getParameter("name"));
            if (proses.equals("input-student")){
                  um.savestudent();
             }
             else if (proses.equals("update-student")){
                    um.updatestudent();
                }
             else if(proses.equals("hapus-student")){
                    um.deletestudent();
                }
             response.sendRedirect("datastudent.jsp");
            }
        }
        
        //FOR LECTURER DATA
        if (data != null){
        if(data.equals("lecturer")){
            UserModel lm=new UserModel();
            lm.setNip(request.getParameter("nip"));
            lm.setName(request.getParameter("name"));
            lm.setPassword(request.getParameter("password"));
             if (proses.equals("input-lecturer")){
                  lm.savelecturer();
             }
             else if (proses.equals("update-lecturer")){
                    lm.updatelecturer();
                }
             else if(proses.equals("hapus-lecturer")){
                    lm.deletelecturer();
                }
             response.sendRedirect("datalecturer.jsp");
            }
        }
        
    }
     
}  