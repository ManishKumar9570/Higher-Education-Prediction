 <%@include file="header2.jsp" %> 
<html>

<head>
<title>Login Page</title>
 <meta charset="utf-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
 integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <link rel="stylesheet" href="css/bootstrap.min.css" />
<script  src="js/bootstrap.min.js"></script>
<script  src="js/jquery.js"></script>


</head>
<style>
.bg{
position:relative;
background: url(img/bag8.jpg);
min-height:100vh;
background-size: cover;
background-position:center;

}
#log{
border : 2px solid white;
padding:60px 40px;
margin-top:80px;
}
img{
width:150px;
margin:auto;
}
h1{
color:white;
text-align:center;
font-weight:border;
margin-top:-20px;
}
h1{
color:#f87114;
font-weight:600;
}
label{
color:#0b0a0a;
}

</style>
<body>

<div class="container-fuild bg">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12">


<form  action="Login" method="doGet" class="form-container" id="log">

<h1>Login Form</h1>

<div class="form-group">
<label >Email</label>
<input type="text"  name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" class="form-control" placeholder="Email">
</div>

<div class="form-group">
<label>Passward</label>
<input type="Passward" name="login_password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" class="form-control" placeholder="Passward">
</div>

<div class="checkbox">
<label>
<input type="checkbox">Remember me
</label>
</div>
<button type="submit" class="btn btn-success btn-block">submit</button>
</form>
</div>
<div class="col-md-4 col-sm-4 col-xs-6"></div>
</div>
</div>
</body>
</html>
   
