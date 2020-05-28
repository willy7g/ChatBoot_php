<?php include "db.php"; ?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="estilos/estilos.css">
 <link rel="stylesheet" href="css/style.css">

<style type="text/css">
	.cuerpo{
		padding-top: 60px;
		margin-top: 80px;
	}
</style>



</head>





<body>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<a href="https://api.whatsapp.com/send?phone=50257038259&text=Bienvidos!!!%20Mucho%20Gusto" class="float" target="_blank">
<i class="fa fa-whatsapp my-float"></i>
</a>
<br>
<br>
<br>
  
 <form id="cuerpo">
 	



  	


<span id="ref">
<div class="square">
  <p> <span class="badge badge-light">ChatBot</span>  Interactua   </p>
<center><h1><span class="logo-lg"><b>Chat</b>Bot</span></h1></center>


<button class="btn btn-primary" style="margin-left: 600px;" onclick="delete_message()">
  <i class="fa fa-trash-o fa-lg"></i>Limpiar
</button>




<br/>
  <?php 
    $query="select * from chats where del_msg='1' ORDER by date DESC";
    $res=mysqli_query($conn,$query);
    while($data=mysqli_fetch_array($res)){
      $user=$data['user'];
      $chatbot=$data['chatbot'];
      $date=$data['date'];
      $timestamp = strtotime($date);


$action=$data['action'];


        $child1 = date('n.j.Y', $timestamp); // d.m.YYYY
        $child2 = date('g:i a', $timestamp); // HH:ss
    ?>

<?php if ($action=='text') {?>



  <div class="container1" style="margin-right: 400px;">
    <img src="user/user.jpg" alt="Avatar" style="width:100%;">
    <p id="message"><?php echo $user;?></p>
    <span class="time-right"><?php echo $child2;?></span>
  </div>

  <div class="container1 darker" style="margin-left: 400px;">
    <img src="user/bot.png" alt="Avatar" class="right" style="width:100%;">
<div id="texto">
     <p ><?php echo $chatbot;?></p> 
</div>
 

  


    <span class="time-left"><?php echo $child2;?></span>
  </div>



<?php } else {?>



  <div class="container1" style="margin-right: 400px;">
    <img src="user/user.jpg" alt="Avatar" style="width:100%;">
    <p id="message"><?php echo $user;?></p>
    <span class="time-right"><?php echo $child2;?></span>
  </div>

  <div class="container1 darker" style="margin-left: 400px;">
     <img src="user/bot.png" alt="Avatar" class="right" style="width:100%;">
    <p><?php eval($chatbot);?></p>

    <span class="time-left"><?php echo $child2;?></span>
  </div>



<?php } ?>






<?php } ?>
<div class="sticky">
  <div class="row">
     <div class="col-md-12">
       <div class="input-group mb-3">
          <input type="text" class="form-control" id="msg" onkeyup="digitsOnly(this)" >
          <br>
            <div class="input-group-append">
                <button class="btn btn-outline-secondary" type="button" onclick="send()">Enviar</button>
            </div>
        </div>
   </div>
  </div>
</div>
</div>
</span>
<br/>


  
 </form>








<script type="text/javascript">
  function send(){
    var text=$('#msg').val().toLowerCase();
    
     $.ajax({
                type:"post",
                url:"mysearch.php",
                data:{text:text},
                success:function(data){
                    //alert(data);
                    $('#ref').load(' #ref');
                }
      });
  }
</script>

<script type="text/javascript">
  


function delete_message(){

$.ajax({

 type:"post",
 url:"delete_message.php",
 success:function(data){


 $('#ref').load(' #ref');



 }


});


}



</script>



<script src="script.js"></script>
</body>
</html>
