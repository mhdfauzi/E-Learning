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

    </style>
  </head>
  <body>

    <br>
    <br>
    <br>
      

  
<!-- Navbar -->
<%@include file='html/navbar.html'%>
<!-- Tutup Navbar --> 
    
    
    <!-- isi -->
    <section class="isi" id="isi">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                <h2>CONTACT </h2>
                <hr>
                    <div class="col-sm-12 text-left">
                    <p><i class="glyphicon glyphicon-map-marker"></i> Jl. Almamater No. 1, Padang Bulan, Medan Baru, Kota Medan, Sumatera Utara 20155</p>
                    <p><i class="glyphicon glyphicon-phone"></i> Phone: +62 61 8210436</p>
                    <p><i class="glyphicon glyphicon-envelope"></i> Email: polmed@polmed.ac.id</p>
                    </div> 
                </div>
            </div>
        </div>
    </section>
    <!-- Tutup isi -->
   
<!-- End Page Content -->
</div>

        <!-- Add Google Maps -->
<div id="googleMap" style="height:400px;" class="w3-grayscale-max"></div>
<script>
function myMap() {
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCn-H8cVvnWQNnmJZE__1wCVG5ooPIPdyc"></script>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.1.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>