<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Learning Curve</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style type="text/css">
      body{
        background-image: url('img/wall.jpg');
      }

      .coverhome {
        height: 200px;
        width: 100%;
        background-image: url('img/poli3.png');
        box-shadow: 0 0 3px 3px rgba(0,0,0,.3);
       }
    </style>
  </head>
  <body>

    <br>
    <br>
    <br>
      

  
<!-- Navbar -->
<%@include file='html/navbar.html'%>
<!-- Tutup Navbar --> 
    
<br>
<br>
<br>

<h2><center>Lecturer Login</center></h2>
<hr>
<form method="post" action="Login?proses=loginlecturer">
<div class="container">
    <table>
        <tr>
            <td><b>NIP </b></td>
            <td><b>:</b></td>
            <td><input type="text" placeholder="Enter NIP" name="nip" required></td>
        </tr>
        <tr>  
            <td><b>Password</b></td>
            <td><b>:</b></td>
            <td><input type="password" placeholder="Enter Password" name="password" required></td>
        </tr>
        <tr>
            <td><button type="submit">Login</button></td>
        </tr>
  </table>
</div>
</form>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.1.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>
