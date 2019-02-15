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

    <!-- isi -->
    <section class="isi" id="isi">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                <h2>VISI</h2>
                <hr>
                    <div class="col-sm-12 text-left">
                    <p>Pada tahun 2010 menjadi program studi vokasi dibidang Manajemen Informatika dalam aplikasi E-Commerce dan Otomatisasi Kantor.</p>
                    <p>Pada tahun 2020 menjadi program studi panutan dalam pengembangan dan penerapan teknologi multimedia dan E-Commerce.</p>
                    <p>Paradigma pembangunan pendidikan pada Prodi MI menempatkan sivitas akademika yang mampu berkiprah dalam bidang vokasi khususnya dalam bidang Manajemen Informatika.</p>
                    </div>
                </div> 
                  
                <div class="col-sm-12 text-center">
                <h2>MISI</h2>
                <hr>
                    <div class="col-sm-12 text-left">
                    <p>Mendidik mahasiswa agar profesional di bidang E-Commerce, otomatisasi kantor dan Teknologi Multimedia yang berjiwa penuh pengabdian serta memiliki rasa tanggung jawab yang besar terhadap masa depan bangsa dan negara Indonesia.</p>
                    <p>Menjadi pusat pemeliharaan, penelitian dan pengembangan ilmu pengetahuan terapan dibidang Manajemen infrormatika khususnya.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Tutup isi -->
    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.1.1.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>
