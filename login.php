<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>
  <?php include 'view/partials/modal-login.php'?>  

  <!-- Navbar -->
  <?php include 'view/partials/navbar.php'?>      
  
  <div class="container mt-5">
    <div class="row">
      <div class="col-xs-12 col-md-6">
        <h2><a class="text-dark" href="index.php"><i class="material-icons ">keyboard_backspace</i></a> Log in</h2>
        <p>log in to you account</p>
        <form action="/action_page.php">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter your username">
          </div>
          <div class="form-group">
            <input type="password" class="form-control" placeholder="Enter your password">
          </div>
          <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#modal-login">Login to account</button>
        </form>
        
      </div>
      <div class="col-xs-12 col-md-6">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img class="first-slide" src="assets/images/slider/4.png" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="second-slide" src="assets/images/slider/5.png" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="third-slide" src="assets/images/slider/6.png" alt="Third slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript">
    $('.carousel').carousel()
  </script>
</body>
</html>