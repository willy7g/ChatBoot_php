<?php
include"db.php";
   
if(isset($_POST['text'])){

$msg=mysqli_real_escape_string($conn,$_POST["text"]);

$query=mysqli_query($conn,"SELECT * FROM question WHERE question RLIKE '[[:<:]]".$msg."[[:>:]]'");
$count = mysqli_num_rows($query);

    if($count=="0"){
		
		$data = "Lo siento pero no estoy exactamente clara cómo ayudarte, prengutame algo sobre los menu de hoy y con gusto te ayudare!!. Me encanta ayudar!!";
		$query4=mysqli_query($conn,"insert into chats(user,chatbot,action,date)values('$msg','$data','text','$server_time')");
		
	}else{
		while($row = mysqli_fetch_array($query)){
				
				$data= $row['answer'];
				
                $action =$row['action'];




				$query4=mysqli_query($conn,"insert into chats(user,chatbot,action,date)values('$msg','$data','$action','$server_time')");
			}
		}
}	
?>