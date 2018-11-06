<?php 
  $id = $_GET['id'];
  $con = mysqli_connect("localhost","root","","caipl");
  $result = mysqli_query($con,"SELECT * FROM lesson WHERE id='$id'");
  $row = mysqli_fetch_assoc($result);

  $varLessonName = $row['lesson_name'];
?>
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
     <li class="breadcrumb-item caipl-link"><a href="user-dashboard.php">User Dashboard</a></li>
     <li class="breadcrumb-item caipl-link"><a href="take-quiz.php">Kumuha ng mga Pagsusulit</a></li>
     <li class="breadcrumb-item active text-warning" aria-current="page"><?=$varLessonName?>'s Pagsusulit</li>
     
   </ol>
 </nav>

 <div class="container mt-5 mh75vh">
  <h2>Your Score</h2><hr>
  <h1 class="text-center mt-5">You've scored: <?=$_GET['score']?> on the quiz</h1>
</div><br>
</body>
</html>