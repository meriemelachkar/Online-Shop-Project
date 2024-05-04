<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotPasswordAction.jsp" method="post">
    	<input type="email" name="email" placeholder="your email" required>
    	<input type="number" name="mobileNumber" placeholder="your mobile number" required>
    	<select name="securityQuestion" required>
    		<option value="your favorite movie ?">your favorite movie ?</option>
    		<option value="your birth city ?">your birth city ?</option>
    		<option value="the name of your best friend ?">the name of your best friend ?</option>
		</select>
    	<input type="text" name="answer" placeholder="your answer" required>
    	<input type="password" name="newPassword" placeholder="your new password" required>
    	<input type="submit" value="save">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<h1>Password Changed Successfully!</h1>
 <%} %>
 <%
if("invalid".equals(msg)){
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
	<center><h2>Tech<b style="color : goldenrod;">Ensem</b></h2></center>
	<p>Explore the world of technology with TechEnsem - Your online destination for quality IT tools, delivered to your doorstep. Discover a new way to shop, without leaving the comfort of your own home.</p>    
  </div>
</div>
</body>
</html>