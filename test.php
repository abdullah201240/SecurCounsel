<html>
    <head>
        <title>Contact US</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <style>
            .jumbotron {
            background: #358CCE;
            color: #FFF;
            border-radius: 0px;
            }
            .jumbotron-sm { padding-top: 24px;
            padding-bottom: 24px; }
            .jumbotron small {
            color: #FFF;
            }
            .h1 small {
            font-size: 24px;
            }
        </style>
        
        <script src="https://www.google.com/recaptcha/api.js?render=6Lf13hcpAAAAALosTpPy3lDslcE9ngnTXeTskshj"></script>
        
        <script>
        grecaptcha.ready(function() {
          grecaptcha.execute('6Lf13hcpAAAAALosTpPy3lDslcE9ngnTXeTskshj', {action: 'submit'}).then(function(token) {
              // Add your logic to submit to your backend server here.
              
              var response=document.getElementById('token_response');
              
              response.value = token;
          });
        });
  </script>


    </head>
    
    <body>
        
        
<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Contact us <small>Feel free to contact us</small></h1>
            </div>
        </div>
    </div>
</div>

<?php 
if($_SERVER['REQUEST_METHOD']=='POST' && isset($_POST['token_response'])){
    
    $url='https://www.google.com/recaptcha/api/siteverify';
    $secret='6Lf13hcpAAAAAPJfBInAaIRrV8WHB7tJfRYF21AF';
    $recaptcha_response=$_POST['token_response'];
    
    $request = file_get_contents($url . '?secret=' . $secret . '&response=' . $recaptcha_response);
    $response = json_decode($request);
    
    if($response->success==true && $response->score >= 0.5){
        
        echo'<script language="javascript">';
        echo'alert("Thank You For Contacting Us we will response you as early possible")';
        echo'</script>';
        echo"<script>setTimeout(\"location.href='index.php';\",00);</script>";
        
    }else{
        
        echo'<script language="javascript">';
        echo'alert("Error")';
        echo'</script>';
        echo"<script>setTimeout(\"location.href='index.php';\",00);</script>";
        
    }
}
?>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
               
                <form method="post">
                    <input type="hidden" id="token_response" name="token_response">
                    <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" name="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" name="btnContactUs" class="btn btn-primary pull-right" id="btnContactUs">
                            Send Email</button>
                    </div>
                </div>
                </form>
                
            </div>
        </div>
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>Twitter, Inc.</strong><br>
                MUMBAI, MAHARASHTRA<br>
                INDIA, 423104<br>
                <abbr title="Phone">
                    P:</abbr>
                (123) 456-7890
            </address>
            <address>
                <strong>Karan Salve</strong><br>
                <a href="mailto:#">contact_us@yourphpguru.com</a>
            </address>
            </form>
        </div>
    </div>
</div>

    </body>
    
    
</html>