<?php
$submit=false;
if(isset($_POST['firstname'])){
    $server="localhost";
    $username="root";
    $password="";

    $con=mysqli_connect($server,$username,$password);

    if(!$con)
    {
        die("connection to the database failed due to".mysqli_connect_error());
    }

    $firstname=$_POST['firstname'];
    $middlename=$_POST['middlename'];
    $lastname=$_POST['lastname'];
    $age=$_POST['age'];
    $gender=$_POST['gender'];
    $study=$_POST['study'];
    $enroll=$_POST['enroll'];
    $regs=$_POST['regs'];
    $email=$_POST['email'];
    $contact=$_POST['contact'];
    $address=$_POST['address'];

    $sql = "INSERT INTO `Travel Info`.`Student Info` (`First Name`,`Middle Name` ,`Last Name`, `Age`, `Gender`,
    `Year of Study`, `Enrollment No.`, `Registration No.`, `Email ID`, `Contact No.`, `Address`, `Date`) 
    VALUES ('$firstname', '$middlename', '$lastname', '$age', '$gender', '$study', '$enroll', 
    '$regs', '$email', '$contact', '$address', CURRENT_TIMESTAMP());";


     if($con->query($sql)==true)
     {
        $submit=true;
     }
     else{
        echo "Error: $sql <br>$con->error";
     }
    $con->close();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Form</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="container">
        <h1>Welcome to UEM France Trip Travel Form</h1>
        <p>Enter your details and submit this form to confirm your participation</p>
        <?php
        if($submit==true){
            echo "<p class='submsg'>Your Details has been Successfully Submitted.Thank You!</p>";
        }
        ?>
        <form action="index.php" method="POST">
            <label for="fname">Enter your First Name:</label>
            <input type="text" name="firstname" id="fname"><br>
            <label for="mname">Enter your Middle Name:</label>
            <input type="text" name="middlename" id="mname"><br>
            <label for="lname" >Enter your Last Name:</label>
            <input type="text" name="lastname" id="lname"><br>
            <label for="age">Age:</label>
            <input type="number" name="age" id="age"><br>
            <label for="gender">Gender:</label>
            <input type="radio" name="gender" id="gender" value="Male"><span>Male</span>
            <input type="radio" name="gender" id="gender" value="Female"><span>Female</span> <br>
            <label for="year"> Year of Study:</label>
            <select name="study" id="year">
                <option value="1st">1st Year</option>
                <option value="2nd">2nd Year</option>
                <option value="3rd">3rd Year</option>
                <option value="4th">4th Year</option>
            </select> <br>
            <label for="enroll">Enrollment Number:</label>
            <input type="text" name="enroll" id="enroll"><br>
            <label for="regs">Registration Number:</label>
            <input type="text" name="regs" id="regs"><br>
            <label for="mail" >Email ID:</label>
            <input type="email" name="email" id="mail"> <br>
            <label for="contact">Contact Number:</label>
            <input type="text" name="contact" id="contact"><br>
            <label for="address" >Address:</label>
            <textarea name="address" id="address" cols="35" rows="10"></textarea> <br>
            <input type="submit" value="Submit" id="sub">
            <input type="reset" value="Reset" id="res">
        </form>
    </div>
    
    
</body>
</html>
