<%@page import="net.model.koneksi"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Student Page</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style type="text/css">
      body{
        background-image: url('img/wallpaper.jpg');
      }
       
      .footer {
        position: fixed;
        left: 0;
        bottom: 0;
        width: 100%;
        color: gray;
        background-color: whitesmoke;
        text-align: left;
        }
    </style>
  </head>
  <body>

    <br>
    <br>
    <br>
      

  
<!-- Navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
          <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
              <a class="navbar-brand" href="#">Lecturer</a>
              </div>
            
        
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="lecturer.jsp"><i class="glyphicon glyphicon-home"></i> Home</a></li>

              <li>
                <a href="profilelecturer.jsp"><i class="glyphicon glyphicon-user"></i> Profile</a>
              </li>

              <li>
                <a href="#"><i class="glyphicon glyphicon-book"></i> Student's Score</a>
              </li>
              
              <li>
                <a href="assignmentdownload.jsp"><i class="glyphicon glyphicon-download-alt"></i> Download</a>
              </li>
              
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-upload"></i> Upload <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="material.jsp">Material</a></li>
                </ul>
                </div>    
            </div>
    </nav>
    <!-- Close Navbar -->

    <br>
    <br>
        <h2>Download Document File</h2>
        
        <br/>
        <table style="margin:20px auto;" border="1" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <tr><th>File Name</th>
                    <th>Uploaded By</th>
                    <th>File Type</th>
                    <th>Upload Time</th>
                    <th>Action</th></tr>
            <%
                ResultSet rs = koneksi.getResultFromSqlQuery("select doc_id,filename,type, upload_time, upload_by from assignment");
                int count =0;
                while(rs.next())
                {
                   out.println("<tr>"
                           + "<td>"+rs.getString(2)+"</td>"
                           + "<td>"+rs.getString(5)+"</td>"
                           + "<td>"+rs.getString(3)+"</td>"
                           + "<td>"+rs.getString(4)+"</td>"
                           + "<td><a href='downloadassignment.jsp?Doc_id="+rs.getInt(1) +"'> Download </a></td>"                                                      
                           + "</tr>");
                   count++;
                }
                rs.close();
                koneksi.CloseConnection();
                if(count==0)
                {
                    out.println("<tr><td colspan='4'> No File Found..!! </td></tr>");
                }
            %>        
            </tr>
        </table>
            
             <%
            if ((session.getAttribute("nip") == null) || (session.getAttribute("nip") == "")) {
                response.sendRedirect("home.jsp");
        %>
        <%
            }
        %>
        
             <div class="footer">
        <i class="glyphicon glyphicon-user"></i>
  <span><h7><%=session.getAttribute("name")%> </h7></span>
  <a href="Login?proses=logout">Logout</a>
  
</div>
  
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-3.1.1.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>