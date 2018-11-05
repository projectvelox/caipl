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

<div class="container mt-5 mh75vh">
    <div class="row">
        <div class="col-12 col-md-6">
            <!-- Title -->
            <h2>
                <span>Log in</span>
            </h2><hr>

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
                    Mag-login sa account
                </button>
            </form>
        </div>


        <!-- Carousel -->
        <div class="col-12 col-md-6">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="first-slide" src="assets/images/carousel/1.jpg">
                        <div class="carousel-caption">
                            <a href="https://i.pinimg.com/564x/9a/98/1e/9a981ee597294410e041b2193eb1b356.jpg" style="color: #fff; font-size: 11px; padding: 5px;  background-color: #0000008a;"><strong>Sanggunian<br></strong>https://i.pinimg.com/564x/9a/98/1e/9a981ee597294410e041b2193eb1b356.jpg</a>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="second-slide" src="assets/images/carousel/2.jpg">
                        <div class="carousel-caption">
                            <a href="http://www.bayaniart.com/wp-content/uploads/2018/07/General-AntonioLuna.jpg" style="color: #fff; font-size: 11px; padding: 5px;  background-color: #0000008a;">Sanggunian<br>http://www.bayaniart.com/wp-content/uploads/2018/07/General-AntonioLuna.jpg</a>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="second-slide" src="assets/images/carousel/3.jpg">
                        <div class="carousel-caption">
                            <a href="http://userscontent2.emaze.com/images/6f2cda7a-199c-4880-82a4-1a4307564d9c/Slide7_Pic2_636425857847840709.png" style="color: #fff; font-size: 11px; padding: 5px;  background-color: #0000008a;">Sanggunian<br>http://userscontent2.emaze.com/images/6f2cda7a-199c-4880-82a4-1a4307564d9c/Slide7_Pic2_636425857847840709.png</a>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="second-slide" src="assets/images/carousel/4.jpg">
                        <div class="carousel-caption">
                            <a href="https://xiaochua.files.wordpress.com/2013/06/10-noong-may-27-sa-mga-kabig-nina-pedro-paterno-at-buencamino-instituto-cervantes.jpg" style="color: #fff; font-size: 11px; padding: 5px;  background-color: #0000008a;">Sanggunian<br>https://xiaochua.files.wordpress.com/2013/06/10-noong-may-27-sa-mga-kabig-nina-pedro-paterno-at-buencamino-instituto-cervantes.jpg</a>
                        </div>
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