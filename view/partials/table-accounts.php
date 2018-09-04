<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover" id="accountListing">
	  	<tr>
	  		<th>#</th>
	  		<th>Username</th>
	  		<th>First Name</th>
	  		<th>Middle Name</th>
	  		<th>Last Name</th>
	  		<th>Account Type</th>
	  		<th>Action</th>
	  	</tr>
	  	<?php
	  		$i=0;
	  		$account = $_SESSION['account']['username'];
			$con = mysqli_connect("localhost","root","","caipl");
			$result = mysqli_query($con,"SELECT * FROM account_listing where username != '$account' order by account_type");
			while($row = mysqli_fetch_array($result))
			{
				$i++;
				echo "<tr>";
				echo "<td>" . $i . " </td>";
				echo "<td><strong>" . $row['username'] . "<strong></td>";
				echo "<td>" . $row['firstname'] . "</td>";		
				echo "<td>" . $row['middlename'] . "</td>";
				echo "<td>" . $row['lastname'] . "</td>";
				echo "<td>" . $row['account_type'] . "</td>";
				echo 
				"<td>
					<button class='btn btn-dark text-white caipl-btn' data-toggle='modal' data-target='#modal-edit-account' id='editProfileModal' data-username='".$row['username']."'' data-firstname='".$row['firstname']."' data-middlename='".$row['middlename']."' data-lastname='".$row['lastname']."' data-password='".$row['password']."'>
						<i class='material-icons'>edit</i>
					</button>
					<button class='btn btn-danger text-white caipl-btn' id='deleteProfile' data-username='".$row['username']."'>
						<i class='material-icons'>delete</i>
					</button>
				</td>";
				echo "</tr>";
			}
			mysqli_close($con);
		?>
	  </table>
</div>
