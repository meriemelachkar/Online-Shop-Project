<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String email=session.getAttribute("email").toString();
String adress=request.getParameter("adress");
String city=request.getParameter("city");
String state=request.getParameter("state");
String country=request.getParameter("country");
String mobileNumber=request.getParameter("mobileNumber");
String paymethod=request.getParameter("paymethod");
String transactionId="";
transactionId=request.getParameter("transactionId");
String status="bill";

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update users set adress=?,city=?,state=?,country=?,mobileNumber=? where email=?");
	ps.setString(1,adress);
	ps.setString(2,city);
	ps.setString(3,state);
	ps.setString(4,country);
	ps.setString(5,mobileNumber);
	ps.setString(6,email);
	ps.executeUpdate();
	
	PreparedStatement ps1=con.prepareStatement("update cart set adress=?,city=?,state=?,country=?,mobileNumber=?,orderDate=now(),deliveryDate=DATE_ADD(orderDate, INTERVAL 7 DAY),paymethod=?,transactionId=?,status=? where email=? and adress is NULL");
	ps1.setString(1,adress);
	ps1.setString(2,city);
	ps1.setString(3,state);
	ps1.setString(4,country);
	ps1.setString(5,mobileNumber);
	ps1.setString(6,paymethod);
	ps1.setString(7,transactionId);
	ps1.setString(8,status);
	ps1.setString(9,email);
	ps1.executeUpdate();
	
	response.sendRedirect("bill.jsp");


}
catch(Exception e)
{
	System.out.println(e);
	

}
%>