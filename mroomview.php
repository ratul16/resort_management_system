<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <link rel="stylesheet" href="style.css">
   <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
   <title>ADMIN</title>
</head>
<body>
   <header>
      <div class="navbar">

         <nav>
            <ul>
               <li id="title"><a href="Login.php">Logout</a></li>
               <li><a href="index.php"> Home </a></li>
               <li><a href="mreview.php"> Review </a></li>
               <li><a href="msg.php"> Messages </a></li>
               <li><a href="mroomview.php"> Rooms </a></li>
               <li><a href="managerview.php">Requested Rooms</a></li>
               <li><a href="assignroom.php"> Assign Room </a></li>
            </ul>
         </nav>

      </div>
   </header>


<?php

 include "connect.php";

 if(!mysqli_connect_errno())
 {
   $reviews = mysqli_query($con, "SELECT * FROM resort_rooms");

 }
?>

  <center><h1>Rooms</h1></center>
<div >

   <table class="left">
      <caption><h3>Rooms empty</h3></caption>
     <thead>
       <th>Room ID</th>
       <th>Room Type</th>
     </thead>

     <tbody>
       <?php

         foreach($reviews as $review)
         { ?>
           <tr>
             <td> <?php echo $review['Room_id'];?></td>
             <td> <?php echo $review['Type'];?></td>
           </tr>
           <?php

         };
        ?>
        <?php

         if(!mysqli_connect_errno())
         {
           $reviews = mysqli_query($con, "SELECT * FROM assigned_rooms");
           mysqli_close($con);
         }
        ?>


   <table class="right">
      <caption><h3>Rooms Filled</h3></caption>
     <thead>
      <th>Customer ID</th>
      <th>Room ID</th>
     </thead>

     <tbody>
      <?php

         foreach($reviews as $review)
         { ?>
           <tr>
             <td> <?php echo $review['customer_id'];?></td>
             <td> <?php echo $review['room_id'];?></td>
           </tr>
           <?php

         };


        ?>

</div>
