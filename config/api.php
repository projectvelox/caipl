<?php 
	include 'config-file.php';
	
	if($_POST["action"]=="create-account"){
		$studentid = $_POST['studentid'];
		$username = $_POST['username'];
		$password = $_POST['password'];
		$firstname = $_POST['firstname'];
		$middlename = $_POST['middlename'];
		$lastname = $_POST['lastname'];

		$sql = "INSERT INTO accounts(idnumber, username, password, firstname, middlename, lastname) VALUES ('$studentid', '$username', '$password', '$firstname', '$middlename', '$lastname')";
		$result = mysqli_query($con,$sql);
	}
?>