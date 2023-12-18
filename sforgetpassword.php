<?php 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'PHPMailer-master/src/Exception.php';
require 'PHPMailer-master/src/PHPMailer.php';
require 'PHPMailer-master/src/SMTP.php';

session_start();
include 'db.php';


if($_SERVER["REQUEST_METHOD"] == "POST"){

    $username = $_POST["username"];
    $sql = "Select * from student where id='$username'";
    $result = mysqli_query($conn, $sql);
	$data = $result->fetch_assoc() ;
	$num = mysqli_num_rows($result);
	if ($num == 1){
        $code=(rand(100000,999999));
        $hascode=hash('sha3-256', $code);
        $_SESSION['scode'] =$hascode;
        $_SESSION['sid'] =$data['id'];
        echo  $_SESSION['sid'];
        $email = $data['email'] ;

        $mail=new PHPMailer(true);
        $mail->isSMTP();
        $mail->Host='smtp.gmail.com';
        $mail->SMTPAuth=true;
        $mail->Username='uiu.ecats@gmail.com';
        $mail->Password='stnjrrnsuauyhmbd';
        $mail->SMTPSecure='ssl';
        $mail->Port=465;
        $mail->setFrom('uiu.ecats@gmail.com');
        $mail->addAddress($email);
        $mail->Subject="Forget Password code ";
        $mail->Body="Your Forget Password code is : $code";
        $mail->send();
		
		
	 header("location:scode.php");
		
	}
	else{
		echo" <script type='text/javascript'>
            alert('ID Not Found');

            </script>
            
            ";
	}

}

?>





<!doctype html>
<html lang="en">
  <head>
  	<title>Student Forget Password </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap py-5">
		      	<div class="img d-flex align-items-center justify-content-center" style="background-image: url(img/Logo_uiu.jpg);"></div>
		      	<h3 class="text-center mb-0">Forget Password</h3>
		      	
						<form action=""  method="POST">
		      		<div class="form-group">
		      			<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-user"></span></div>
		      			<input type="text" class="form-control" placeholder="Your id" name="username" required>
		      		</div>
	            
	            <div class="form-group d-md-flex">
								<div class="w-100 text-md-right">
									<a href="slogin.php">Login</a>
								</div>
	            </div>
	            <div class="form-group">
	            	<button type="submit" class="btn form-control btn-primary rounded submit px-3">Forget Password</button>
	            </div>
	          </form>
	          
	        </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>

