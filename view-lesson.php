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
    // include 'view/partials/modal-notification.php';
    // include 'view/partials/modal-registration.php'; 
	include 'view/partials/navbar.php';
	?>      

	<nav aria-label="breadcrumb">
		<ol class="breadcrumb bg-dark">
			<li class="breadcrumb-item caipl-link"><a href="user-dashboard.php">User Dashboard</a></li>
			<li class="breadcrumb-item caipl-link"><a href="take-lesson.php">Pumili ng mga aralin</a></li>
			<li class="breadcrumb-item active text-warning" aria-current="page"><?=$varLessonName?></li>
		</ol>
	</nav>
	<div class="row" style="margin-top: -16px; margin-left: -15px; margin-right: 0px; margin-bottom: 0px;">
		<div class="col-xs-12 col-md-8">
			<iframe src="documentation/PDF/<?=$id?>.pdf" style="width:100%; height:500px" frameborder="0"></iframe>
		</div>
		<div class="col-xs-12 col-md-4" style="padding-top: 20px;">
			<h4>Audio</h4><hr>
			<audio src="assets/audio/<?=$id?>.mp3" controls>
			  Sorry, your browser doesn't support HTML5 audio
			</audio>
		</div>
	</div>
</body>
</html>