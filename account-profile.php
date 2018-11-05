<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>
  <!-- Modal Edit Account -->
  <?php include 'view/partials/modal-edit-account.php'?>  

  <!-- Navbar -->
  <?php include 'view/partials/navbar.php'?>  

	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb bg-dark">
	  	<li class="breadcrumb-item caipl-link"><a href="index.php"><i class="material-icons">home</i></a></li>
	  	<?php
	  		if($_SESSION['account']['typeofaccount']==1) {
	  			echo '<li class="breadcrumb-item caipl-link"><a href="user-dashboard.php">User Dashboard</a></li>';
	  		}
	  		else {
	  			echo '<li class="breadcrumb-item caipl-link"><a href="admin-dashboard.php">Admin Dashboard</a></li>';
	  		}
	  	?>
	    
	    <li class="breadcrumb-item active text-warning" aria-current="page">Profile</li>
	  </ol>
	</nav>

	<div class="container mt-3 mh75vh">		
		<h2>Ang iyong profile, <?php echo $_SESSION['account']['firstname'] ?></h2>
		<span>Kunin ang mga hitsura at pakiramdam ng iyong profile</span>
		<div class="d-flex justify-content-end">
			<button class='btn btn-dark text-white' data-toggle="modal" data-target="#modal-edit-account">Ibahin ang profile</button>
		</div><hr>
		<div class="table-responsive">
			<table class="table table-striped table-bordered" id="accountListing">
			  	<?php
			  		$account = $_SESSION['account']['username'];
					$con = mysqli_connect("localhost","root","","caipl");
					$result = mysqli_query($con,"SELECT * FROM account_listing where username = '$account' order by account_type");
					while($row = mysqli_fetch_array($result))
					{
						echo "<tr>";
						echo "<th>Username</th>";
						echo "<td>" . $row['username'] . "</td>";
						echo "</tr>";
						
						echo "<tr>";
						echo "<th>First Name</th>";
						echo "<td>" . $row['firstname'] . "</td>";		
						echo "</tr>";

						echo "<tr>";
						echo "<th>Middle Name</th>";
						echo "<td>" . $row['middlename'] . "</td>";
						echo "</tr>";

						echo "<tr>";
						echo "<th>Last Name</th>";
						echo "<td>" . $row['lastname'] . "</td>";
						echo "</tr>";

						echo "<tr>";
						echo "<th>Account Type</th>";
						echo "<td>" . $row['account_type'] . "</td>";
						echo "</tr>";
					}
					mysqli_close($con);
				?>
			  </table>
		</div>

	</div>
	<script type="text/javascript">
		$(document).ready(function () {
			function RefreshTable() {
		       $("#accountListing").load("account-profile.php #accountListing");
		    }

			$('#editForm').on('submit', function (e) {
				e.preventDefault();
	            var serialized_array = $(this).serializeArray();
	            var data = {
	                action: 'edit-account'
	            };

	            for(var i = 0; i < serialized_array.length; i++) {
	                var item = serialized_array[i];
	                data[item.name] = item.value;
	            }
	            $('#modal-edit-account').modal('hide');
	            appDialog.confirm('Are you sure?', 'Are you sure you want to update the information of this account?', function (yes) {
	                if(yes) {
	                    var preloader = new appDialog.preloader('Updating');
	                    $.ajax({
	                        type: 'POST',
	                        url: 'config/api.php',
	                        data: data
	                    }).then(function(data) {
	                        if(data.error) appDialog.alert('Update Error: ' + data.error[0], data.error[1]);
	                        else appDialog.alert('Update Success', data.message, 
	                        	function(OK) { RefreshTable() }
	                        );

	                    }).catch(function (error) {
	                        appDialog.alert('Update Error', error.statusText || 'Server Error');
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
