<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "chatbot";
// Create connection

date_default_timezone_set('America/Guatemala');
$server_time = date('Y-m-d H:i:s');

$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
else{
	//echo 'Connected ....';
}
?>
