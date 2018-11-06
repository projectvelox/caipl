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
	    <li class="breadcrumb-item active text-warning" aria-current="page">Create Quizzes</li>
	  </ol>
	</nav>

<div class="container mt-5 mh60vh">
    <div class="row">
        <div class="col-xs-12 col-md-6">

            <!-- Title -->
            <h2>
                <span>Create Quiz</span>
            </h2>

            <!-- Subtitle -->
            <p>Add a quiz to a lesson.</p>

            <!-- Quiz Form -->
            <form id="QuizForm">
                <!-- Chapter Name -->
                <div class="form-group">
                    <select class="form-control"
                            required="required"
                            name="chaptername">
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
                    <select class="form-control"
                            required="required"
                            name="lessonname">
                        <option selected disabled>Select the lesson</option>
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

                <!-- Questions -->
                <div class="form-group">
                    <input type="number"
                           class="form-control"
                           name="numberofquestions"
                           placeholder="Number of questions">
                </div>

                <!-- Submit -->
                <button type="button" class="btn btn-dark">Add quiz</button>
            </form>



            <p id="result"></p>
        </div>
        <div class="col-xs-12 col-md-6">


            <!-- Title -->
            <h2>
                <span>Create Quiz Questions</span>
            </h2>

            <!-- Subtitle -->
            <p>Add questions to a quiz.</p>

            <form id="QuestionForm">
                
            </form>
        </div>
    </div>
</div>



<script type="text/javascript">
    $('#QuizForm button').click(function () {
        $('#QuizForm .form-control, #QuizForm button').prop("disabled", true);
        
        $i=1;
        $j=$['numberofquestions'].val();
        $('#QuestionForm').append("<?php
            while($i<=$j)
            {
                echo '<p>Question ' . $i . '</p>';
                echo '<div class="form-group"><textarea class="form-control" required="required" name="quizquestion"
                placeholder="Enter the question"></textarea></div>';
                echo '<div class="form-group"><input type="text" class="form-control" required="required" name="option1"
                placeholder="Enter option 1"></div>';
                echo '<div class="form-group"><input type="text" class="form-control" required="required" name="option2"
                placeholder="Enter option 2"></div>';
                echo '<div class="form-group"><input type="text" class="form-control" required="required" name="option3"
                placeholder="Enter option 3"></div>';
                echo '<div class="form-group"><input type="text" class="form-control" required="required" name="option4"
                placeholder="Enter option 4"></div>';
                echo '<div class="form-group"><select class="form-control" required="required" name="quizanswer">';
                echo '<option selected disabled>Select the answer</option>';
                echo '<option value="1">Option 1</option>';
                echo '<option value="2">Option 2</option>';
                echo '<option value="3">Option 3</option>';
                echo '<option value="4">Option 4</option></select></div>';
                $i++;
            }
            echo '<button type="submit" class="btn btn-dark">Add questions</button>';
        ?>");
    });

    $(document).ready(function () {
        var Dialog = new BootstrapDialog({
            buttonClass: 'btn-primary'
        });

        // Init Carousel
        $('.carousel').carousel();


        // Submit Registration Form
        $('#RegistrationForm').on('submit', function (e) {
            e.preventDefault();
            var serialized_array = $(this).serializeArray();
            var data = {
                action: 'create-account'
            };
            for(var i = 0; i < serialized_array.length; i++) {
                var item = serialized_array[i];
                data[item.name] = item.value;
            }
            Dialog.confirm('Are you sure?', 'Are you sure you want to add this quiz?', function (yes) {
                if(yes) {
                    var preloader = new Dialog.preloader('Adding');
                    $.ajax({
                        type: 'POST',
                        url: 'config/api.php',
                        data: data
                    }).then(function(data) {
                        if(data.error) Dialog.alert('Adding Quiz Error: ' + data.error[0], data.error[1]);
                        else Dialog.alert('Adding Quiz Success', data.message);
                    }).catch(function (error) {
                        Dialog.alert('Adding Quiz Error', error.statusText || 'Server Error');
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