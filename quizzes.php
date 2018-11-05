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
	    <li class="breadcrumb-item active text-warning" aria-current="page">Tingnan ang Mga Pagsusulit</li>
	  </ol>
	</nav>
  
  <div class="container mt-5 mh60vh" id="bad-background">
    <h2>Mga Pagsusulit</h2>
    <p>Nasa ibaba ang listahan ng mga tanong</p><hr>
    
    <?php include "view/partials/table-quizzes.php" ?>
    
  </div>
  <script type="text/javascript">
    $('.carousel').carousel();
    $(document).on("click", ".trigger-registration", function() { 
        var formdata = $('form').serializeArray();
        var data = {};
        $(formdata ).each(function(index, obj){
            data[obj.name] = obj.value;
        });

        $('#student-registered').html(data['username']);

        $.ajax({type:"POST",url:"config/api.php",
          data: {
            studentid:data['studentid'],
            username:data['username'],
            password:data['password'],
            firstname:data['firstname'],
            middlename:data['middlename'],
            lastname:data['lastname'],
            action:"create-account"
          },
          }).then(function(data) {
            $("#modal-registration").modal("hide");
            $("#modal-success").modal("show");
        });
    });
  </script>
</body>
</html>