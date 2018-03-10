<?php
include "include/header.php";
include "connect.php";
?>

<link rel="stylesheet" href="style.css">
<div id="loginbox">
   <form id="loginpage" action="contact.php" method="post">
      <h1>Contact Us</h1>

      <input type="text" class="input" name="name" placeholder="Name" required/>
      <br>
      <input type="text" class="input" name="email" placeholder="Email" required/>
      <br>
      <textarea class="input" rows="8" cols="50" name="message" placeholder="Write your comment here..." required/></textarea>
      <br>
      <input name="msg" type="submit" class="loginbutton" value="Submit">

   </form>

   <?php

   if (isset($_POST['msg'])) {
     //echo '<script type="text/javascript"> alert("review button click")</script>';
     $query = "INSERT INTO message (name,email,message)
     VALUES ('".$_POST['name']."','".$_POST['email']."','".$_POST['message']."')";



     $query_run = mysqli_query ($con,$query);

     if ($query_run) {
        echo '<script type="text/javascript"> alert("Message Submitted")</script>';
     }
     else {
        echo '<script type="text/javascript"> alert("!! ERROR !!")</script>';
     }


   }

mysqli_close($con);

   ?>

</div>
