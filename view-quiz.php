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
	    <li class="breadcrumb-item active text-warning" aria-current="page">Take Quizzes</li>
	  </ol>
	</nav>
  
  <div class="container mt-5">
    <form id="QuizForm">
	<?php
        $i=1;
		$con = mysqli_connect("localhost","root","","caipl");
		$result = mysqli_query($con,"SELECT * FROM quiz WHERE lesson_id='1'");
		while($row = mysqli_fetch_array($result))
		{
            echo "<div class='form-group'>";
			echo "<div>" . $i . ". " . $row['quiz_question'] . "</div>";
            echo "<select name='answer" . $row['id'] . "'>";
            echo "<option selected disabled>Choose an option</option>";
            echo "<option value='1'>" . $row['option_1'] . "</option>";
            echo "<option value='2'>" . $row['option_2'] . "</option>";
            echo "<option value='3'>" . $row['option_3'] . "</option>";
            echo "<option value='4'>" . $row['option_4'] . "</option>";
            echo "</select>";
            echo "</div>";
            $i++;
		}
		mysqli_close($con);
	?>
    <button type="submit" class="btn btn-dark">Submit answers</button>
    </form>
  </div>

  <script type="text/javascript">
  $(document).ready(function () {
        var Dialog = new BootstrapDialog({
            buttonClass: 'btn-primary'
        });
        $('#QuizForm').on('submit', function (e) {
            e.preventDefault();
            var serialized_array = $(this).serializeArray();
            var data = {
                action: 'check-quiz'
            };
            for(var i = 0; i < serialized_array.length; i++) {
                var item = serialized_array[i];
                data[item.name] = item.value;
            }
            Dialog.confirm('Are you sure?', 'Are you sure you want to submit your answers?', function (yes) {
                if(yes) {
                    var preloader = new Dialog.preloader('Checking quiz');
                    $.ajax({
                        type: 'POST',
                        url: 'config/api.php',
                        data: data
                    }).then(function(data) {
                        if(data.error) Dialog.alert('Quiz Error: ' + data.error[0], data.error[1]);
                        else Dialog.alert('Quiz Success', data.message);
                    }).catch(function (error) {
                        Dialog.alert('Quiz Error', error.statusText || 'Server Error');
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