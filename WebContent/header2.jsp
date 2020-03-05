<html>
<head>
<title>Home page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
 integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<style>
header{
position:absolute;
z-index:10;
width:100%;
}



.banner{
position:relative;
background: url(img/bag8.jpg);
min-height:100vh;
background-size: cover;
background-position:center;
padding:250px 0 200px;
}
.navbar{
padding: 20px 0;
}
.navbar-brand{
font-weight: 800;
text-transform:uppercase;
font-size:2em;
color:#262626;
}
.navbar-light .navbar-nav .nav-item .nav-link:hover,
.navbar-light .navbar-nav .nav-item.active .nav-link
{
background:#262626;
color:#fff;
font-size:1em;
font-weight: 1000;
}
.navbar-light .navbar-nav .nav-item .nav-link
{
color: #262626;
padding: 5px 15px;
}
.banner h2{
padding: 0;
margin:0;
font-size:2.8em;
font-weight:1000;
color:#e78e8e;
text-transform: uppercase;
}
.banner p{
padding: 0;
margin:1em 0 0;
font-size:1.2em;
font-weight:500;
line-height:1.5em;
color:#262626;
}
@media (max-width: 768px)
{
.banner{
padding: 200px 0;
}
.banner h2{
font-size: 1.8em;
font-size-adjust;
}


}

</style>

<body>
<header>
<div class="container">

<nav class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand" href="#">PREDICTION OF HIGHER EDUCTION</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-lg-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp">HOME <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          EXAM/DETAILS
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="rank_input.html">NIMCET</a>
          <a class="dropdown-item" href="#"></a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">JEE MAIN</a>
		  <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">JEE ADVANCED</a>
        
        </div>
		
	  <li class="nav-item">
        <a class="nav-link" href="feedback.jsp">FEEDBACK</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="signup_form.jsp">SIGNUP</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="login.jsp">LOGIN</a>
      </li>
      
	   </ul>
  </div>
</nav>

</div>
</header>
</body>
</html>
