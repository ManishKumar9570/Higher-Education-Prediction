<%@page import="pre.com.bo1.User"%>

<html>
<head>
</head>


<%
 User user  = null;
   if(session.getAttribute("user")!=null){
	   user  = (User)session.getAttribute("user");
   }
%>
<%if(user!=null){ %>
   
    <%@include file="After_Login1.jsp" %>
	
<%}else{ %>
	<a href="login.jsp">Login</a>

<%} %>
<hr>


</body>
</html>