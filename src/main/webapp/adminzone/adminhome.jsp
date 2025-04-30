<%-- 
    Document   : adminhome
    Created on : 15 Sep, 2023, 2:11:05 PM
    Author     : inshaxkhan
--%>

<%
    if(session.getAttribute("adminid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
        
     %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Merchant Integration</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
         <link href="../css/admin.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.bundle.js"></script>
            </head>
    <body>
        
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
<!--                <div class="col-sm-2"></div>-->
                <div class="col-sm-12" style="min-height: 400px; background-color: #618264;">
                </div>
            </div>
            
                <jsp:include page="../footer.jsp"/>
         
    </body>
</html>
<% } %>