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
	    <li class="breadcrumb-item active text-warning" aria-current="page">Kumuha ng mga Pagsusulit</li>
	  </ol>
	</nav>
  
  <div class="container mt-5 mh60vh">
    <h2>Mga Pagsusulit</h2>
    <p>Nasa ibaba ang listahan ng mga pagsusulit</p><hr>
    <?php 
        $i=0;
        $con = mysqli_connect("localhost","root","","caipl");
        $result = mysqli_query($con, "SELECT * FROM chapter");
        while($row = mysqli_fetch_array($result))
        {
          $i++;
          $chapterid = $row['id'];

          echo "<p><strong>" . $row['chapter_name'] . "</strong></p>";
          $results = mysqli_query($con, "SELECT * FROM lesson WHERE chapter_id='$chapterid'");
          echo "<ul>";
          while($rows = mysqli_fetch_array($results))
          {
            $id = $rows['id'];
            echo "<li><a href='view-quiz.php?id=$id'>" . $rows['lesson_name'] . "</a></li>";
          }
          echo "</ul>";

        }
        mysqli_close($con); 
    ?>
  </div>
  <script type="text/javascript">
    $('#TakeLessonForm').on('submit', function (e) {
    });
  </script>
</body>
</html>