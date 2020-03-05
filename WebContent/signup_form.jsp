<%@page import="pre.com.bo1.SignupUser"%>
<%@page import="java.util.Calendar"%>
<%@include file="header.jsp" %>

<html>
<head>
<title>SigUp Page</title>
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
color:#260707;
}

</style>
<body>
<div class="container-fuild bg">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12">


<%
String name="";
String loginPassword="";
String mobile="";
String email="";
  Object obj  = request.getAttribute("signupUser");
  SignupUser user  = null;
   if(obj!=null){
	    user  = (SignupUser)obj;
	   name=user.getName();
       loginPassword=user.getLoginPassword();
	   mobile=user.getMobile(); 
	   email=user.getEmail();
   }

%>


<%if(user==null){ %>
<form action="otpcontroller" method="post" class="form-container" id="log">
<%}else{ %>
<form action="OtpChecker" method="post" class="form-container" id="log">
<%} %>


<h1>SigUp Form</h1>
<div class="form-group">
<label >Name</label>
<input type="Name" class="form-control" name="name" value="<%=name%>" required >
</div>


<div class="form-group">
<label>Passward</label>
<input type="text"  name="login_password" value="<%=loginPassword%>" class="form-control" placeholder="Passward" >
</div>

<div class="form-group">
<label>Mobile</label>
<input type="mobile" name="mobile" pattern="[0-9]{10}" title="please enter your 10 digits number " value="<%=mobile%>" class="form-control" placeholder="Mobile"  >
</div>

<div class="form-group">
<label >Email</label>
<input type="text" name="email" value="<%=email%>" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" class="form-control" placeholder="Email" >
</div>



 <div class="form-group">
    	
    	 <label>Otp </label>
  	     <input type="text" class="form-control" name="otp">
  	       <input type="submit" value="send OTP">
  	     
	</div>      
	


<button type="submit" class="btn btn-success btn-block">submit</button>
</form>
</div>
<div class="col-md-4 col-sm-4 col-xs-6"></div>
</div>
</div>
</body>
</html>
