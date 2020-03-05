

<%
Object obj  = request.getAttribute("not_found_msg");
%>

<%if(obj!=null){%>
     <h1><%=obj%></h1>
<%} %>


<!-- <fieldset><legend>Emp Search by Id</legend>
 <form action="StuSearch">
  Enter stu id <input type="text" name="stu_id">
  <input type="submit" value="Find Student">
 </form>
</fieldset>
 -->
 <%@include file="search_form.jsp" %>
 
</body>
</html>

