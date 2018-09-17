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
	    <li class="breadcrumb-item caipl-link"><a href="admin-dashboard.php">Admin Dashboard</a></li>
	    <li class="breadcrumb-item active text-warning" aria-current="page">Create Lessons</li>
	  </ol>
	</nav>

<div class="container mt-5">
    <div class="row">
        <div class="col-xs-12 col-md-6">

            <!-- Title -->
            <h2>
                <span>Create Chapter</span>
            </h2>

            <!-- Subtitle -->
            <p>Add a chapter for learning.</p>

            <!-- Chapter Form -->
            <form id="ChapterForm">
                <!-- Chapter Name -->
                <div class="form-group">
                    <input type="text" class="form-control"
                           required="required"
                           name="chaptername"
                           placeholder="Enter the chapter name">
                </div>

                <!-- Chapter Description -->
                <div class="form-group">
                    <textarea
                           class="form-control"
                           required="required"
                           name="chapterdescription"
                           placeholder="Enter the chapter description"></textarea>
                </div>

                <!-- Submit -->
                <button type="submit" class="btn btn-dark">Add chapter</button>
            </form>



            <p id="result"></p>
        </div>
        <div class="col-xs-12 col-md-6">


            <!-- Title -->
            <h2>
                <span>Create Lesson</span>
            </h2>

            <!-- Subtitle -->
            <p>Add a lesson to a chapter.</p>

            <!-- Lesson Form -->
            <form id="LessonForm">
                <!-- Chapter Name -->
                <div class="form-group">
                    <select class="form-control"
                           required="required"
                           name="lessonchaptername">
                        <option selected disabled>Select the chapter</option>
                        <?php
                            $i=0;
                            $con = mysqli_connect("localhost","root","","caipl");
                            $result = mysqli_query($con,"SELECT id, chapter_name FROM chapter");
                            while($row = mysqli_fetch_array($result))
                            {
                                $i++;
                                echo "<option value=" . $row['id'] . ">";
                                echo $row['chapter_name'];
                                echo "</option>";
                            }
                            mysqli_close($con);
                        ?>
                    </select>
                </div>


                <!-- Lesson Name -->
                <div class="form-group">
                    <input type="text" class="form-control"
                           required="required"
                           name="lessonname"
                           placeholder="Enter the lesson name">
                </div>

                <!-- Chapter Description -->
                <div class="form-group">
                    <textarea
                           class="form-control"
                           required="required"
                           name="lessondescription"
                           placeholder="Enter the lesson description"></textarea>
                </div>

                <!-- Submit -->
                <button type="submit" class="btn btn-dark">Add lesson</button>
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


        // Submit Chapter Form
        $('#ChapterForm').on('submit', function (e) {
            e.preventDefault();
            var serialized_array = $(this).serializeArray();
            var data = {
                action: 'create-chapter'
            };
            for(var i = 0; i < serialized_array.length; i++) {
                var item = serialized_array[i];
                data[item.name] = item.value;
            }
            Dialog.confirm('Are you sure?', 'Are you sure you want to add this chapter?', function (yes) {
                if(yes) {
                    var preloader = new Dialog.preloader('Adding');
                    $.ajax({
                        type: 'POST',
                        url: 'config/api.php',
                        data: data
                    }).then(function(data) {
                        if(data.error) Dialog.alert('Adding Chapter Error: ' + data.error[0], data.error[1]);
                        else Dialog.alert('Adding Chapter Success', data.message);
                    }).catch(function (error) {
                        Dialog.alert('Adding Chapter Error', error.statusText || 'Server Error');
                    }).always(function () {
                        preloader.destroy();
                    });
                }
            });
        });

        // Submit Lesson Form
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
        });
    });
</script>
</body>
</html> 