<%-- 
    Document   : payment
    Created on : 20 Sep, 2023, 9:43:27 PM
    Author     : inshaxkhan
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
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
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-12"></div>
                <h2 style="color:green; text-align: center;">Do Payment</h2>
                <% 
                DbManager dm=new DbManager();
                String ano=request.getParameter("ano");
                String query="select * from booking where aadharno='"+ano+"'";
                ResultSet rs=dm.select(query);
                if(rs.next())
                {
                %>
                <form class="form-group" method="post" action="admincontroller.jsp">
                    <input type="hidden" name="page" value="payment" />
                    <table style="width:60%;margin:auto;">
                        <tr>
                            <td>Aadhar Number:</td>
                            <td>
                                <input type="text" name="aadharno" value="<%=rs.getString("aadharno")%>" class="form-control" readonly/>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>Total Amount:</td>
                            <td>
                                <input type="number" name="totalamt" value="<%=rs.getString("totalamt")%>" class="form-control" readonly />
                            </td>
                        </tr>
                    
                        <tr>
                            <td>Rest Amount</td>
                            <td>
                                <input type="number" name="restamt" value="<%=rs.getString("restamt")%>" class="form-control" readonly />
                            </td>
                        </tr>
                        
                        <tr>
                            <td>Pay Amount:</td>
                            <td>
                                <input type="number" name="payamt" class="form-control"/>
                            </td>
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn btn-outline-info" >Pay </button>
                            </td>
                        </tr>
                    </table>
                </form>
                <%
                }
                %>
            </div>
            
        </div>
            <div style="height:250px; "> </div>
                <jsp:include page="../footer.jsp"/>
    </body>
</html>
<% } %>
