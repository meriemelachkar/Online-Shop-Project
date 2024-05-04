<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
    <% String  email=session.getAttribute("email").toString(); %>
            <center><h1>Tech<span class="gold">Ensem</span></h1></center>
            <h2><a href=""><%out.println(email); %> </a></h2>
            <a href="home.jsp">Home</a>
            <a href="myCart.jsp">My Cart</a>
            <a href="myOrders.jsp">My Orders</a>
            <a href="changeDetails.jsp">Change Details</a>
            <a href="messageUs.jsp">Message Us</a>
            <a href="logout.jsp">Logout</a>
            <div class="search-container">
             <form action="searchHome.jsp" method="post">
              <input type="text" placeholder="search" name="search">
              <button type="submit" ><i class="fa fa-search"></i></button>
                
             </form>
            </div>
          </div>
           <br>
           <!--table-->
