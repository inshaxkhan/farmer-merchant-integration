<%-- 
    Document   : index
    Created on : 10 Sep, 2023, 10:13:05 AM
    Author     : inshaxkhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Merchant Integration</title>
        <link rel="stylesheet" href="css/bootstrap.css"/> 
        <script src="js/bootstrap.bundle.js"> </script>
    </head>
    
    
    <body>
        
        
        <jsp:include page="header.jsp"/>
                  <div style="margin-top:50px;"> 
                      
                      <div class="col-sm-12" style="min-height: 600px; background-color: aliceblue;">
                      <h2 style="text-align:center;color:#618264;">Enquiry Form</h2>
                    <form class="form-group" method="post" action="controller.jsp">
                        <input type="hidden" name="page" value="contactus"/>
                        <table class="table" style="width:50%;margin:auto;">
                            <tr>
                                <td>Enter Name</td>
                                <td>
                                    <input type="text" name="name" class="form-control"/> 
                                </td>
                            </tr> 
                            <tr>
                                <td>Select Gender</td>
                                <td>
                                    <input type="radio" name="gender" value="Male" class="form-check-input"/><span style="padding-right: 30px;"> Male</span>
                                    <input type="radio" name="gender" value="Female" class="form-check-input"/>Female
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Address</td>
                                <td>
                                    <textarea name="address" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Contact No</td>
                                <td>
                                    <input type="number" name="contactno" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Email Address</td>
                                <td>
                                    <input type="text" name="emailaddress" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Enquiry Text</td>
                                <td>
                                    <textarea name="enquirytext" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </td>
                            </tr>
                        </table> 
                    </form>
                </div>  <!--  closing of aliceblue-->
                    
            </div>  <!--   closing of header, row mt-2-->
            <jsp:include page="footer.jsp"/>
        
           
    </body>
</html>
