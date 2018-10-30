<?php
if(empty(session_id()))session_start();
include 'config-file.php';


switch ($_POST["action"]) {

    case 'get-results':
        $id = $_POST['id'];
        $i=0;
        $sql = "SELECT * FROM quiz WHERE lesson_id='$id'";
        $result = mysqli_query($con,$sql);

        $score = 0;    
        $total = mysqli_num_rows($result);        

        while ($row = mysqli_fetch_array($result)) {                            
            $answer = $row['answer'];            
            $q = $_POST['optradio_'.$row["id"]];
            if ($q == $answer) {                
                $score++;                 
            }
        }

        $student = $_SESSION['account']['firstname'] . " " . $_SESSION['account']['middlename'] . " " . $_SESSION['account']['lastname'];
        $totalscore = $score . "/" . $total;
        $insertsql = "INSERT INTO scores(quiz_id, student, score) VALUES ('$id', '$student', '$totalscore')";
        $insertresult = mysqli_query($con,$insertsql);
        
        echo $totalscore;
        break;


        default:
        echo json_encode(['error' => ['ACTION_NOT_FOUND', 'Action not found.']]);
        break;
    }