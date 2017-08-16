<?php require("include.php"); ?>
<link rel='stylesheet' type='text/css' href='css/login.css'/>
  </head>
  <body>
    <div class = "container">
    	<div class="wrapper">
    		<form action="" method="post" name="Login_Form" class="form-signin">
    		    <h3 class="form-signin-heading"><img src='images/logo.png'/></h3>

    			  <input type="text" class="form-control" name="Username" placeholder="Username" required="" autofocus="" />
    			  <input type="password" class="form-control" name="Password" placeholder="Password" required=""/>

    			  <button class="login-btn btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit"><span id='login-txt'>Login</span></button>
    		</form>
    	</div>
    </div>
  </body>
</html>
