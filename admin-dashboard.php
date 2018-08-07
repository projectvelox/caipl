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

    </div>
  </div>
</body>
</html>