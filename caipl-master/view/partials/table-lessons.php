<div class="form-group">
    <h6>Chapters</h6>
	<select class="chapter-selection">
		<option selected disabled>Choose an option</option>
		<?php
	  		$i=0;
			$con = mysqli_connect("localhost","root","","caipl");
			$result = mysqli_query($con,"SELECT id, chapter_name FROM chapter");
			while($row = mysqli_fetch_array($result))
			{
				$i++;
				echo "<option value=" . $row['id'] . ">";
				echo $row['chapter_name'];
				echo "</option>";
			}
			mysqli_close($con);
		?>
	</select>
</div>

<div class="table-responsive">
	<table class="table table-striped table-bordered chapter-table">
	  	<tr>
	  		<th>#</th>
	  		<th>Chapter Name</th>
	  		<th>Chapter Description</th>
	  	</tr>
	  </table>
</div>

<div class="table-responsive">
	<table class="table table-striped table-bordered lesson-table">
	  	<tr>
	  		<th>#</th>
	  		<th>Lesson Name</th>
	  		<th>Lesson Description</th>
	  	</tr>
	  </table>
</div>
<script type="text/javascript">
	$('.chapter-selection').on('change', function() {
		$('.table-content').remove();
		$('.chapter-table').append("<?php
	  		$i=0;
			$con = mysqli_connect("localhost","root","","caipl");
			$result = mysqli_query($con,"SELECT * FROM chapter");
			while($row = mysqli_fetch_array($result))
			{
				$i++;
				echo "<tr class='table-content'>";
				echo "<td>" . $i . " </td>";
				echo "<td>" . $row['chapter_name'] . "</td>";		
				echo "<td>" . $row['chapter_description'] . "</td>";
				echo "</tr>";
			}
			mysqli_close($con);
		?>");

		$chapter_id = $('.chapter-selection').val();
		
		$('.lesson-table').append("<?php
	  		$i=0;
			$con = mysqli_connect("localhost","root","","caipl");
			$result = mysqli_query($con,"SELECT * FROM lesson WHERE chapter_id='" . $chapter_id . "'");
			while($row = mysqli_fetch_array($result))
			{
				$i++;
				echo "<tr class='table-content'>";
				echo "<td>" . $i . " </td>";
				echo "<td>" . $row['lesson_name'] . "</td>";
				echo "<td>" . $row['lesson_description'] . "</td>";
				echo "</tr>";
			}
			mysqli_close($con);
		?>");
	});
</script>