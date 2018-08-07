<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>
  <?php include 'view/partials/modal-login.php'?>  

  <!-- Navbar -->
  <?php include 'view/partials/navbar.php'?>      
  
  <div class="container mt-5">
    <h2>Admin Dashboard</h2><hr>
    <div class="row">
      <div class="col-xs-6 col-md-2 caipl-dashboard-icons">
        <a href="account-management.php" class="text-dark">
          <img src="assets/images/icons/account-management.png">
          <h4>Account</h4>
        </a>
      </div>
      <div class="col-xs-6 col-md-2 caipl-dashboard-icons">
        <a href="#" class="text-dark">
          <img src="assets/images/icons/lesson-create.png">
          <h4>Create Lessons</h4>
        </a>
      </div>
      <div class="col-xs-6 col-md-2 caipl-dashboard-icons">
        <a href="#" class="text-dark">
          <img src="assets/images/icons/lesson-view.png">
          <h4>View Lessons</h4>
        </a>
      </div>
      <div class="col-xs-6 col-md-2 caipl-dashboard-icons">
        <a href="#" class="text-dark">
          <img class="" src="assets/images/icons/quiz-create.png">
          <h4>Create Quizzes</h4>
        </a>
      </div>
      <div class="col-xs-6 col-md-2 caipl-dashboard-icons">
        <a href="#" class="text-dark">
          <img src="assets/images/icons/quiz-view.png">
          <h4>View Quizzes</h4>
        </a>
      </div>
    </div>
  </div>
</body>
</html>