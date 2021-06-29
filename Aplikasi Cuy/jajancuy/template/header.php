<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>JAJAN CUY</title>

    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="./bootstrap/css/jumbotron.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">JAJAN CUY</a>
        </div>
<table>
        
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
              
              <li><a href="publisher_list.php"><span class="glyphicon glyphicon-paperclip"></span>&nbsp; Jenis Jajan</a></li>
              <li><a href="books.php"><span class="glyphicon glyphicon-book"></span>&nbsp; Semua Jajan</a></li>
              <li><a href="contact.php"><span class="glyphicon glyphicon-phone-alt"></span>&nbsp; Layanan Kontak</a></li>
              <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp; Keranjang</a></li>
            </ul>
        </div>
         </table>
      </div>

    </nav>
   
    <?php
      if(isset($title) && $title == "Index") {
    ?>
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container" >
          <center><h1>Selamat Datang Di Jajan Cuy</h1>
        <p class="lead">Semoga dalam proses jajan online ini memudahkan kalian dalam proses pembelian<br>
        Kami menyediakan berbagai jajanan enak untuk menemani aktivitas kalian<br>
        Selamat jajan :) </center>
        </p>
        
        
      </div>
    </div>
    
    <?php } ?>

    <div class="container" id="main">