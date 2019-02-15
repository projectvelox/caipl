<?php
    if(empty(session_id()))session_start();
	include 'config-file.php';


    header('Content-Type: application/json');
	switch ($_POST["action"]) {


	    // Create Account
	    case 'create-account':
            $studentid = $_POST['studentid'];
            $username = $_POST['username'];
            $password = $_POST['password'];
            $firstname = $_POST['firstname'];
            $middlename = $_POST['middlename'];
            $lastname = $_POST['lastname'];

            $sql = "INSERT INTO accounts(idnumber, username, password, firstname, middlename, lastname, typeofaccount) VALUES ('$studentid', '$username', '$password', '$firstname', '$middlename', '$lastname', '1')";
            $result = mysqli_query($con,$sql);

            if($result) echo json_encode(['message' => 'Successfully created your account <b>'.$_POST['username'].'</b>']);
            else echo json_encode(['error' => ['DB_ERROR', mysqli_error($con)]]);
            break;


        // Login Account
        case 'login-account':
            $username = mysqli_real_escape_string($con, $_POST['username'] ?: '');
            $password = $_POST['password'] ?: '';
            $sql = "
                SELECT * 
                FROM accounts
                WHERE username='$username'
            ";
            $result = mysqli_query($con,$sql);

            if($result) {
                $account = mysqli_fetch_assoc($result);
                if($account) {
                    if($account['password'] == $password) {
                        $redirect = '';
                        switch ($account['status']) {
                            case '1':
                                echo json_encode(['error' => ['WRONG_USERNAME', 'Account not yet validated']]);
                                break;
                            case '2':
                                switch ($account['typeofaccount']) {
                                    case '1': $redirect = 'user-dashboard.php'; break;
                                    case '2': $redirect = 'admin-dashboard.php'; break;
                                }
                                $_SESSION['account'] = $account;
                                echo json_encode(['redirect' => $redirect]);
                                break;
                        } 
                        
                    }
                    else {
                        echo json_encode(['error' => ['WRONG_PASSWORD', 'Wrong Password.']]);
                    }
                }
                else {
                    echo json_encode(['error' => ['WRONG_USERNAME', 'Username does not exist.']]);
                }
            }
            else echo json_encode(['error' => ['DB_ERROR', mysqli_error($con)]]);
            break;


        case 'register-account':
            $studentid = $_POST['studentid'];
            $username = $_POST['username'];
            $password = $_POST['password'];
            $firstname = $_POST['firstname'];
            $middlename = $_POST['middlename'];
            $lastname = $_POST['lastname'];
            $typeofaccount = $_POST['typeofaccount'];

            $sql = "INSERT INTO accounts(idnumber, username, password, firstname, middlename, lastname, typeofaccount) VALUES ('$studentid', '$username', '$password', '$firstname', '$middlename', '$lastname', '$typeofaccount')";
            $result = mysqli_query($con,$sql);

            if($result) echo json_encode(['message' => 'Successfully created your account <b>'.$_POST['username'].'</b>']);
            else echo json_encode(['error' => ['DB_ERROR', mysqli_error($con)]]);
            break;

        case 'edit-account':
            $password = $_POST['password'];
            $firstname = $_POST['firstname'];
            $middlename = $_POST['middlename'];
            $lastname = $_POST['lastname'];
            $username = $_POST['username'];

            $sql = "UPDATE accounts
                    SET firstname='$firstname', 
                        middlename='$middlename', 
                        lastname='$lastname', 
                        password='$password' 
                    WHERE username='$username'";
            $result = mysqli_query($con,$sql);

            if($result) echo json_encode(['message' => 'Successfully updated your account details <b>'.$_POST['username'].'</b>']);
            else echo json_encode(['error' => ['DB_ERROR', mysqli_error($con)]]);
            break;

        case 'delete-account':
            $username = $_POST['username'];

            $sql = "DELETE FROM accounts
                    WHERE username='$username'";
            $result = mysqli_query($con,$sql);

            if($result) echo json_encode(['message' => 'Successfully deleted the account <b>'.$_POST['username'].'</b>']);
            else echo json_encode(['error' => ['DB_ERROR', mysqli_error($con)]]);
            break;

        case 'validate-account':
            $username = $_POST['username'];

            $sql = "UPDATE accounts
                    SET status='2'
                    WHERE username='$username'";
            $result = mysqli_query($con,$sql);

            if($result) echo json_encode(['message' => 'Successfully deleted the account <b>'.$_POST['username'].'</b>']);
            else echo json_encode(['error' => ['DB_ERROR', mysqli_error($con)]]);
            break;


        case 'create-chapter':

            $chaptername = $_POST['chaptername'];
            $chapterdescription = $_POST['chapterdescription'];

            $sql = "INSERT INTO chapter(chapter_name, chapter_description) VALUES ('$chaptername', '$chapterdescription')";
            $result = mysqli_query($con,$sql);

            if($result) echo json_encode(['message' => 'Successfully added chapter <b>'.$_POST['username'].'</b>']);
            else echo json_encode(['error' => ['DB_ERROR', mysqli_error($con)]]);
            break;

        case 'create-lesson':

            $chapterid = $_POST['lessonchaptername'];
            $lessonname = $_POST['lessonname'];
            $lessondescription = $_POST['lessondescription'];

            $sql = "INSERT INTO lesson(chapter_id, lesson_name, lesson_description) VALUES ('$chapterid', '$lessonname', '$lessondescription')";
            $result = mysqli_query($con,$sql); 

            if($result) echo json_encode(['message' => 'Successfully added lesson']);
            else echo json_encode(['error' => ['DB_ERROR', mysqli_error($con)]]); 
            break;

        case 'check-quiz':
            // $chapterid = $_POST['lessonchaptername'];
            // $lessonname = $_POST['lessonname'];
            // $lessondescription = $_POST['lessondescription'];

            // $sql = "INSERT INTO lesson(chapter_id, lesson_name, lesson_description) VALUES ('$chapterid', '$lessonname', '$lessondescription')";
            $result = mysqli_query($con,$sql);

            if($result) echo json_encode(['message' => 'Successfully checked quiz <b>'.$_POST['username'].'</b>']);
            else echo json_encode(['error' => ['DB_ERROR', mysqli_error($con)]]);
            break;
        
        case 'delete-lesson':
            $id = $_POST['id'];

            $sql = "DELETE FROM lesson WHERE id='$id'";;
            
            $result = mysqli_query($con,$sql);

            if($result) echo json_encode(['message' => 'Successfully deleted from the list of lessons on our database.']);
            else echo json_encode(['error' => ['DB_ERROR', mysqli_error($con)]]);
            break;


        // Action Not Found

        default:
            echo json_encode(['error' => ['ACTION_NOT_FOUND', 'Action not found.']]);
            break;
    }