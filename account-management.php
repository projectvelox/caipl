<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>
  <?php include 'view/partials/modal-login.php'?>  

  <!-- Navbar -->
  <?php include 'view/partials/navbar.php'?>      
  
  <div class="container mt-5">
    <h2><a class="text-dark" href="admin-dashboard.php"><i class="material-icons">keyboard_backspace</i></a> Account Management</h2><hr>
    
    <?php include "view/partials/table-accounts.php" ?>
    
  </div>
</body>
</html>