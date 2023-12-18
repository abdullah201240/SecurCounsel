<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer-master/src/Exception.php';
require 'PHPMailer-master/src/PHPMailer.php';
require 'PHPMailer-master/src/SMTP.php';
include 'db.php';


if ($_SERVER['REQUEST_METHOD'] == 'POST') {


    $recaptcha_secret = "6Lf13hcpAAAAAPJfBInAaIRrV8WHB7tJfRYF21AF";
    $recaptcha_response = $_POST['g-recaptcha-response'];

    $url = 'https://www.google.com/recaptcha/api/siteverify';
    $data = [
        'secret' => $recaptcha_secret,
        'response' => $recaptcha_response,
        'remoteip' => $_SERVER['REMOTE_ADDR']
    ];

    $options = [
        'http' => [
            'header' => "Content-type: application/x-www-form-urlencoded\r\n",
            'method' => 'POST',
            'content' => http_build_query($data),
        ],
    ];

    $context = stream_context_create($options);
    $result = file_get_contents($url, false, $context);
    $result = json_decode($result, true);

    if (!$result['success'] || $result['action'] != 'submit_form' || $result['score'] < 0.5) {
        // reCAPTCHA v3 validation failed
        die('reCAPTCHA v3 verification failed. Please make sure you are not a robot.');
    }












    $username = mysqli_real_escape_string($conn, $_POST['username']);

    $password = mysqli_real_escape_string($conn, hash('sha3-256', $_POST['password']));

    $sql = "SELECT * FROM student WHERE id='$username' AND password='$password'";
    $result = mysqli_query($conn, $sql);
    $data = $result->fetch_assoc();
    $num = mysqli_num_rows($result);

    if ($num == 1) {
        $visitor_ip = $_SERVER['REMOTE_ADDR'];
        $allowed_ips = array('::1', '127.0.0.1', '192.168.0.1');

        if (in_array($visitor_ip, $allowed_ips)) {


            session_start();
            $_SESSION['student_name'] = $data['name'];
            $_SESSION['student_id'] = $data['id'];
            $_SESSION['student_email'] = $data['email'];

            $code = (rand(100000, 999999));
            $hascode = hash('sha3-256', $code);
            $_SESSION['slogin'] = $hascode;

            $email = $data['email'];

            $mail = new PHPMailer(true);
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'uiu.ecats@gmail.com';
            $mail->Password = 'stnjrrnsuauyhmbd';
            $mail->SMTPSecure = 'ssl';
            $mail->Port = 465;
            $mail->setFrom('uiu.ecats@gmail.com');
            $mail->addAddress($email);
            $mail->Subject = 'One time Password  ';
            $mail->Body = "Your  one time Passwordis : $code";
            $mail->send();

            header('location: slogincode.php');
        } else {
            echo "<div class='form'>
                    <h3 class='text--center'>Access denied. Your IP is not authorized.</h3><br/>
                    <p class='link text--center'>Click here to <a href='slogin.php'>Login</a> again.</p>
                    </div>";


        }

    } else {
        echo " <script type='text/javascript'>
		alert('Password is incorrect');

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
                        <h3 class='text-center mb-0'>Login</h3>

                        <form action='' method='POST' id="demo-form">
                            <div class='form-group'>
                                <div class='icon d-flex align-items-center justify-content-center'><span
                                        class='fa fa-user'></span></div>
                                <input type='text' class='form-control' placeholder='Your id' name='username' required>
                            </div>
                            <div class='form-group'>
                                <div class='icon d-flex align-items-center justify-content-center'><span
                                        class='fa fa-lock'></span></div>
                                <input type='password' name='password' class='form-control' placeholder='Password'
                                    required>
                            </div>
                            <div class='form-group d-md-flex'>
                                <div class='w-100 text-md-right'>
                                    <a href='sforgetpassword.php'>Forgot Password</a>
                                </div>
                            </div>
                            <input type="hidden" name="g-recaptcha-response" id="g-recaptcha-response">



                            <button type='submit'
                                class='btn form-control btn-primary rounded submit px-3'>Login</button>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute('6Lf13hcpAAAAALosTpPy3lDslcE9ngnTXeTskshj', { action: 'submit_form' }).then(function (token) {
                document.getElementById('g-recaptcha-response').value = token;
            });
        });
    </script>
    </script>
    <script src='js/jquery.min.js'></script>
    <script src='js/popper.js'></script>
    <script src='js/bootstrap.min.js'></script>
    <script src='js/main.js'></script>

</body>

</html>