<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forget Form</title>
 <meta charset="utf-8">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script  src="js/bootstrap.min.js"></script>
<script  src="js/jquery.js"></script>


</head>
<style>
.bg{
position:relative;
background: url(img/white.jpg);
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
a{
text-decoration:green;
text-align:right-side;
color:#f87114;
font-weight:600;
}
h3{
font-weight:border;
font-height:;
}

</style>
<body>

<div class="container-fuild bg">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12">


<form  action="Login" method="doGet" class="form-container" id="log">

<h1>Forget Form</h1>

<div class="form-group">
<label >Email</label>
<input type="email"  name="email" class="form-control" placeholder="Email">
</div>

<div class ="form-row">
<div class ="form-group col-12">
<button type="submit" class="btn btn-success btn-block">submit</button>
</div>
</div>

<div class="form-row">
<div class="form-group col-6">
<h3>Back to <a href="a2.html" class="bluish-text">Login in </a></h3>
</div>
</div>
</form>
</div>
</div>


</div>
</body>
</html>


