<%@include file="header.jsp" %>

<html>
<head>
<title>Feedback form</title>
 <meta charset="utf-8">
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
color:#262626;
font-size:2em;
font-weight:4000;
}

</style>
<body>

<div class="container-fuild bg">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12">

<form class="form-container" id="log" action="Feedback" method="post">
<h1>Feedback Form</h1>

<div class="form-group">
<lable>Name</lable>
<input type="text" name="name" class="form-control">
</div>

<div class="form-group">
<lable>Email</lable>
<input type="text" name="email" class="form-control">
</div>

<div class="form-group">
<lable>Message</lable>
<textarea class="form-control" name="massage"rows="5"></textarea>
</div>

<button type="submit" class="btn btn-success btn-block">Send</button>

</div>



</form>
</div>
<div class="col-md-4 col-sm-4 col-xs-6"></div>
</div>
</div>
</body>
</html>
