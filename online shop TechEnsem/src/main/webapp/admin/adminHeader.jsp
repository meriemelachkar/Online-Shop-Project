<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
    <% String email=session.getAttribute("email").toString();  %>
                <center><h2>Tech<b style="color : goldenrod;">Ensem</b></h2></center>
            <a href="addNewProduct.jsp">Add a product</a>
            <a href="allProductEditProduct.jsp">All products & edit</a>
            <a href="messagesReceived.jsp">Messages Received</a>
            <a href="ordersReceived.jsp">Order Received</a>
            
            <a href="../logout.jsp">logout</a>
          </div>
           <br>
           <!--table-->
