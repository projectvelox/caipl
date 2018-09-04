<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>
  <!-- Navbar -->
  <?php include 'view/partials/navbar.php'?>      
  
  <div class="container mt-5">
    <h2>User Dashboard - Welcome <?php echo $_SESSION['account']['firstname'] ?></h2><hr>
    <div class="row">
      <div class="col-xs-6 col-md-2 caipl-dashboard-icons">
        <a href="account-profile.php" class="text-dark">
          <img src="assets/images/icons/account-management.png">
          <h4>Profile</h4>
        </a>
      </div>
    </div>
  </div>
</body>
</html>