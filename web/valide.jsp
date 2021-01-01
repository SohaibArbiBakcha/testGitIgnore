<%-- 
    Document   : valide
    Created on : Dec 8, 2020, 8:39:25 PM
    Author     : ChiHab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            Object n=session.getAttribute("user");
            
               if(n!=null){%>
    
     
         <%}else{
                request.getRequestDispatcher("auth/login/login.jsp").forward(request, response);
            }%>
    </body>
</html>
