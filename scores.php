<?php 
  $id = $_GET['id'];
  $con = mysqli_connect("localhost","root","","caipl");
  $result = mysqli_query($con,"SELECT * FROM lesson WHERE id='$id'");
  $row = mysqli_fetch_assoc($result);

  $varLessonName = $row['lesson_name'];

  $scoreid = $_GET['score'];

  $countresult = mysqli_query($con,"SELECT * FROM scores_listing WHERE score_id='$scoreid'");
  $totalquery = mysqli_query($con,"SELECT * FROM scores WHERE score_id='$scoreid'");
  $totalrow = mysqli_fetch_assoc($totalquery);

  $countedrows = mysqli_num_rows($countresult);
  $totalcountedrows = ($totalrow['score'] - $countedrows) . " / " . $totalrow['score'];

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
  <h1 class="text-center mt-5">Ang iyong iskor sa pagsusulit ay <?=$totalcountedrows?></h1><br>
  <h2>Ang iyong mga mali</h2><hr>
   <?php
   $i=0;
   $con = mysqli_connect("localhost","root","","caipl");
   $result = mysqli_query($con,"SELECT * FROM scores_listing WHERE score_id='$scoreid'");
   while($row = mysqli_fetch_array($result))
   {
    $i++;
    echo "<p>" . $i . ". " . ucfirst(strtolower($row['question'])) . "</p>";
    echo "<p><strong class='text-danger'>Ang iyong sagot: </strong>" . ucfirst(strtolower($row['answer'])) . "</p>";
    echo "<p><strong class='text-success'>Ang tamang sagot: </strong>" . ucfirst(strtolower($row['correct'])) . "</p><br>";
  }?>

  
</div><br>
</body>
</html>