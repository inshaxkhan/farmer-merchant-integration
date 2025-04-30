<%-- 
    Document   : booking
    Created on : 20 Sep, 2023, 10:02:17 AM
    Author     : inshaxkhan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
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
        <div class="container-fluid">
            
            <jsp:include page="header.jsp"/>
            <!--Main Contents-->
            <div class="row mt-2">
                <div class="col-sm-10" style="min-height: 300px;background-color:#D0E7D2; margin-top:100px; margin-left:100px; margin-right:100px;">
                    <h2 style="color:#618264">List of Farmers :</h2>
                    <table class="table-border table">
                        <tr>
                            <th>Reg ID</th>
                            <th>Name</th>
                            <th>Village</th>
                            <th>Post</th>
                            <th>District</th>
                            <th>State</th>
                            <th>Pincode</th>
                            <th>Contact No</th>
                            <th>Adhaar No</th>
                            <th>Booking</th>
                            <th>View Booking </th>
                        </tr>
                        
                        <%
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.select("select * from farmerinfo");
                            while(rs.next())
                            {
                        %>
                        <tr>
                            <td><%=rs.getString("regid")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("village")%></td>
                            <td><%=rs.getString("post")%></td>
                            <td><%=rs.getString("district")%></td>
                            <td><%=rs.getString("state")%></td>
                            <td><%=rs.getString("pincode")%></td>
                            <td><%=rs.getString("contactno")%></td>
                            <td><%=rs.getString("aadharno")%></td>
                            <td>
                                <a href="validate.jsp?ano=<%=rs.getString("aadharno")%>" >
                                    <button class="btn btn-success">Book</button>
                                </a>
                            </td>
                            
                            <td>
                                <a href="view.jsp?ano=<%=rs.getString("aadharno")%>" >
                                    <button class="btn btn-success">View</button>
                                </a>
                            </td>
                        </tr>
                        <% } %>
                    </table>
                </div>
                <div class="col-sm-4" style="min-height: 150px;background-color:white;">
                    
                </div>
            </div>
            
                        <jsp:include page="../footer.jsp"/>
            
        </div>
    </body>
</html>
<%
    }
%>
