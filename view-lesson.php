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
  
  <div class="container mt-8">
  	<div class="row">
		<div class="col-md-8">
			<?php
				$con = mysqli_connect("localhost","root","","caipl");
				$result = mysqli_query($con,"SELECT * FROM lesson WHERE id='1'");
				while($row = mysqli_fetch_array($result))
				{
					echo "<h2>" . $row['lesson_name'] . "</h2>";
					echo "<p>" . $row['lesson_description'] . " </p>";
				}
				mysqli_close($con);
			?>
		</div>
		<div class="col-md-4">
			<h2>Lesson Attachments</h2>
		  	<a href="documentation/kabanata1-libro.docx">kabanata1-libro.docx</a><br>
		  	<a href="documentation/Mabuhay-Singers-Chi-chirit-chit.mp3" target="_blank">Mabuhay-Singers-Chi-chirit-chit.mp3</a>
		</div>
	</div>
  </div>
  
</body>
</html>