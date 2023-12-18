<?php
session_start();
include 'db.php';
if(!isset($_SESSION['student_id'])){
    header("location:index.php");
    exit;
  }
  function maskEmail($email) {
    list($username, $domain) = explode('@', $email);
    $maskedUsername = substr($username, 0, 1) . str_repeat('*', max(strlen($username) - 2, 0)) . substr($username, -1);
    return $maskedUsername . '@' . $domain;
}





if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = mysqli_real_escape_string( $conn, $_POST[ 'email' ] );
    if( $_SESSION['student_email'] ==$email){
        header("location:sforgetpassword.php");

    }
    else{
        echo " <script type='text/javascript'>
		alert('Wrong email!!');

		</script>
		
		";
    }



}
?>

<!doctype html>
<html lang='en'>

<head>
    <title>Login</title>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>

    <link href='https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap' rel='stylesheet'>

    <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>

    <link rel='stylesheet' href='css/style.css'>
    <script src="https://www.google.com/recaptcha/api.js?render=6Lf13hcpAAAAALosTpPy3lDslcE9ngnTXeTskshj"></script>

</head>

<body>
    <section class='ftco-section'>
        <div class='container'>
            <div class='row justify-content-center'>

            </div>
            <div class='row justify-content-center'>
                <div class='col-md-6 col-lg-4'>
                    <div class='login-wrap py-5'>
                        <div class='img d-flex align-items-center justify-content-center'
                            style='background-image: url(img/Logo_uiu.jpg);'></div>
                        <h3 class='text-center mb-0'>Your email</h3>
                        <center><p style="color:white"><?php echo maskEmail($_SESSION['student_email']); ?></p></center>

                        <form action='' method='POST' id="demo-form">
                            <div class='form-group'>
                                <div class='icon d-flex align-items-center justify-content-center'><span
                                        class='fa fa-user'></span></div>
                                <input type='email' class='form-control' placeholder='Your email' name='email' required>
                            </div>
                           
                            
                            <input type="hidden" name="g-recaptcha-response" id="g-recaptcha-response">



                            <button type='submit'
                                class='btn form-control btn-primary rounded submit px-3'>Submit</button>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>

    
  
    <script src='js/jquery.min.js'></script>
    <script src='js/popper.js'></script>
    <script src='js/bootstrap.min.js'></script>
    <script src='js/main.js'></script>

</body>

</html>