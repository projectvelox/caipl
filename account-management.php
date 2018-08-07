<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>
  <?php include 'view/partials/modal-login.php'?>  

  <!-- Navbar -->
  <?php include 'view/partials/navbar.php'?>  
	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb bg-dark">
	    <li class="breadcrumb-item caipl-link"><a href="admin-dashboard.php">Admin Dashboard</a></li>
	    <li class="breadcrumb-item active text-warning" aria-current="page">Account Management</li>
	  </ol>
	</nav>

	<div class="container mt-3">		
		<h2>Account Management</h2>
		<span>Get a view of all the accounts in the system. Create, edit, delete exisiting or non-existing records.</span><hr>
		<?php include "view/partials/table-accounts.php" ?>
	</div>
</body>
</html>