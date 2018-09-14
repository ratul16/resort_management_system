<?php
include "connect.php";
 ?>
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

<div id="assignbox">
   <form id="assignpage" action="assignroom.php" method="post">
      <h1>Assign Room</h1>

         <input name="customerid" type="text" class="assigninput" autocomplete="off" placeholder="Customer ID" required/>
         <br>
         <input name="roomid" type="text" class="assigninput" placeholder="Room ID" required/>
         <br>
         <input name="assign" type="submit" class="assignbutton" value="Assign Room" />

   </form>
   <?php

      if(isset($_POST['assign'])){
         //echo '<script type="text/javascript"> alert("Logged in xD !!")</script>';

         $query = "INSERT INTO assigned_rooms (customer_id,room_id)
         VALUES ('".($_POST['customerid'])."','".($_POST['roomid'])."')";

         $query_run = mysqli_query($con,$query);

         if ($query_run) {
            //vaild
            echo '<script type="text/javascript"> alert("Assigned Successfully !!")</script>';
         }
         else {
            //Invaild
            echo '<script type="text/javascript"> alert("Assigned Unsuccessfully !!")</script>';
         }

      }

mysqli_close($con);

    ?>

</div>
