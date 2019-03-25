<?php 
$host = "localhost";
$username = "root";
$password = "";
$database = "enquiry";
$con = mysqli_connect("$host","$username","$password","$database");
if(!$con){
    die("Database Connection Failed" . mysqli_error($con));
}

?>




