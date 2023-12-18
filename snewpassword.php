<?php
ini_set( 'display_errors', 1 );
ini_set( 'display_startup_errors', 1 );
error_reporting( E_ALL );

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'PHPMailer-master/src/Exception.php';
require 'PHPMailer-master/src/PHPMailer.php';
require 'PHPMailer-master/src/SMTP.php';
session_start();
include 'db.php';
date_default_timezone_set( 'Asia/Dhaka' );
$current_time = date( 'Y-m-d H:i:s' );

if ( $_SERVER[ 'REQUEST_METHOD' ] == 'POST' ) {

    $id = $_SESSION[ 'sid' ];
    $sql = "Select * from student where id='$id'";
    $result = mysqli_query( $conn, $sql );
    $data = $result->fetch_assoc() ;
    $num = mysqli_num_rows( $result );
    if ( $num == 1 ) {
        $email = $data[ 'email' ] ;
        $password = mysqli_real_escape_string( $conn, $_POST[ 'password' ] );

        $minLength = 8;
        if (
            strlen( $password ) >= $minLength &&
            preg_match( '/[A-Z]/', $password ) &&
            preg_match( '/[a-z]/', $password ) &&
            preg_match( '/\d/', $password ) &&
            preg_match( '/[^A-Za-z0-9]/', $password )
        ) {
            $newpassword = hash( 'sha3-256', $password );

            $sql = "UPDATE `student` SET `password`='$newpassword' WHERE id='$id'";
            mysqli_query( $conn, $sql );

            $iphone = strpos( $_SERVER[ 'HTTP_USER_AGENT' ], 'iPhone' );

            $android = strpos( $_SERVER[ 'HTTP_USER_AGENT' ], 'Android' );

            $ipod = strpos( $_SERVER[ 'HTTP_USER_AGENT' ], 'iPod' );
            if ( $android ) {

                $mail = new PHPMailer( true );
                $mail->isSMTP();
                $mail->Host = 'smtp.gmail.com';
                $mail->SMTPAuth = true;
                $mail->Username = 'uiu.ecats@gmail.com';
                $mail->Password = 'stnjrrnsuauyhmbd';
                $mail->SMTPSecure = 'ssl';
                $mail->Port = 465;
                $mail->setFrom( 'uiu.ecats@gmail.com' );
                $mail->addAddress( $email );
                $mail->Subject = 'Password Change!! ';
                $mail->Body = "Your  Password is Changed at $current_time from a Android device ;  ";
                $mail->send();

                header( 'location:slogin.php' );

            } elseif ( $iphone ) {
                $mail = new PHPMailer( true );
                $mail->isSMTP();
                $mail->Host = 'smtp.gmail.com';
                $mail->SMTPAuth = true;
                $mail->Username = 'uiu.ecats@gmail.com';
                $mail->Password = 'stnjrrnsuauyhmbd';
                $mail->SMTPSecure = 'ssl';
                $mail->Port = 465;
                $mail->setFrom( 'uiu.ecats@gmail.com' );
                $mail->addAddress( $email );
                $mail->Subject = 'Password Change!! ';
                $mail->Body = "Your  Password is Changed at $current_time from a Iphone ;  ";
                $mail->send();

                header( 'location:slogin.php' );

            } elseif ( $ipod ) {
                $mail = new PHPMailer( true );
                $mail->isSMTP();
                $mail->Host = 'smtp.gmail.com';
                $mail->SMTPAuth = true;
                $mail->Username = 'uiu.ecats@gmail.com';
                $mail->Password = 'stnjrrnsuauyhmbd';
                $mail->SMTPSecure = 'ssl';
                $mail->Port = 465;
                $mail->setFrom( 'uiu.ecats@gmail.com' );
                $mail->addAddress( $email );
                $mail->Subject = 'Password Change!! ';
                $mail->Body = "Your  Password is Changed at $current_time from a Ipad ;  ";
                $mail->send();

                header( 'location:slogin.php' );
            } else {

                $mail = new PHPMailer( true );
                $mail->isSMTP();
                $mail->Host = 'smtp.gmail.com';
                $mail->SMTPAuth = true;
                $mail->Username = 'uiu.ecats@gmail.com';
                $mail->Password = 'stnjrrnsuauyhmbd';
                $mail->SMTPSecure = 'ssl';
                $mail->Port = 465;
                $mail->setFrom( 'uiu.ecats@gmail.com' );
                $mail->addAddress( $email );
                $mail->Subject = 'Password Change!! ';
                $mail->Body = "Your  Password is Changed at $current_time from a Laptop ;  ";
                $mail->send();

                header( 'location:slogin.php' );
            }

        } else {
            echo" <script type='text/javascript'>
		alert('Password does not meet complexity requirements.');

		</script>
		
		";
        }
    } else {
        header( 'location:slogin.php' );

    }

}

?>

<!doctype html>
<html lang = 'en'>
<head>
<title>Student Forget Password </title>
<meta charset = 'utf-8'>
<meta name = 'viewport' content = 'width=device-width, initial-scale=1, shrink-to-fit=no'>

<link href = 'https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap' rel = 'stylesheet'>

<link rel = 'stylesheet' href = 'https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>

<link rel = 'stylesheet' href = 'css/style.css'>

</head>
<body>
<section class = 'ftco-section'>
<div class = 'container'>
<div class = 'row justify-content-center'>

</div>
<div class = 'row justify-content-center'>
<div class = 'col-md-6 col-lg-4'>
<div class = 'login-wrap py-5'>
<div class = 'img d-flex align-items-center justify-content-center' style = 'background-image: url(img/Logo_uiu.jpg);'></div>
<h3 class = 'text-center mb-0'>New Password</h3>

<form action = ''  method = 'POST'>
<div class = 'form-group'>
<div class = 'icon d-flex align-items-center justify-content-center'><span class = 'fa fa-user'></span></div>
<input type = 'password' class = 'form-control' placeholder = 'New Password' name = 'password' required>
<label for = ''>1.Must have one Chaptial Latter. <br>
2.Must have one special character. <br>
3.Must have one digit. <br>
4.Must have minumun 8 characters.

</label>
</div>

<div class = 'form-group d-md-flex'>
<div class = 'w-100 text-md-right'>
<a href = 'slogin.php'>Login</a>
</div>
</div>
<div class = 'form-group'>
<button type = 'submit' class = 'btn form-control btn-primary rounded submit px-3'>New Password</button>
</div>
</form>

</div>
</div>
</div>
</div>
</section>

<script src = 'js/jquery.min.js'></script>
<script src = 'js/popper.js'></script>
<script src = 'js/bootstrap.min.js'></script>
<script src = 'js/main.js'></script>

</body>
</html>

