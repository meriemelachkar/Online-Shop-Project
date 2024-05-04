<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="footer.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<script>
    if (window.history.forward(1) != null) {
        window.history.forward(1);
    }
</script>

</head>
<body>
<br>
<table>
<thead>
<% 
String email=session.getAttribute("email").toString();
int total=0;
int sno=0;

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs1=st.executeQuery("select sum(total) from cart where email='"+email+"' and adress is NULL ");
	while(rs1.next())
	{
		total=rs1.getInt(1);
	

%>
          <tr>
          <th scope="col"><a href="myCart.jsp"> Back</a></th>
            <th scope="col" style="background-color: yellow;">Total: <%out.println(total); %></th>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col">price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
          </tr>
        </thead>
        <tbody>
        <%
      ResultSet rs=st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email='"+email+"' and cart.adress is NULL");
      while(rs.next()){
    	  
      
      %>
          <tr>
          		<% sno = sno + 1; %>
           <td><%out.println(sno); %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(9) %> </td>
            <td><%=rs.getString(11) %></td>
            </tr>
         <%}
      ResultSet rs2=st.executeQuery("select *from users where email='"+email+"' ");
      while(rs2.next()){
    	  
      
      %>
        </tbody>
      </table>
      
<hr style="width: 100%">

<form action="addressPaymentForOrderAction.jsp" method="post">
 
 <div class="left-div">
	<h3>Enter Address</h3>
	<input class="input-style" type="text" name="adress" value="<%=rs2.getString(7) %>" placeholder="Your address" required>
 </div>

<div class="right-div">
	<h3>Enter City</h3>
	<input class="input-style" type="text" name="city" value="<%=rs2.getString(8) %>" placeholder="Your city" required>
</div> 

<div class="left-div">
	<h3>Enter province</h3>
	<input class="input-style" type="text" name="state" value="<%=rs2.getString(9) %>" placeholder="Your province" required>
</div>

<div class="right-div">
	<h3>Enter country</h3>
	<input class="input-style" type="text" name="country" value="<%=rs2.getString(10) %>" placeholder="Your country" required>
</div>


<h3 style="color: red">*If there is no address its mean that you did not set you address!</h3>
<h3 style="color: red">*This address will also updated to your profile</h3>

<hr style="width: 100%">
<div class="left-div">
	<h3>Select way of Payment :</h3>
	<select class="input-style" name="paymethod">
		<option value="Cash on delivery">Cash on delivery</option>
		<option value="Online Payment">Online Payment</option>
	</select> 
</div>

<div class="right-div">
	<h3>Pay online on this techensem@pay.com</h3>
	<input class="input-style" type="text" name="transactionId"  placeholder="Your transaction ID" >
	<h3 style="color: red">*If you select online Payment then enter you transaction ID here otherwise leave this blank</h3>
</div>

<hr style="width: 100%">

<div class="left-div">
	<h3>Mobile Number</h3>
	<input class="input-style" type="text" name="mobileNumber" value="<%=rs2.getString(3) %>" placeholder="Your Mobile Number" required>
	<h3 style="color: red">*This mobile number will also updated to your profile</h3>
</div>

<div class="right-div">
	<h3 style="color: red">*If you enter wrong transaction id then your order will we can cancel!</h3>
	<button class="button" type="submit">Generate Bill & Save</button>
	<h3 style="color: red">*Fill form correctly</h3>
</div> 
</form>
<%
      
      }} 
	}
      catch(Exception e){
    	  System.out.println(e);
      }
      %>

      <br>
      <br>
      <br>

</body>
</html>