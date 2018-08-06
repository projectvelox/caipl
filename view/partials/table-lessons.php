<div class="table-responsive">
	<table class="table table-striped table-bordered">
	  	<tr>
	  		<th>#</th>
	  		<th>Chapter and Lesson</th>
	  		<th>Chapter Name</th>
	  		<th>Chapter Description</th>
	  		<th>Lesson Name</th>
	  		<th>Lesson Description</th>
	  	</tr>
	  	<?php
	  		$i=0;
			$con = mysqli_connect("localhost","root","","caipl");
			$result = mysqli_query($con,"SELECT * FROM chapterandlessons_listing");
			while($row = mysqli_fetch_array($result))
			{
				$i++;
				echo "<tr>";
				echo "<td>" . $i . " </td>";
				echo "<td>" . $row['chapter_and_lesson'] . " </td>";
				echo "<td>" . $row['chapter_name'] . "</td>";		
				echo "<td>" . $row['chapter_description'] . "</td>";
				echo "<td>" . $row['lesson_name'] . "</td>";
				echo "<td>" . $row['lesson_description'] . "</td>";
				echo "</tr>";
			}
			mysqli_close($con);
		?>
	  </table>
</div>
