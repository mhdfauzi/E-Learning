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

/**
 *
 * @author service
 */
@WebServlet(name = "HomeController", urlPatterns = {"/HomeController"})
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    String proses=request.getParameter("proses");
    String action=request.getParameter("action");
    
    //FOR STUDENT DATA
     if (proses.equals("news")){
         
        response.sendRedirect("menu/news.jsp");
     return;
  }
     else if(proses.equals("edit-student")){
            response.sendRedirect("editstudent.jsp?nim="+request.getParameter("nim"));
            return;
    }
    }
    
    
   
} 
