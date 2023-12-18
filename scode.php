<?php

    if ( $_SERVER[ 'REQUEST_METHOD' ] == 'POST' ) {
       

        session_start();
        $code =$_SESSION['scode'];
        $hascode = hash('sha3-256', $_POST['code']);
        if ( $hascode == $code ) {
            header( 'location:snewpassword.php' );

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
<h3 class = 'text-center mb-0'>Forget Password</h3>

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
<button type = 'submit' class = 'btn form-control btn-primary rounded submit px-3'>Forget Password</button>
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
