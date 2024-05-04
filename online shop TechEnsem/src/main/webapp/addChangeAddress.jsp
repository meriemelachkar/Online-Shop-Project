<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href=" css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add or Change Address</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
%>
<h3 class="alert">Address Successfully Updated !</h3>
<%}
if("invalid".equals(msg)){
%>
<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
<%} %>
<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email='"+email+"' ");
	while(rs.next()){
		

%>
<form action="addChangeAddressAction.jsp" method="post">
<h3>Enter Address</h3>
 <input class="input-style" type="text" name="adress" value="<%=rs.getString(7) %>" placeholder="your address" required>
 <hr>
 <h3>Enter city</h3>
  <input class="input-style" type="text" name="city" value="<%=rs.getString(8) %>" placeholder="your city" required>
 
<hr>
<h3>Enter Region</h3>
 <input class="input-style" type="text" name="state" value="<%=rs.getString(9) %>" placeholder="your region" required>

<hr>
<h3>Enter country</h3>
 <input class="input-style" type="text" name="country" value="<%=rs.getString(10) %>" placeholder="your country" required>

<hr>
 <button class="button" type="submit">Save</button>
</form>
<%}
}
catch(Exception e){
	System.out.println(e);
}%>
</body>
<br><br><br>
<br>
</html>