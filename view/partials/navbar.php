<?PHP if(empty(session_id()))session_start(); ?>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 bg-white border-bottom shadow-sm">
    <h5 class="my-0 mr-md-auto font-weight-normal">Capiz State University</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <?PHP if(isset($_SESSION['account'])): ?>
            <a class="p-2 text-dark" href="logout.php">Logout</a>
        <?PHP else: ?>
            <a class="p-2 text-dark" href="login.php">Login</a>
            <a class="p-2 text-dark" href="registration.php">Signup</a>
        <?PHP endif; ?>
    </nav>
</div>