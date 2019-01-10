<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="net.model.UserModel"%>
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
       
      .card {
        box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
        transition: 0.3s;
        width: 40%;
        background-color: whitesmoke;
        }


      .card:hover {
        box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
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


<div class="card" >
  
  <div class="container">
    <h4><b><%=session.getAttribute("name")%></b></h4> 
        <p>NIM      :<%=session.getAttribute("nim")%></p>
        <p>Address  :<%=session.getAttribute("address")%></p>
        <p>Email    :<%=session.getAttribute("email")%></p>
        <p>Phone    :<%=session.getAttribute("phone")%></p>
        <p>Birthdate:<%=session.getAttribute("birthdate")%></p>
  </div>
</div>
  


  
    <center>
    <a class="tambah" href="UserController?proses=edit-user">Edit</a>
    </center>
    
  
        
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
