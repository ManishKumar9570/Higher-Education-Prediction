<!-- <%@include file="header.jsp" %> -->

<%@page import="java.util.List"%>

<%@page import="pre.com.bo1.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script  src="js/bootstrap.min.js"></script>
<script  src="js/jquery.js"></script>
 
 <style>
body {
	position: relative;
	background: url(img/bag8.jpg);
	min-height: 100vh;
	background-size: cover;
	background-position: center;
	
	
}
container{
#height:100vh;
}
.btn btn-primary btn-lg{
weight:10%;
}
.container{
margin:100px ;
background-position: center;
}
a{
color:red;

}
.btn btn-success btn-block{
padding:50px;
}
</style>
 
</head>
<body>

<div class="container" style="background-color:;">

<%
Object obj  = request.getAttribute("stu");

 
List stuList=(List)obj;
%>
 
<% if(stuList.size()>0){%> 

    <%if(stuList.size()>=1){
	   Student s1=(Student)stuList.get(0);
	 %>
     <h1> Alert College In First Round : <%=s1.getCollege_name()%> </h1> 
   <%}%>
 
 
    	<%if(stuList.size()>=2){
		Student s2=(Student)stuList.get(1);
	%>
     <h1>Alert College In Second Round : <%=s2.getCollege_name()%>  </h1>
   <%}%>

<%}else{ %> 

<h1>PLEASE TRYE NEXT TIME BEST OF LUCK</h1>
<% }%> 
  
 
</div>
</div>

<div class="col-md-6">
<%-- <%@include file="search_form.jsp" %> --%>
<a href="stu_search.jsp"><button type="submit" class="btn btn-success btn-block">Other Search</button></a>
<hr>
</div>

</body>
</html>
