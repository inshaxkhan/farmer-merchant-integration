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
        
        
        <div class="container-fluid" > 
            <jsp:include page="header.jsp"/>
                  <div class="row mt-2"> 
                      <div class="col-sm-4"> </div> 
                      <div class="col-sm-4" style="min-height: 400px; background-color: aliceblue; margin-top:100px;">

                          
                          <!--admin login page designing-->
                          
                          <h2 style="color:green; text-align: center;">ADMIN LOGIN</h2>
                          
                          <form class="form-group" method="post" action="controller.jsp">
                          <input type="hidden" name="page" value="login"/>

                          <table class="table" style="margin:0 auto; width:500px;">
                          <!-- USERID -->
                          <div class="mb-3">
                            <input type="text" name="userid" class="form-control" id="exampleFormControlInput1" placeholder="Enter User ID">
                          </div>
                          
                    
                          
                         <!-- password --> 
                         
                        <input type="password" name="password" id="inputPassword5" class="form-control" placeholder="Enter Password" aria-describedby="passwordHelpBlock">
                            
                        <br/>
                       
                        <!-- submit -->
                         <center>
                        <div>
                        <button type="submit" class="btn btn-success"> LOGIN </button>
                        </div>
                         </center>
                          </table>
                          </form>
                      </div>            <!-- closing of alice blue -->
                      <div class="col-sm-4"> </div>
                  </div>   <!--  closing of row mt-2-->
            <jsp:include page="footer.jsp"/>
        </div>         <!--  closing of container-->
           
    </body>
</html>
