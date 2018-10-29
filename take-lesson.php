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
	    <li class="breadcrumb-item active text-warning" aria-current="page">Pumili ng mga Aralin</li>
	  </ol>
	</nav>
  
  <div class="container mt-5 mh60vh">
    <h2>Talaan ng nilalaman</h2>
    <p>Nasa ibaba ang listahan ng mga aralin</p><hr>
    <form id="TakeLessonForm" method="post">

                <?php 
                    $i=0;
                    $con = mysqli_connect("localhost","root","","caipl");
                    //$result = mysqli_query($con,"SELECT id, lesson_name FROM lesson");
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
                            echo "<li><a href='view-lesson.php?id=$id'>" . $rows['lesson_name'] . "</a></li>";
                        }
                        echo "</ul>";

                        /* echo "<option value=" . $row['id'] . ">";
                        echo $row['lesson_name'];
                        echo "</option>"; */


                    }
                    mysqli_close($con); 
                ?>

       
    </form><hr>
  </div>
  <script type="text/javascript">
    $('#TakeLessonForm').on('submit', function (e) {
    });

    /* $(function(){
      // bind change event to select
      $('#dynamic_select').on('change', function () {
          var url = $(this).val(); // get selected value
          if (url) { // require a URL
              window.location = url; // redirect
          }
          return false;
      });
    }); */

  </script>
</body>
</html>