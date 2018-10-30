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
            $q = 'optradio_2';

            /* $q = trim($q);
            if ($_POST[$q] == $answer) {                
                $score++;                 
            }*/
        }       
        
        echo $print_r[$q];

        break;


        default:
        echo json_encode(['error' => ['ACTION_NOT_FOUND', 'Action not found.']]);
        break;
    }