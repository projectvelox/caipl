<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	  	<tr>
	  		<th>#</th>
	  		<th>Username</th>
	  		<th>First Name</th>
	  		<th>Middle Name</th>
	  		<th>Last Name</th>
	  		<th>Account Type</th>
	  	</tr>
	  	<?php
	  		$i=0;
			$con = mysqli_connect("localhost","root","","caipl");
			$result = mysqli_query($con,"SELECT * FROM account_listing");
			while($row = mysqli_fetch_array($result))
			{
				$i++;
				echo "<tr>";
				echo "<td>" . $i . " </td>";
				echo "<td>" . $row['username'] . " </td>";
				echo "<td>" . $row['firstname'] . "</td>";		
				echo "<td>" . $row['middlename'] . "</td>";
				echo "<td>" . $row['lastname'] . "</td>";
				echo "<td>" . $row['account_type'] . "</td>";
				echo "</tr>";
			}
			mysqli_close($con);
		?>
	  </table>
</div>
