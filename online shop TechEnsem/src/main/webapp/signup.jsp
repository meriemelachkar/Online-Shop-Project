<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/signup-style.css">
<title>Sing Up</title> 
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    	<input type="text" name="name" placeholder="your name" required>
    	<input type="email" name="email" placeholder="your email" required>
    	<input type="number" name="mobileNumber" placeholder="your mobile number" required>
    	<select name="securityQuestion" required>
    		<option value="your favorite movie ?">your favorite movie ?</option>
    		<option value="your birth city ?">your birth city ?</option>
    		<option value="the name of your best friend ?">the name of your best friend ?</option>
		</select>
    	<input type="text" name="answer" placeholder="your answer" required>
    	<input type="password" name="password" placeholder="your password" required>
    	<input type="submit" value="sign up">
    </form>
    <h2><a href="login.jsp">login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
%>
<h1>Successfully Updated</h1>
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