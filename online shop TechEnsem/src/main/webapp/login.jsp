
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="loginAction.jsp" method="post">
    	<input type="email" name="email" placeholder="your email" required>
    	<input type="text" name="password" placeholder="your password" required>
    	<input type="submit" value="LogIn">
    </form>
     
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
	  <%
	String msg=request.getParameter("msg");
	if("notexist".equals(msg)){
	%>
	  <h1>Incorrect Username or Password</h1>
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