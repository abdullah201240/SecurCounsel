<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer-master/src/Exception.php';
require 'PHPMailer-master/src/PHPMailer.php';
require 'PHPMailer-master/src/SMTP.php';

include 'db.php';
date_default_timezone_set( 'Asia/Dhaka' );
$current_time = date( 'Y-m-d H:i:s' );
$iphone = strpos( $_SERVER[ 'HTTP_USER_AGENT' ], 'iPhone' );

$android = strpos( $_SERVER[ 'HTTP_USER_AGENT' ], 'Android' );

$ipod = strpos( $_SERVER[ 'HTTP_USER_AGENT' ], 'iPod' );


    if ( $_SERVER[ 'REQUEST_METHOD' ] == 'POST' ) {
       

        session_start();
        $code =$_SESSION['slogin'];
        $sid=$_SESSION['student_id'];
        $email=$_SESSION['student_email'];
        $hascode = hash('sha3-256', $_POST['code']);
        if ( $hascode == $code ) {
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
                $mail->Subject = 'Login!! ';
                $mail->Body = "Your  Account is  login at $current_time from a Android device ;  ";
                $mail->send();
                $sql="INSERT INTO `logininfo`( `device`, `time`, `sid`) VALUES ('Android','$current_time','$sid')";
                mysqli_query( $conn, $sql );

                header("location: navbar/studenthome.php");


            }
            elseif ( $iphone ) {
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
                $mail->Subject = 'Login !! ';
                $mail->Body = "Your  Account is  login at $current_time from a Iphone  ;  ";
                $mail->send();
                $sql="INSERT INTO `logininfo`( `device`, `time`, `sid`) VALUES ('Iphone','$current_time','$sid')";
                mysqli_query( $conn, $sql );

                header("location: navbar/studenthome.php");
            }
            elseif ( $ipod ) {
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
                $mail->Subject = 'Login!! ';
                $mail->Body = "Your  Account is  login at $current_time from a Ipod  ;  ";
                $mail->send();
                $sql="INSERT INTO `logininfo`( `device`, `time`, `sid`) VALUES ('Ipod','$current_time','$sid')";
                mysqli_query( $conn, $sql );


                header("location: navbar/studenthome.php");
            }
            else{
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
                $mail->Subject = 'Login!! ';
                $mail->Body = "Your  Account is  login at $current_time from a Laptop ;  ";
                $mail->send();
                $sql="INSERT INTO `logininfo`( `device`, `time`, `sid`) VALUES ('Laptop','$current_time','$sid')";
                mysqli_query( $conn, $sql );
                

                header("location: navbar/studenthome.php");

            }


        } else {
            echo" <script type='text/javascript'>
            alert('Code is not correct');

            </script>
            
            ";
        }

    }

?>

<!doctype html>
<html lang = 'en'>
<head>
<title>Student One time  Password </title>
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
<h3 class = 'text-center mb-0'>One Time Password</h3>

<form action = ''  method = 'POST'>
<div class = 'form-group'>
<div class = 'icon d-flex align-items-center justify-content-center'><span class = 'fa fa-user'></span></div>
<input type = 'text' class = 'form-control' placeholder = 'Your code' name = 'code' required>
</div>

<div class = 'form-group d-md-flex'>
<div class = 'w-100 text-md-right'>
<a href = 'slogin.php'>Login</a>
</div>
</div>
<div class = 'form-group'>
<button type = 'submit' class = 'btn form-control btn-primary rounded submit px-3'>One time  Password</button>
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

