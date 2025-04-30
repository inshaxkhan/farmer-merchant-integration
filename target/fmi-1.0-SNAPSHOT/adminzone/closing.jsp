<%-- 
    Document   : closing
    Created on : 20 Sep, 2023, 9:12:31 PM
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
        
        <style>
            th{
                color:#79AC78;
            }
        </style>
            </head>
    <body>
        
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-10" style="margin-left:130px;">
                    <h2 style="color:#198754; text-align:center">Manage Booking</h2>
                    
                    <table class="table table-bordered"> 
                        <tr>
                            <th>Reg ID</th>
                            <th>Name</th>
                            <th>Aadhar No</th>
                            <th>No. of Packets</th>
                            <th>Duration</th>
                            <th>Rate</th>
                            <th>Total Amount</th>
                            <th>Advance Amount</th>
                            <th>Rest Amount</th>
                            <th>Payment</th>
                        </tr>
                        <%
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.select("select * from booking");
                            while(rs.next())
                            {
                        %>
                        <td><%=rs.getString("regid")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("aadharno")%></td>
                        <td><%=rs.getString("noofpacket")%></td>
                        <td><%=rs.getString("duration")%></td>
                        <td><%=rs.getString("rate")%></td>
                        <td><%=rs.getString("totalamt")%></td>
                        <td><%=rs.getString("advanceamt")%></td>
                        <td><%=rs.getString("restamt")%></td>
                        
                        <td>
                            <a href="payment.jsp?ano=<%=rs.getString("aadharno")%>">
                                <button class="btn btn-light"> Pay Now</button>
                            </a>
                        </td>
                        <%    
                            }
                        %>
                        
                         
                    </table>
                    
               
            </div>
                        
        </div>
                        
        <div style="height:300px; background-color: white;"> </div>
                        <jsp:include page="../footer.jsp" />
    </body>
</html>
<% } %>