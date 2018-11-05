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
     <li class="breadcrumb-item caipl-link"><a href="index.php">Home</a></li>
     <li class="breadcrumb-item caipl-link"><a href="user-dashboard.php">User Dashboard</a></li>
     <li class="breadcrumb-item active text-warning" aria-current="page">Kumuha ng mga Pagsusulit</li>
   </ol>
 </nav>

 <div class="container mt-5 mh75vh">
  <form id="QuizForm">
   <?php
   $i=1;
   $con = mysqli_connect("localhost","root","","caipl");
   $result = mysqli_query($con,"SELECT * FROM quiz WHERE id='$i' LIMIT 1");
   while($row = mysqli_fetch_array($result))
   {
    echo "<div class='form-group'>";
    echo "<div>" . $i . ". " . $row['quiz_question'] . "</div>";
    echo "<select name='answer" . $row['id'] . "'>";
    echo "<option selected disabled>Choose an option</option>";
    echo "<option value='1'>" . $row['option_1'] . "</option>";
    echo "<option value='2'>" . $row['option_2'] . "</option>";
    echo "<option value='3'>" . $row['option_3'] . "</option>";
    echo "<option value='4'>" . $row['option_4'] . "</option>";
    echo "</select>";
    echo "</div>";
  }
  mysqli_close($con);
  ?><hr>
  <button type="submit" class="btn btn-dark">Next Question</button>
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