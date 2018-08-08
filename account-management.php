<!DOCTYPE html>
<html>

<!-- Head -->
<?php include 'view/partials/header.php'?>

<body>
  <!-- Modal Create Account -->
  <?php include 'view/partials/modal-create-account.php'?>  

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
		<span>Get a view of all the accounts in the system. Create, edit, delete exisiting or non-existing records.</span>
		<div class="d-flex justify-content-end">
			<button type="button" class="btn btn-dark" id="create-account" data-toggle="modal" data-target="#modal-create-account">Create Account</button>
		</div><hr>
		<?php include "view/partials/table-accounts.php"?>
	</div>
	<script type="text/javascript">
		$(document).ready(function () {
		
			$(".typeofaccount").change(function() {
	            var type = $('.typeofaccount').find(":selected").val();
	            if(type=="2"){
	            	$("#visibility-studentid").hide();
	            }
	            else {
	            	$("#visibility-studentid").show();
	            }
	        });

			$('#registerForm').on('submit', function (e) {
				e.preventDefault();
	            var serialized_array = $(this).serializeArray();
	            var data = {
	                action: 'register-account'
	            };
	            for(var i = 0; i < serialized_array.length; i++) {
	                var item = serialized_array[i];
	                data[item.name] = item.value;
	            }
	            $('#modal-create-account').modal('hide');
	            appDialog.confirm('Are you sure?', 'Are you sure you want to register this account?', function (yes) {
	                if(yes) {
	                    var preloader = new appDialog.preloader('Registering');
	                    $.ajax({
	                        type: 'POST',
	                        url: 'config/api.php',
	                        data: data
	                    }).then(function(data) {
	                        if(data.error) appDialog.alert('Registration Error: ' + data.error[0], data.error[1]);
	                        else appDialog.alert('Registration Success', data.message, 
	                        	function(OK) {
	                        		if(OK){
	                        			$("#accountListing").ajax.reload();
	                        		}
	                        	}
	                        );

	                    }).catch(function (error) {
	                        appDialog.alert('Registration Error', error.statusText || 'Server Error');
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
