<?php 
    $con = mysqli_connect("localhost","root","","caipl");
    $id = $_GET['id'];
    $retrieveSql = "
            SELECT * 
            FROM lesson
            WHERE id = $id
        ";
    $retrieveResult = mysqli_query($con,$retrieveSql);
    $account = mysqli_fetch_assoc($retrieveResult);
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
	    <li class="breadcrumb-item caipl-link"><a href="admin-dashboard.php">Admin Dashboard</a></li>
	    <li class="breadcrumb-item caipl-link"><a href="admin-dashboard.php">Lumikha ng Aralin</a></li>
        <li class="breadcrumb-item active text-warning" aria-current="page"><?=$account['lesson_name']?></li>
	  </ol>
	</nav>

<div class="container mt-5 mh60vh">
    <div class="row">
        <div class="col-xs-12 col-md-6">


            <!-- Title -->
            <h2>
                <span>Palitan ang laman ng aralin <?=$account['lesson_name']?></span>
            </h2>

            <!-- Lesson Form -->
            <form action="config/edit.php" id="LessonForm" enctype="multipart/form-data" method="post">

                <!-- Lesson Name -->
                <div class="form-group">
                    <input type="hidden" name="id" value="<?=$id?>">
                </div>

                <div class="form-group">
                    Magpili ng panibangong aralin (PDF)
                    <input type="file" name="fileToUpload" id="fileToUpload">
                </div>

                <!-- Submit -->
                <button type="submit" class="btn btn-dark">Ipalit ang laman ng aralin</button>
        </div>
    </div>
</div>



<script type="text/javascript">
    $(document).ready(function () {
        var Dialog = new BootstrapDialog({
            buttonClass: 'btn-primary'
        });

        // Init Carousel
        $('.carousel').carousel();

        /* // Submit Lesson Form
        $('#LessonForm').on('submit', function (e) {
            e.preventDefault();
            var serialized_array = $(this).serializeArray();
            var data = {
                action: 'create-lesson'
            };
            for(var i = 0; i < serialized_array.length; i++) {
                var item = serialized_array[i];
                data[item.name] = item.value;
            }
            Dialog.confirm('Are you sure?', 'Are you sure you want to add this lesson?', function (yes) {
                if(yes) {
                    var preloader = new Dialog.preloader('Adding');
                    $.ajax({
                        type: 'POST',
                        url: 'config/api.php',
                        data: data
                    }).then(function(data) {
                        if(data.error) Dialog.alert('Adding Lesson Error: ' + data.error[0], data.error[1]);
                        else Dialog.alert('Adding Lesson Success', data.message);
                    }).catch(function (error) {
                        Dialog.alert('Adding Lesson Error', error.statusText || 'Server Error');
                    }).always(function () {
                        preloader.destroy();
                    });
                }
            });
        }); */
    });
</script>
</body>
</html> 