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
                  <div> 
                      
                      <div class="col-sm-12" style="min-height: 600px; background-color:#D0E7D2; padding-top: 50px; padding-bottom: 100px;  ">
                          
                    <h1 style="text-align: center; font-family:ubuntu; color:#618264; padding-bottom: 10px;">Farmer's Registration Form</h1>      
                    <form class="form-group" method="post" action="controller.jsp" >
                        
                  
                        <input type="hidden" name="page" value="registration"/>
                        <table class="table" style="width:40%;margin:auto; ">
                            <tr><th style="background-color: #B0D9B1; color:white; border-radius: 30px 0px 0px 0px ">Personal Information: </th> 
                            <th style="background-color: #B0D9B1; border-radius: 0px 30px 0px 0px ;"></th>
                            </tr>    
                            <tr>
                                <td>Enter Name</td>
                                <td>
                                    <input type="text" name="name" class="form-control"/> 
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Father's Name</td>
                                <td>
                                    <input type="text" name="fname" class="form-control"/> 
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Mother's Name</td>
                                <td>
                                    <input type="text" name="mname" class="form-control"/> 
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Select Gender</td>
                               <td> <center>
                                    <input type="radio" name="gender" value="Male" class="form-check-input"/>Male
                                    <span style="padding-left: 100px;"></span>
                                    <input type="radio" name="gender" value="Female" class="form-check-input"/>Female
                                
                               </center>
                               </td>
                            </tr>
                            <tr><th   style="background-color: #B0D9B1; color:white;">Address Details: </th> 
                            <th style="background-color: #B0D9B1;"></th>
                            </tr>
                            <tr>
                                <td>Enter Village</td>
                                <td> 
                                   <input type="text" name="village" class="form-control"/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Enter Post</td>
                                <td>
                                   <input type="text" name="post" class="form-control"/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Enter District</td>
                                <td>
                                    <input type="text" name="district" class="form-control"/>
                                </td>
                            </tr>
                            
                            
                            <tr>
                                <td>Enter State</td>
                                <td>
                                   <input type="text" name="state" class="form-control"/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Enter Pincode</td>
                                <td>
                                   <input type="text" name="pincode" class="form-control"/>
                                </td>
                            </tr>
                            
              <tr><th  style="background-color:#B0D9B1; color:white;">Contact & Card Details: </th>
                       <th style="background-color: #B0D9B1;"></th>
              </tr>
                     
                            <tr>
                                <td>Enter Contact Number :</td>
                                <td>
                                    <input type="text" name="contactno" class="form-control"/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Enter Aadhar number :</td>
                                <td>
                                    <input type="text" name="aadharno" class="form-control"/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Enter Pan Number</td>
                                <td>
                                    <input type="text" name="panno" class="form-control"/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td style="border-radius: 0px 0px 0px 30px"></td>
                                <td style="border-radius: 0px 0px 30px 0px">
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </td>
                            </tr>
                            
                            
                        </table> 
                        
                    </form>
                          
                          
                          
                
                          
                      </div>
                  </div> 
    
    </body>
</html>
