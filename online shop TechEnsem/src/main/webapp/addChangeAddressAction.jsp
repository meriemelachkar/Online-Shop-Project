<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
 
<%
String email=session.getAttribute("email").toString();
String adress=request.getParameter("adress");
String city=request.getParameter("city");
String state=request.getParameter("state");
String country=request.getParameter("country");

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update users set adress=?,city=?,state=?,country=? where email='"+email+"' ");
	ps.setString(1,adress);
	ps.setString(2,city);
	ps.setString(3,state);
	ps.setString(4,country);
	ps.executeUpdate();
	response.sendRedirect("addChangeAddress.jsp?msg=valid");
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("addChangeAddress.jsp?msg=invalid");

}

%>