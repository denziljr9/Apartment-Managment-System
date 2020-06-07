<%--
    Document   : UpdateSwimGym
    Created on : 3 Mar, 2020, 10:12:17 PM
    Author     : SALMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <%@include file="Header.jsp" %>
         <style>
         h5{
             color:white;
         }
         </style>
    </head>
    <body>
              <div class="col-sm-8 col-md-5 ">
            <div class="jumbotron col-md-9 mt-3  shadow-lg" style="background-color:#111;">
                <h3 class="display-5 text-light" style="text-align: center;">Update Gym Pool Amount</h3>
        <form action="UpdateSwimGymDB.jsp" method="POST">
               <h5 class="mt-5"> Update amount <input class="form-control" type="text" name="amt" value="" />
           <button type="submit" class="btn btn-danger form-control mt-3">Update</button>
        </form>
        <%
            String ptr = "";
            ptr = request.getParameter("ptr");
            if (ptr.equals("add")) {
        %>
        <h3 style="color: white">Price updated</h3>
        <%
        } else if (ptr.equals("error")) {
        %>
        <h3 style="color: white">Error while updating price</h3>
        <%
            }
        %>
         <%@include file="Footer.jsp" %>
    </body>
</html>