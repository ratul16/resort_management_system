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
   $reviews = mysqli_query($con, "SELECT * FROM rating");
   mysqli_close($con);
 }
?>

  <center><h1>Reviews</h1></center>

  <table>
    <thead>
      <th>Stars</th>
      <th>Comments</th>
    </thead>

    <tbody>
      <?php

        $sl_no= 1;
        foreach($reviews as $review)
        { ?>
          <tr>
            <td> <?php echo $review['star'];?></td>
            <td> <?php echo $review['comnt'];?></td>
          </tr>
          <?php
          $sl_no++;

        };


       ?>
