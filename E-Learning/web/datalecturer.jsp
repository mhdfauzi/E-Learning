<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
    
  <center><h1>Data of Lecturers</h1></center>
  <table style="margin:20px auto;" border="1">
	<tr>
            <th>No</th>
            <th>NIP</th>
            <th>Name</th>
            <th>Password</th>
            <th>Address</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Birthdate</th>
            <th>Action</th>
	</tr>
        
        <%
            UserModel km = new UserModel();
            List<UserModel> data = new ArrayList<UserModel>();
            String ket = request.getParameter("ket");
            if (ket == null) {
                data = km.showlecturer();
            } 
            for (int x = 0; x < data.size(); x++) {
        %>
        
        <tr>
            <td><%=x + 1%></td>
            <td><%=data.get(x).getNip()%></td>
            <td><%=data.get(x).getName()%></td>
            <td><%=data.get(x).getPassword()%></td>
            <td><%=data.get(x).getAddress()%></td>
            <td><%=data.get(x).getEmail()%></td>
            <td><%=data.get(x).getPhone()%></td>
            <td><%=data.get(x).getBirthdate()%></td>
            <td>
                <a href="UserController?proses=edit-lecturer&nip=<%=data.get(x).getNip()%>">Edit</a>
                <a href="UserController?proses=hapus-lecturer&nip=<%=data.get(x).getNip()%>">Delete</a>
            </td>
        </tr>
        <%}%>
    </table>
    
    <center>
    <a class="tambah" href="UserController?proses=input-lecturer">Add</a>
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