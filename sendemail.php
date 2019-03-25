<?php


include('conn.php');
if(isset($_POST['submit'])){
	$name = $_POST['name'];
	$subject = $_POST['subject'];
	$email = $_POST['email'];
	$contact = $_POST['contact'];
	$description = $_POST['desc'];


	$query = "INSERT INTO user_enquiry_details(name, subject, email, contact, description) VALUES ('$name', '$subject', '$email', '$contact','$description')";
        $result = mysqli_query($con, $query);

	 if($result){

		 echo"Processing....";
	  }else{
            echo"User Registration Failed";

        }
    }




?>

<html>

   <head>
      <title>Sending HTML email using PHP</title>
   </head>

   <body>

      <?php
			   $myemail = "ishwarsonar95@gmail.com";
         $to = $_POST['email'];
         $subject = $_POST['subject'];
				 $headers = "MIME-Version: 1.0"."\r\n";
				 $headers = "Content-type:text/html;charset=UTF-8"."\r\n";

         $message ="
<html>
<head>
<title>Enquiry Details</title>
</head>
<body>
<h3>Enquiry Form Submitted By $name</h3><br>
<h2>Details Below:</h2><br>
<table>
<tr>
<th>Name</th>
<th>Email</th>
<th>Contact</th>
<th>Description</th>
</tr>
<tr>
<td>$name</td>
<td>$email</td>
<td>$contact</td>
<td>$description</td>
</tr>
</table>
</body>
</html>
";

         $retval = mail($to,$subject,$message);


         if( $retval == true ) {
					 	$retval = mail($myemail,$subject,$message,$headers);
            echo "<center><div align='center'>";
	    echo "<h1 style='font-family:arial, verdana; font-size:15pt;'>Your enquiry has been sent successfully!</h1>";
	    echo "  <br /> ";
			echo"<a href='contact.php'>Click here to Submit another response</a>";

         }else {
	    echo "<center><div align='center'>";
	    echo "<h1 style='font-family:arial, verdana; font-size:15pt;'>Could not be sent!</h1>";
	    echo "  <br /> ";



         }
      ?>

   </body>
</html>
