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
  
  <div class="container mt-5">
    <h2>Lessons</h2>
    <p>Below are the list of lessons</p><hr>
    
    <form id="TakeLessonForm" method="post">
        <div class="form-group">
            <select class="form-control"
                required="required"
                name="lessonselection">
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
            </select>
        </div>
        <a href="view-lesson.php"><button type="button" class="btn btn-dark">Take lesson</button></a>
    </form>
  </div>
  <script type="text/javascript">
    $('#TakeLessonForm').on('submit', function (e) {
    });
  </script>
</body>
</html>