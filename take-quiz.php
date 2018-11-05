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
      <li class="breadcrumb-item caipl-link"><a href="index.php"><i class="material-icons">home</i></a></li>
	    <li class="breadcrumb-item caipl-link"><a href="user-dashboard.php">User Dashboard</a></li>
	    <li class="breadcrumb-item active text-warning" aria-current="page">Kumuha ng mga Pagsusulit</li>
	  </ol>
	</nav>
  
  <div class="container mt-5 mh60vh">
    <h2>Mga Pagsusulit</h2>
    <p>Nasa ibaba ang listahan ng mga pagsusulit</p><hr>
    <div class="row">
      <div class="col-xs-12 col-md-6">
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
                echo "<li><a href='view-quiz.php?id=$id'>Pagsusulit para sa aralin</a></li>";
              }
              echo "</ul>";

            }
            mysqli_close($con); 
        ?>
      </div>
      <div class="col-xs-12 col-md-6">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="first-slide" src="assets/images/carousel/1.jpg">
                    <div class="carousel-caption">
                        <a href="https://i.pinimg.com/564x/9a/98/1e/9a981ee597294410e041b2193eb1b356.jpg" style="color: #fff; font-size: 11px; padding: 5px;  background-color: #0000008a;"><strong>Sanggunian<br></strong>https://i.pinimg.com/564x/9a/98/1e/9a981ee597294410e041b2193eb1b356.jpg</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="second-slide" src="assets/images/carousel/2.jpg">
                    <div class="carousel-caption">
                        <a href="http://www.bayaniart.com/wp-content/uploads/2018/07/General-AntonioLuna.jpg" style="color: #fff; font-size: 11px; padding: 5px;  background-color: #0000008a;">Sanggunian<br>http://www.bayaniart.com/wp-content/uploads/2018/07/General-AntonioLuna.jpg</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="second-slide" src="assets/images/carousel/3.jpg">
                    <div class="carousel-caption">
                        <a href="http://userscontent2.emaze.com/images/6f2cda7a-199c-4880-82a4-1a4307564d9c/Slide7_Pic2_636425857847840709.png" style="color: #fff; font-size: 11px; padding: 5px;  background-color: #0000008a;">Sanggunian<br>http://userscontent2.emaze.com/images/6f2cda7a-199c-4880-82a4-1a4307564d9c/Slide7_Pic2_636425857847840709.png</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="second-slide" src="assets/images/carousel/4.jpg">
                    <div class="carousel-caption">
                        <a href="https://xiaochua.files.wordpress.com/2013/06/10-noong-may-27-sa-mga-kabig-nina-pedro-paterno-at-buencamino-instituto-cervantes.jpg" style="color: #fff; font-size: 11px; padding: 5px;  background-color: #0000008a;">Sanggunian<br>https://xiaochua.files.wordpress.com/2013/06/10-noong-may-27-sa-mga-kabig-nina-pedro-paterno-at-buencamino-instituto-cervantes.jpg</a>
                    </div>
                </div>                
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
      </div>
    </div><hr>
  </div>
  <script type="text/javascript">
    $('#TakeLessonForm').on('submit', function (e) {
    });
  </script>
</body>
</html>
