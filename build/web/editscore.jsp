<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="net.model.ScoreModel"%>

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
        
        table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 15px;
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
              <a class="navbar-brand" href="#">Administrator</a>
              </div>
            
        
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="administrator.jsp"><i class="glyphicon glyphicon-home"></i> Home</a></li>

              <li>
                <a href="score.jsp"><i class="glyphicon glyphicon-book"></i> Student's Score</a>
              </li>
              
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-stats"></i> Data <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="datastudent.jsp">Student</a></li>
                  <li><a href="datalecturer.jsp">Lecturer</a></li>
                </ul>
                </div>    
            </div>
    </nav>
    <!-- Close Navbar --> 
        
       <br>
        <br>
        <center><h1>Edit Student Score</h1></center>
        <form action="ScoreController?data=score&proses=update-score" method="post">
            <table style="margin:20px auto;">
            <%
                String Student_nim = request.getParameter("student_nim");
                ScoreModel km = new ScoreModel();
                km.setStudent_nim(Student_nim);
                List<ScoreModel> data = new ArrayList<ScoreModel>();
                data = km.cariSID(); 
                if (data.size() > 0) {
 
            %>
                <tr>
                    <td>NIM</td>
                    <td><input type="text" name="student_nim" value="<%=data.get(0).getStudent_nim()%>"></td>
		</tr>
		<tr>
                    <td>Student Name</td>
                    <td><input type="text" name="student_name" value="<%=data.get(0).getStudent_name()%>"></td>
		</tr>
                <tr>
                    <td>Course ID</td>
                    <td><input type="text" name="course_id" value="<%=data.get(0).getCourse_id()%>"></td>
		</tr>
		<tr>
                    <td>Course Name</td>
                    <td><input type="text" name="course_name" value="<%=data.get(0).getCourse_name()%>"></td>
		</tr>
                <tr>
                    <td>Lecturer Name</td>
                    <td><input type="text" name="lecturer_name" value="<%=data.get(0).getLecturer_name()%>"></td>
		</tr>
                <tr>
                    <td>Score</td>
                    <td><input type="text" name="score" value="<%=data.get(0).getScore()%>"></td>
		</tr>
		<tr>
                    <td></td>
                    <td><input type="submit" value="Update"></td>
		</tr>
                  <%}%>
            </table>
          
	</form>	
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-3.1.1.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
