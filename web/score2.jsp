<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="net.model.ScoreModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
              <a class="navbar-brand" href="#">Student</a>
              </div>
            
        
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="student.jsp"><i class="glyphicon glyphicon-home"></i> Home</a></li>

              <li>
                <a href="profilestudent.jsp"><i class="glyphicon glyphicon-user"></i> Profile</a>
              </li>

              <li>
                <a href="score2.jsp"><i class="glyphicon glyphicon-book"></i> Score</a>
              </li>
              
              <li>
                <a href="materialdownload.jsp"><i class="glyphicon glyphicon-download-alt"></i> Download</a>
              </li>
              
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-upload"></i> Upload <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="assignment.jsp">Assignment</a></li>
                </ul>
                </div>    
            </div>
    </nav>
    <!-- Close Navbar --> 
    
    
        <center><h1>Score of Students</h1></center>
        <table style="margin:20px auto;" border="1" cellpadding="0" cellspacing="0" width="100%">
	<tr>
            <th>No</th>
            <th>NIM</th>
            <th>Student Name</th>
            <th>Course ID</th>
            <th>Course Name</th>
            <th>Lecturer Name</th>
            <th>Score</th>
	</tr>
        
        <%
            ScoreModel km = new ScoreModel();
            List<ScoreModel> data = new ArrayList<ScoreModel>();
            String ket = request.getParameter("ket");
            if (ket == null) {
                data = km.show();
            } 
            for (int x = 0; x < data.size(); x++) {
        %>
        
        <tr>
            <td><%=x + 1%></td>
            <td><%=data.get(x).getStudent_nim()%></td>
            <td><%=data.get(x).getStudent_name()%></td>
            <td><%=data.get(x).getCourse_id()%></td>
            <td><%=data.get(x).getCourse_name()%></td>
            <td><%=data.get(x).getLecturer_name()%></td>
            <td><%=data.get(x).getScore()%></td>
        </tr>
        <%}%>
    </table>
        
<%
            if ((session.getAttribute("nim") == null) || (session.getAttribute("nim") == "")) {
                response.sendRedirect("loginstudent.jsp");
        %>
        <%
            }
        %>
        
        
        
        <div class="footer">
        <i class="glyphicon glyphicon-user"></i>
  <span><h7><%=session.getAttribute("name")%> </h7></span>
  <a href="Login?proses=logout">Logout</a>
  
</div>
    </body>
</html>
