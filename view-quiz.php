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
     <li class="breadcrumb-item caipl-link"><a href="user-dashboard.php">User Dashboard</a></li>
     <li class="breadcrumb-item caipl-link"><a href="take-quiz.php">Kumuha ng mga Pagsusulit</a></li>
     <li class="breadcrumb-item active text-warning" aria-current="page"><?=$varLessonName?>'s Pagsusulit</li>
     
   </ol>
 </nav>

 <div class="container mt-5 mh75vh">
  <h2>Pagsusulit ng <?=$varLessonName?></h2><hr>
  <form id="QuizForm">
   <?php
   $i=0;
   $con = mysqli_connect("localhost","root","","caipl");
   $result = mysqli_query($con,"SELECT * FROM quiz WHERE lesson_id='$id'");
   while($row = mysqli_fetch_array($result))
   {
    $i++;
    echo "<p>" . $i . ". " . ucfirst(strtolower($row['quiz_question'])) . "</p>";
  }
  mysqli_close($con);
  ?><hr>
  <button type="submit" class="btn btn-dark">Submit answers</button>
</form>
</div>

<script type="text/javascript">
  $(document).ready(function () {

    $('#QuizForm').on('submit', function() {

    });
  });
</script>
</body>
</html>