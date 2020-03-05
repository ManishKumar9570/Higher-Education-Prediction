<%@include file="header2.jsp" %>
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
background:url(img/bag8.jpg);
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
a{
text-align:center;
font-weight:border;
margin-top:-20px;
color:#f87114;
font-weight:600;
}

</style>
<body>

<div class="container-fuild bg">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
<div class="col-md-4 col-sm-4 col-xs-12">

<form action="RankSearch" class="form-container" id="log">
<h1>Rank details </h1>

<br>
<div class="form-group">
<label >Rank</label>
<br>
<input type="text" name="total_college_seat"class="form-control" placeholder="your catgary rank">
</div>
<div class="form-group">
<label>Select Your Catagary</label> 
  <select name="category"class="form-control">
         <option value="0" name ="Gen">Gen</option>
        <option value="1" name="obc">obc</option>
        <option value="2" name="obc_pwd">obc_pwd</option>
        <option value="3" name="st">st</option>
        <option value="4" name="st_pwd">st_pwd</option>
        <option value="5" name="sc">sc</option>
        <option value="6" name="sc_pwd">sc_pwd</option>
      </select>
 </div>
<input type="submit" class="btn btn-success btn-block" name="">


 </form>
</div>
</div>
</div>
</body>
</html>
