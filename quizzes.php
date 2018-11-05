<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>
  <?php 
    include 'view/partials/navbar.php';
  ?>

  <nav aria-label="breadcrumb">
	  <ol class="breadcrumb bg-dark">
      <li class="breadcrumb-item caipl-link"><a href="index.php"><i class="material-icons">home</i></a></li>
	    <li class="breadcrumb-item caipl-link"><a href="admin-dashboard.php">Admin Dashboard</a></li>
	    <li class="breadcrumb-item active text-warning" aria-current="page">Tingnan ang Mga Pagsusulit</li>
	  </ol>
	</nav>
  
  <div class="container mt-5 mh60vh" id="bad-background">
    <h2>Mga Pagsusulit</h2>
    <p>Nasa ibaba ang listahan ng mga tanong</p><hr>
    
    <?php include "view/partials/table-quizzes.php" ?>
    
  </div>
</body>
</html>