<?php
    session_start();
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
                        $_SESSION['account'] = $account;
                        $redirect = '';
                        switch ($account['typeofaccount']) {
                            case '1': $redirect = 'user-dashboard.php'; break;
                            case '2': $redirect = 'admin-dashboard.php'; break;
                        }
                        echo json_encode(['redirect' => $redirect]);
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
        
        // Action Not Found

        default:
            echo json_encode(['error' => ['ACTION_NOT_FOUND', 'Action not found.']]);
            break;
    }