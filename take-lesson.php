<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>
  <?php 
    // include 'view/partials/modal-notification.php';
    // include 'view/partials/modal-registration.php'; 
    include 'view/partials/navbar.php';
  ?>      

  <nav aria-label="breadcrumb">
	  <ol class="breadcrumb bg-dark">
	    <li class="breadcrumb-item caipl-link"><a href="user-dashboard.php">User Dashboard</a></li>
	    <li class="breadcrumb-item active text-warning" aria-current="page">Take Lessons</li>
	  </ol>
	</nav>
  
  <div class="container mt-5 mh60vh" id="bad-background">
    <h2>Lessons</h2>
    <p>Below are the list of lessons</p><hr>
    
    <form id="TakeLessonForm" method="post">
        <div class="form-group">
            <select class="form-control"
                required="required"
                name="lessonselection" id="dynamic_select">
                <option selected disabled>Choose an option</option>
                <?php
                    $i=0;
                    $con = mysqli_connect("localhost","root","","caipl");
                    $result = mysqli_query($con,"SELECT id, lesson_name FROM lesson");
                    while($row = mysqli_fetch_array($result))
                    {
                        $i++;
                        echo "<option value=" . $row['id'] . ">";
                        echo $row['lesson_name'];
                        echo "</option>";
                    }
                    mysqli_close($con);
                ?>
                <option value="chapter2.php">Kabanata 2</option>
                <option value="chapter3.php">Kabanata 3</option>
                <option value="chapter4.php">Kabanata 4</option>
                <option value="chapter5.php">Kabanata 5</option>
                <option value="chapter6.php">Kabanata 6</option>
                <option value="chapter7.php">Kabanata 7</option>
                <option value="chapter8.php">Kabanata 8</option>
                <option value="chapter9.php">Kabanata 9</option>
                <option value="chapter10.php">Kabanata 10</option>
            </select>
        </div>
        <a href="view-lesson.php"><button type="button" class="btn btn-dark">Take lesson</button></a>
    </form>
  </div>
  <script type="text/javascript">
    $('#TakeLessonForm').on('submit', function (e) {
    });

    $(function(){
      // bind change event to select
      $('#dynamic_select').on('change', function () {
          var url = $(this).val(); // get selected value
          if (url) { // require a URL
              window.location = url; // redirect
          }
          return false;
      });
    });

  </script>
</body>
</html>