<div class="table-responsive">
	<table class="table table-striped table-bordered">
	  	<tr>
	  		<th>#</th>
	  		<th>Chapter</th>
	  		<th>Lesson</th>
	  		<th>Question</th>
	  		<th>A</th>
	  		<th>B</th>
	  		<th>C</th>
	  		<th>D</th>
	  		<th>Answer</th>
	  	</tr>
	  	<?php
	  		$i=0;
			$con = mysqli_connect("localhost","root","","caipl");
			$result = mysqli_query($con,"SELECT * FROM quiz_listing");
			while($row = mysqli_fetch_array($result))
			{
				$i++;
				echo "<tr>";
				echo "<td>" . $i . " </td>";
				echo "<td>" . $row['chapter_name'] . " </td>";
				echo "<td>" . $row['lesson_name'] . "</td>";		
				echo "<td>" . $row['quiz_question'] . "</td>";
				echo "<td>" . $row['option_1'] . "</td>";
				echo "<td>" . $row['option_2'] . "</td>";
				echo "<td>" . $row['option_3'] . "</td>";
				echo "<td>" . $row['option_4'] . "</td>";
				echo "<td>" . $row['answer'] . "</td>";
				echo "</tr>";
			}
			mysqli_close($con);
		?>
	  </table>
</div>
