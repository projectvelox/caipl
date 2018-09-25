<?php
$con = mysqli_connect("localhost","root","","caipl");

// Check connection
if (mysqli_connect_errno())
  {
      http_response_code(500);
      echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>