<?PHP
    session_start();
    if(isset($_SESSION['account'])) {
        echo 'has session';
        $redirect = '';
        switch ($_SESSION['account']['typeofaccount']) {
            case '1': $redirect = 'user-dashboard.php'; break;
            case '2': $redirect = 'admin-dashboard.php'; break;
        }
        header('Location: '.$redirect);
    }

?>
<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>

<!-- Navbar -->
<?php include 'view/partials/navbar.php'?>

<div class="container mt-5 mh75vh" id="bad-background">
    <div class="row">
        <div class="col-12 col-md-6">
            <!-- Title -->
            <h2>
                <span>Log in</span>
            </h2>

            <!-- Subtitle -->
            <p>log in to you account</p>

            <!-- Login Form -->
            <form id="LoginForm">

                <!-- Username -->
                <div class="form-group">
                    <input type="text"
                           class="form-control"
                           name="username"
                           placeholder="Enter your username">
                </div>

                <!-- Password -->
                <div class="form-group">
                    <input type="password"
                           class="form-control"
                           name="password"
                           placeholder="Enter your password">
                </div>

                <!-- Submit -->
                <button type="submit"
                        class="btn btn-dark">
                    Login to account
                </button>
            </form>
        </div>


        <!-- Carousel -->
        <!-- <div class="col-12 col-md-6">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="first-slide" src="assets/images/slider/4.png" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="second-slide" src="assets/images/slider/5.png" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="third-slide" src="assets/images/slider/6.png" alt="Third slide">
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
        $('#LoginForm').on('submit', function (e) {
            e.preventDefault();
            var serialized_array = $(this).serializeArray();
            var data = {action: 'login-account'};
            for(var i = 0; i < serialized_array.length; i++) {
                var item = serialized_array[i];
                data[item.name] = item.value;
            }
            var preloader = new Dialog.preloader('Logging in');
            $.ajax({
                type: 'POST',
                url: 'config/api.php',
                data: data
            }).then(function(data) {
                if(data.error) Dialog.alert('Login Error', data.error[1]);
                else {
                    new Dialog.preloader('Redirecting');
                    window.location.href = data.redirect;
                }
            }).catch(function (error) {
                Dialog.alert('Registration Error', error.statusText || 'Server Error');
            }).always(function () {
                preloader.destroy();
            });
        });
    });
</script>
</body>
</html>