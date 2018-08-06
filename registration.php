<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>
  <!-- Navbar -->
  <?php include 'view/partials/navbar.php'?>      
  
  <div class="container mt-4">
    <div class="row">
      <div class="col-xs-12 col-md-6">
        <h2><a href="index.php"><i class="material-icons ">keyboard_backspace</i></a> Account Registration</h2>
        <p>Sign up for your very own account</p>
        <form action="/action_page.php">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter your student id">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter your username">
          </div>
          <div class="form-group">
            <input type="password" class="form-control" placeholder="Enter your password">
          </div><hr>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter your first name">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter your middle name">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter your last name">
          </div>
          <button type="submit" class="btn btn-primary">Register account</button>
        </form>
      </div>  
    </div>
  </div>
</body>
</html>