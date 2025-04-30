<%-- 
    Document   : news
    Created on : 18 Sep, 2023, 2:14:01 PM
    Author     : inshaxkhan
--%>

<%
    if(session.getAttribute("adminid")==null){
        response.sendRedirect("../login.jsp");
    }
    else{
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <link href="../css/fontawesome.css" rel="stylesheet" type="text/css"/>
        <link href="../css/adminstyle.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="../images/favicon1.ico"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="../js/bootstrap.bundle.js"></script>
        <title>Farmer Merchant Integration</title>
    </head>
    <body>
       
            
            <jsp:include page="header.jsp"/>
            <!--Main Contents-->
            <div class="row mt-2">
                <div class="col-sm-12" style="min-height: 600px;background-color: aliceblue;">
                    <h2 style="color:#618264;text-align: center;">Add News and Events</h2>
                    <form class="form-group" method="post">
                        <table class="table table-bordered" style="width: 70%;margin: auto;">
                            <tr>
                                <td>Enter News</td>
                                <td>
                                    <textarea name="newstext" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><button type="submit" class="btn btn-success">ADD</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            
            <jsp:include page="../footer.jsp"/>
       
    </body>
</html>
<%
    }
%>
