<?php
if(empty(session_id()))session_start();
include 'config-file.php';


switch ($_POST["action"]) {

    case 'get-results':
        $id = $_POST['id'];
        $i=0;
        $sql = "SELECT * FROM quiz WHERE lesson_id='$id'";
        $result = mysqli_query($con,$sql);
        $student = $_SESSION['account']['firstname'] . " " . $_SESSION['account']['middlename'] . " " . $_SESSION['account']['lastname'];

        $score = 0;    
        $total = mysqli_num_rows($result);        

        $insertsql = "INSERT INTO scores(quiz_id, student, score) VALUES ('$id', '$student', '$total')";
        $insertresult = mysqli_query($con,$insertsql);

        while ($row = mysqli_fetch_array($result)) {                            
            $answer = $row['answer'];

            $q = $_POST['optradio_'.$row["id"]];

            $question = $row["quiz_question"];
            $scorequery = "SELECT * FROM scores ORDER BY score_id DESC";
            $scoreresults = mysqli_query($con,$scorequery);
            $scorerow = mysqli_fetch_assoc($scoreresults);
            $scoreid = $scorerow['score_id'];

            if ($q == $answer) {                
                $score++;                 
            }
            else if($q != $answer) {
                switch ($q) {
                    case '1':
                        $answers = $row['option_1'];
                        break;
                    case '2':
                        $answers = $row['option_2'];
                        break;
                    case '3':
                        $answers = $row['option_3'];
                        break;
                    case '4':
                        $answers = $row['option_4'];
                        break;
                }
                switch ($answer) {
                    case '1':
                        $answer = $row['option_1'];
                        break;
                    case '2':
                        $answer = $row['option_2'];
                        break;
                    case '3':
                        $answer = $row['option_3'];
                        break;
                    case '4':
                        $answer = $row['option_4'];
                        break;
                }

                $insertsqls = "INSERT INTO scores_listing(score_id,question, answer, student, correct) VALUES ('$scoreid','$question', '$answers', '$student', '$answer')";
                $insertresults = mysqli_query($con,$insertsqls);


            }
        }

        echo $scoreid;
        break;


        default:
        echo json_encode(['error' => ['ACTION_NOT_FOUND', 'Action not found.']]);
        break;
    }