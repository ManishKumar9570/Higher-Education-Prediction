<html>
<head>
<title>Rank Page</title>
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
border : 1px solid white;
padding:80px 40px;
margin-top:80px;
}
img{
width:150px;
margin:auto;
}
h1{
text-align:center;
font-weight:border;
margin-top:-20px;
color:#f87114;
font-weight:600;

}

label{
color:black;
font-weight:border;
}


</style>
<body>

<div class="container-fuild bg">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12">

<form class="form-container" id="log">
<h1>Rank base status </h1>

<br>
<div class="form-group">
<label >Rank</label>
<br>
<input type="text" class="form-control" placeholder="your catgary rank">
</div>
<div class="form-group">
<label>Select Your Catagary</label>
  <select name=" "class="form-control" id="sel1">
        <option>General</option>
        <option>Obc</option>
        <option>st</option>
        <option>sc</option>
        <option>Other</option>
      </select>
 </div>
<input type="submit" class="btn btn-success btn-block" value="search status">


 </form>

</div>
</div>
</body>
</html>



<div class="form-group">
<label >category</label><br>
<select class="class">
<option class="class" value="General">General</option>
<option value="obc">obc</option>
<option value="st">st</option>
<option value="sc">sc</option>
</select>
</div>