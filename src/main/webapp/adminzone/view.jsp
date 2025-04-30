<%-- 
    Document   : view
    Created on : 20 Sep, 2023, 7:55:04 PM
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
               
                <div class="col-sm-12" style="min-height: 600px; background-color:#D0E7D2">
                        
                    <%  
                        DbManager dm = new DbManager();
                        String ano = request.getParameter("ano");
                        String queryStr = "select * from booking where aadharno='"+ano+"'";
                        ResultSet rs = dm.select(queryStr);
                        
                        if(rs.next()){
                    %>  
                    <h2 style="color:#198754; margin-left:510px; margin-top:100px;">VIEW OF FARMER DETAILS</h2>  
                    <table class="table table-bordered" style="width: 60%; margin:0px auto;">
                        <tr>
                            <td>Registration ID</td>
                            <td><%=rs.getString("regid")%></td>
                        </tr>
                        
                        <tr>
                            <td>Farmer name</td>
                            <td><%=rs.getString("name")%></td>
                        </tr>
                        
                        <tr>
                            <td>Village</td>
                            <td><%=rs.getString("village")%></td>
                        </tr>
                        
                        <tr>
                            <td>Post</td>
                            <td><%=rs.getString("post")%></td>
                        </tr>
                        
                        <tr>
                            <td>District</td>
                            <td><%=rs.getString("district")%></td>
                        </tr>
                        
                        <tr>
                            <td>State</td>
                            <td><%=rs.getString("state")%></td>
                        </tr>
                        
                        <tr>
                            <td>Pincode</td>
                            <td><%=rs.getString("pincode")%></td>
                        </tr>
                        
                        <tr>
                            <td>Contact</td>
                            <td><%=rs.getString("contactno")%></td>
                        </tr>
                        
                        <tr>
                            <td>Aadhar No</td>
                            <td><%=rs.getString("aadharno")%></td>
                        </tr>
                        
                        <tr>
                            <td>Packets</td>
                            <td><%=rs.getString("noofpacket")%></td>
                        </tr>
                        
                        <tr>
                            <td>Duration</td>
                            <td><%=rs.getString("duration")%></td>
                        </tr>
                        
                        <tr>
                            <td>Rate</td>
                            <td><%=rs.getString("rate")%></td>
                        </tr>
                        
                        <tr>
                            <td>Total amt</td>
                            <td><%=rs.getString("totalamt")%></td>
                        </tr>
                        
                        <tr>
                            <td>Advance amt</td>
                            <td><%=rs.getString("advanceamt")%></td>
                        </tr>
                        
                        <tr>
                            <td>Rest amt</td>
                            <td><%=rs.getString("restamt")%></td>
                        </tr>
                        
                        <tr>
                            <td>Booking</td>
                            <td><%=rs.getString("bookingdate")%></td>
                        </tr>
                        
                    </table>
                        
                    <%  }
                            else
                        { 
                    %>
                    
                    <h2 style="color:red;text-align: center;">Booking not available</h2>
                    
                    <%
                        }
                    %>
                    
                </div>
            </div>
            
        </div>
                    <div style="height:100px; background-color: #D0E7D2"> </div>
                    <jsp:include page="../footer.jsp"/>
    </body>
</html>
<% } %>