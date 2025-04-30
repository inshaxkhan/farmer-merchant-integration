<%-- 
    Document   : book
    Created on : 20 Sep, 2023, 11:01:57 AM
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
                <div class="col-sm-2"></div>
                <div class="col-sm-12" style="min-height: 600px;">
                    <h2 class="mx-auto bg-white fw-bold my-5 py-1" style="color:#2d3047;text-align: center;width: 45%;box-shadow: 0 0 8px white;text-shadow: 0 0 3px #2d3047;">Booking form</h2>
                    <%
                        String aadharno=session.getAttribute("ano").toString();
                        DbManager dm=new DbManager();
                        String query="select * from farmerinfo where aadharno='"+aadharno+"'";
                        ResultSet rs=dm.select(query);
                        if(rs.next()){
                        
                    %>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="book"/>
                        <table class="mx-auto" style="width: 50%">
                            <tr>
                                <td style="width: 30%">Registration id</td>
                                <td>
                                    <input type="text" name="regid" class="form-control" value="<%=rs.getString("regid")%>" readonly=""/>
                                </td>
                            </tr>
                            <tr>
                                <td>Farmer name</td>
                                <td>
                                    <input type="text" name="name" class="form-control" value="<%=rs.getString("name")%>" readonly=""/>
                                </td>
                            </tr>
                            <tr>
                                <td>Village</td>
                                <td>
                                    <input type="text" name="village" value="<%=rs.getString("village")%>" class="form-control" readonly=""/>
                                </td>
                            </tr>
                            <tr>
                                <td>Post</td>
                                <td>
                                    <input type="text" name="post" value="<%=rs.getString("post")%>" readonly class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>District</td>
                                <td>
                                    <input type="text" name="district" value="<%=rs.getString("district")%>" class="form-control" readonly=""/>
                                </td>
                            </tr>
                            <tr>
                                <td>State</td>
                                <td>
                                    <input type="text" name="state" value="<%=rs.getString("state")%>" class="form-control" readonly=""/>
                                </td>
                            </tr>
                            <tr>
                                <td>Pin Code</td>
                                <td>
                                    <input type="text" class="form-control" name="pincode" value="<%=rs.getString("pincode")%>" readonly=""/>
                                </td>
                            </tr>
                            <tr>
                                <td>Contact no</td>
                                <td>
                                    <input type="text" class="form-control" name="contactno" value="<%=rs.getString("contactno")%>" readonly=""/>
                                </td>
                            </tr>
                            <tr>
                                <td>Aadhar No</td>
                                <td>
                                    <input type="text" class="form-control" name="aadharno" value="<%=rs.getString("aadharno")%>" readonly=""/>
                                </td>
                            </tr>
                            <tr>
                                <td>No of packets</td>
                                <td>
                                    <input type="number" class="form-control" name="noofpacket" required="true"/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Duration in months</td>
                                <td>
                                    <input type="number" name="duration" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Rate</td>
                                <td>
                                    <input type="number" name="rate" class="form-control" required="true"/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Enter Advance Amt</td>
                                <td>
                                    <input type="number" name="advanceamt" class="form-control" required="true"/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td></td>
                                <td><button class="btn btn-danger">Submit</button></td>
                            </tr>
                        </table>
                    </form>
                    <% } %>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6" style="height: 80px;background-color: black"> 
                    <p class=" mt-3  h4 text-light " style="text-align: center">Copyright &COPY; to Farmer Merchant Integration</p>
                </div>
                <div class="col-sm-6" style="height: 80px;background-color: navy">
                      <p class=" mt-3 h4 text-light " style="text-align: center">Developed By :- Md Nehal</p>
        
  
                </div>
            </div>
        </div>
    </body>
</html>
<% } %>