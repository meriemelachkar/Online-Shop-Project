<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("notMatch".equals(msg)){
%>
<h3 class="alert">New password and Confirm password does not match!</h3>
<%}
if("wrong".equals(msg)){
%>
<h3 class="alert">Your old Password is wrong!</h3>
<%}
if("done".equals(msg)){
%>
<h3 class="alert">Password changed successfully!</h3>
<%}
if("invalid".equals(msg)){
%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%}%>
<form action="changePasswordAction.jsp" method="post">
<h3>Enter Old Password</h3>
 <input class="input-style" type="password" name="oldPassword" placeholder="your old password">
  <hr>
 <h3>Enter New Password</h3>
  <input class="input-style" type="password" name="newPassword" placeholder="your new password">
 <hr>
<h3>Enter Confirm Password</h3>
 <input class="input-style" type="password" name="confirmPassword" placeholder="confirm your new password">
<hr>
 <button class="button" type="submit">Save</button>
</form>
</body>
<br><br><br>
</html>