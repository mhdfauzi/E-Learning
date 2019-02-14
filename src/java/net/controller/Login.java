/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.model.UserModel;


@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
 
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String proses= request.getParameter("proses");
        if (proses.equals("logout")) {
            HttpSession session = request.getSession();
            session.invalidate();
            response.sendRedirect("loginstudent.jsp");
        }
 
    }
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String proses = request.getParameter("proses");
 
        
        if (proses.equals("loginstudent")) {
            String id = request.getParameter("id");
            String nim = request.getParameter("nim");
            String name = request.getParameter("name");
            String pass = request.getParameter("password");
            if (pass == null || pass.equals("")) {   //validasi apabila field belum diisi
                response.sendRedirect("loginstudent.jsp");
            } else {
                UserModel pm = new UserModel();
                List<UserModel> datalogin = new ArrayList<UserModel>();
 
                
                
                datalogin = pm.LoginStudent(nim, pass);
                if (datalogin.isEmpty()) { //validasi apabila username dan password salah
                    response.sendRedirect("loginstudent.jsp"); 
                } else {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("id", datalogin.get(0).getId());
                    session.setAttribute("nim", datalogin.get(0).getNim());
                    session.setAttribute("password", datalogin.get(0).getPassword());
                    session.setAttribute("name", datalogin.get(0).getName());
                    if (datalogin.get(0).getNim().equals(nim)) {
                        response.sendRedirect("student.jsp");
                    } else {
                        response.sendRedirect("loginstudent.jsp");
                    }
                }
            }
        }
        
        
        
        else if (proses.equals("loginlecturer")) {
            String nip = request.getParameter("nip");
            String name = request.getParameter("name");
            String pass = request.getParameter("password");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String birthdate = request.getParameter("birthdate");
            
            if (pass == null || pass.equals("")) {   //validasi apabila field belum diisi
                response.sendRedirect("loginlecturer.jsp");
            } else {
                UserModel pm = new UserModel();
                List<UserModel> datalogin = new ArrayList<UserModel>();
 
                
                
                datalogin = pm.LoginLecturer(nip, pass);
                if (datalogin.isEmpty()) { //validasi apabila username dan password salah
                    response.sendRedirect("loginlecturer.jsp"); 
                } else {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("nip", datalogin.get(0).getNip());
                    session.setAttribute("name", datalogin.get(0).getName());
                    session.setAttribute("password", datalogin.get(0).getPassword());
                    if (datalogin.get(0).getNip().equals(nip)) {
                        response.sendRedirect("lecturer.jsp");
                    } else {
                        response.sendRedirect("loginlecturer.jsp");
                    }
                }
            }
        }
        
        else if (proses.equals("loginadministrator")) {
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String pass = request.getParameter("password");
            String role = request.getParameter("role");
            if (pass == null || pass.equals("")) {   //validasi apabila field belum diisi
                response.sendRedirect("loginadministrator.jsp");
            } else {
                UserModel pm = new UserModel();
                List<UserModel> datalogin = new ArrayList<UserModel>();
 
                
                
                datalogin = pm.LoginAdministrator(id, pass);
                if (datalogin.isEmpty()) { //validasi apabila username dan password salah
                    response.sendRedirect("loginadministrator.jsp"); 
                } else {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("id", datalogin.get(0).getId());
                    session.setAttribute("name", datalogin.get(0).getName());
                    session.setAttribute("role", datalogin.get(0).getRole());
                    if (datalogin.get(0).getRole().equals("Administrator")) {
                        response.sendRedirect("administrator.jsp");
                    } else {
                        response.sendRedirect("loginadministrator.jsp");
                    }
                }
            }
        }
        
        
    }
}