<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>
<?php
  include 'view/partials/navbar.php';
?>

<div class="container mt-5 mh75vh">
    <div class="row">
        <div class="col-xs-12 col-md-6">

            <!-- Title -->
            <h2>
                <span>Account Registration</span>
            </h2>

            <!-- Registration Form -->
            <form id="RegistrationForm">
                <!-- First Name -->
                <div class="form-group">
                    <input type="text"
                           class="form-control"
                           required="required"
                           name="firstname"
                           placeholder="Enter your first name">
                </div>

                <!-- Middle Name -->
                <div class="form-group">
                    <input type="text"
                           class="form-control"
                           name="middlename"
                           placeholder="Enter your middle name">
                </div>

                <!-- Last Name -->
                <div class="form-group">
                    <input type="text"
                           class="form-control"
                           name="lastname"
                           placeholder="Enter your last name">
                </div>
                <!-- Student ID -->
                <div class="form-group">
                    <input type="text" class="form-control"
                           required="required"
                           name="studentid"
                           placeholder="Enter your student id">
                </div>

                <!-- Username -->
                <div class="form-group">
                    <input type="text"
                           class="form-control"
                           required="required"
                           name="username"
                           placeholder="Enter your username">
                </div>

                <!-- Password -->
                <div class="form-group">
                    <input type="password"
                           class="form-control"
                           required="required"
                           name="password"
                           placeholder="Enter your password">
                </div><hr>

                

                <!-- Submit -->
                <button type="submit" class="btn btn-dark">Register account</button>
            </form>



            <p id="result"></p>
        </div>
        <!-- <div class="col-xs-12 col-md-6">
            <?php include 'view/partials/carousel-registration.php' ?>
        </div> -->
    </div>
</div>



<script type="text/javascript">
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
            Dialog.confirm('Are you sure?', 'Are you sure you want to register this account?', function (yes) {
                if(yes) {
                    var preloader = new Dialog.preloader('Registering');
                    $.ajax({
                        type: 'POST',
                        url: 'config/api.php',
                        data: data
                    }).then(function(data) {
                        if(data.error) Dialog.alert('Registration Error: ' + data.error[0], data.error[1]);
                        else Dialog.alert('Registration Success', data.message);
                    }).catch(function (error) {
                        Dialog.alert('Registration Error', error.statusText || 'Server Error');
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