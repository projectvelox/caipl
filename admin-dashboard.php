<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>
  <!-- Navbar -->
  <?php include 'view/partials/navbar.php'?>      
  
  <div class="container mt-5 mh75vh">
    <h2>Admin Dashboard - Maligayang pagdating <?php echo $_SESSION['account']['firstname'] ?></h2><hr>
    <div class="row">
      <div class="col-xs-6 col-md-2 caipl-dashboard-icons">
        <a href="account-profile.php" class="text-dark">
          <img src="assets/images/icons/account-management.png">
          <h4>Aking Profile</h4>
        </a>
      </div>
      <div class="col-xs-6 col-md-2 caipl-dashboard-icons">
        <a href="account-management.php" class="text-dark">
          <img src="assets/images/icons/account-management.png">
          <h4>Listahan ng Account</h4>
        </a>
      </div>
      <div class="col-xs-6 col-md-2 caipl-dashboard-icons">
        <a href="create-lesson.php" class="text-dark">
          <img src="assets/images/icons/lesson-create.png">
          <h4>Lumikha ng mga Aralin</h4>
        </a>
      </div>
      <div class="col-xs-6 col-md-2 caipl-dashboard-icons">
        <a href="lesson.php" class="text-dark">
          <img src="assets/images/icons/lesson-view.png">
          <h4>Tingnan ang Mga Aralin</h4>
        </a>
      </div>
      <div class="col-xs-6 col-md-2 caipl-dashboard-icons">
        <a href="create-quiz.php" class="text-dark">
          <img class="" src="assets/images/icons/quiz-create.png">
          <h4>Lumikha ng mga Pagsusulit</h4>
        </a>
      </div>
      <div class="col-xs-6 col-md-2 caipl-dashboard-icons">
        <a href="quizzes.php" class="text-dark">
          <img src="assets/images/icons/quiz-view.png">
          <h4>Tingnan ang Mga Pagsusulit</h4>
        </a>
      </div>
    </div>
  </div>
</body>
</html>