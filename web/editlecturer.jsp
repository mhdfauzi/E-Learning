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
        <center><h1>Edit Lecturer Data</h1></center>
        <form action="UserController?data=lecturer&proses=update-lecturer" method="post">
            <table style="margin:20px auto;">
            <%
                String Nip = request.getParameter("nip");
                UserModel km = new UserModel();
                km.setNip(Nip);
                List<UserModel> data = new ArrayList<UserModel>();
                data = km.cariNIP(); 
                if (data.size() > 0) {
 
            %>
                <tr>
                    <td>NIP</td>
                    <td><input type="hidden" name="nip" value="<%=data.get(0).getNip()%>"></td>
		</tr>
		<tr>
                    <td>Name</td>
                    <td><input type="text" name="name" value="<%=data.get(0).getName()%>"></td>
		</tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="name" value="<%=data.get(0).getPassword()%>"></td>
		</tr>
		<tr>
                    <td>Address</td>
                    <td><input type="text" name="address" value="<%=data.get(0).getAddress()%>"></td>
		</tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" value="<%=data.get(0).getEmail()%>"></td>
		</tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="text" name="phone" value="<%=data.get(0).getPhone()%>"></td>
		</tr>
                <tr>
                    <td>Birthdate</td>
                    <td><input type="date" name="birthdate" value="<%=data.get(0).getBirthdate()%>"></td>
		</tr>
		<tr>
                    <td></td>
                    <td><input type="submit" value="Update"></td>
		</tr>
                  <%}%>
            </table>
          
	</form>	
    
        
        
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