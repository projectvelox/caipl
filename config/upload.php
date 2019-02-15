<?php
    include 'config-file.php';
    header('Content-Type: application/json');
    
    $chapterid = $_POST['lessonchaptername'];
    $lessonname = $_POST['lessonname'];
    $lessondescription = $_POST['lessondescription'];

    $sql = "INSERT INTO lesson(chapter_id, lesson_name, lesson_description) VALUES ('$chapterid', '$lessonname', '$lessondescription')";
    $result = mysqli_query($con,$sql); 

    $retrieveSql = "
            SELECT * 
            FROM lesson
            ORDER BY id DESC
            LIMIT 1
        ";
    $retrieveResult = mysqli_query($con,$retrieveSql);
    $account = mysqli_fetch_assoc($retrieveResult);
    
    $target_dir = "../documentation/PDF/";
    $target_file = $target_dir . $account['id'] . ".pdf";
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    // Check if image file is a actual image or fake image
    if ($uploadOk == 0) {
         echo json_encode(['error' => ['Incompatible File Format', "Sorry we only support PDF Files"]]);
    // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES['fileToUpload']['tmp_name'],$target_file)) {
            if($result) echo json_encode(['message' => 'Successfully added lesson']);
            else echo json_encode(['error' => ['DB_ERROR', mysqli_error($con)]]);
            header("Location: ../view-lesson-admin.php?id=".$account['id']);
        } else {
            echo json_encode(['error' => ['Upload Failed', "Uploading of the pdf file failed"]]);
            header("Location: ../create-lesson.php");
        }
    }
?>