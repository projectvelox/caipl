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
    echo "
      <div class='form-check'>
        <label class='form-check-label'>
          <input type='radio' class='form-check-input' name='optradio_".$row['id']."' required value='1'>" . ucfirst(strtolower($row['option_1'])) . "
        </label>
      </div>
      <div class='form-check'>
        <label class='form-check-label'>
          <input type='radio' class='form-check-input' name='optradio_".$row['id']."' value='2'>" . ucfirst(strtolower($row['option_2'])) . "
        </label>
      </div>
      <div class='form-check'>
        <label class='form-check-label'>
          <input type='radio' class='form-check-input' name='optradio_".$row['id']."' value='3'>" . ucfirst(strtolower($row['option_3'])) . "
        </label>
      </div>
      <div class='form-check'>
        <label class='form-check-label'>
          <input type='radio' class='form-check-input' name='optradio_".$row['id']."' value='4'>" . ucfirst(strtolower($row['option_4'])) . "
        </label>
      </div><br>
    ";
  }
  mysqli_close($con);
  ?><hr>
  <button type="submit" class="btn btn-dark submit_quiz">Submit answers</button>
</form>
</div><br>

<script type="text/javascript">
  $(document).ready(function () {
    $('#QuizForm').on('submit', function (e) {
        e.preventDefault();
        
        var id = <?=$id?>;
        var serialized_array = $(this).serializeArray();
        var data = {
          id: id,
          action: 'get-results'
        };
        for(var i = 0; i < serialized_array.length; i++) {
          var item = serialized_array[i];
          data[item.name] = item.value;
        }
        $.ajax({
          type:"POST",
          url:"config/ajax.php",
          data: data,
        }).then(function(data) {
          location.href = 'scores.php?score=' + data + '&id='+id
        });
    });
  });
</script>
</body>
</html>