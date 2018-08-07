<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>
  <?php 
    include 'view/partials/modal-notification.php';
    include 'view/partials/modal-registration.php'; 
    include 'view/partials/navbar.php';
  ?>      
  
  <div class="container mt-5">
    <div class="row">
      <div class="col-xs-12 col-md-6">
        <h2><a class="text-dark" href="index.php"><i class="material-icons">keyboard_backspace</i></a> Account Registration</h2>
        <p>Sign up for your very own account</p>
        <form action="/action_page.php">
          <div class="form-group">
            <input type="text" class="form-control" name="studentid" placeholder="Enter your student id">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" name="username" placeholder="Enter your username">
          </div>
          <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Enter your password">
          </div><hr>
          <div class="form-group">
            <input type="text" class="form-control" name="firstname" placeholder="Enter your first name">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" name="middlename"  placeholder="Enter your middle name">
          </div>
          <div class="form-group">
            <input type="text" class="form-control" name="lastname" placeholder="Enter your last name">
          </div>
          <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#modal-registration">Register account</button>
        </form>
        <p id="result"></p>
      </div>
      <div class="col-xs-12 col-md-6">
        <?php include 'view/partials/carousel-registration.php' ?>
      </div>
    </div>
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