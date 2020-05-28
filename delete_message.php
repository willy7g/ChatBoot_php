<?php

include "db.php";
$query=mysqli_query($conn," update chats SET del_msg='0'");

?>