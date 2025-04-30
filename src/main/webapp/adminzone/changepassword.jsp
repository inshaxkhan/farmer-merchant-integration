<%-- 
    Document   : changepassword
    Created on : 18 Sep, 2023, 2:11:05 PM
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
        
        <style>
            *{
                scroll:smooth;
            }
            #frmchangepassword table tr td input{
                box-shadow: none;
                border: 1px solid gray;
            }
            #frmchangepassword table tr td input:focus{
                box-shadow: 0 0 0.45rem grey,0 0 0.25em black;
                border-color: brown; 
            }
            .col-sm-12 h2{
                text-align: center;
                color: blue;
                font-family: monospace;
                font-weight: bold;
                width: 50%;
                border-bottom: 5px solid;
            }
            #mainpage{
                display: flex;
                align-items:center;
                justify-content:center;
            }
        </style>
    </head>
    <body>
        <script>
            function validate(){
                var op=document.getElementById("oldpassword");
                var np=document.getElementById("newpassword");
                var cp=document.getElementById("confirmpassword");
                if(op.value=="" || op.value==null){
                    alert("Please enter old password!");
                    op.focus();
                }
                else if(np.value==""||np.value==null){
                    alert("Please enter new password!");
                    np.focus();
                }
                else if(cp.value==""||cp.value==null){
                    alert("Please enter confirm password!");
                    cp.focus();
                }
                else if(np.value!=cp.value){
                    alert("Confirm password is not matched");
                    cp.focus();
                }
                else{
                    document.getElementById("frmchangepassword").submit();
                }
            }
        </script>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2 pt-5" id="mainpage">
                <div class="col-sm-12" style="min-height: 600px;">
                    <h2 class="py-2 mb-3 m-auto mt-3">Change Password</h2>
                    <form class="form-group bg-dark m-auto py-3 px-2" id="frmchangepassword" action="admincontroller.jsp" onsubmit="event.preventDefault();validate();" method="post" style="width:50%">
                        <input type="hidden" name="page" value="changepassword"/>
                        <table class="table border-none" >
                            <tr>
                                <td>Enter old password: </td>
                                <td>
                                    <input type="password" class="form-control" name="oldpassword" id="oldpassword"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 30%">Enter new password: </td>
                                <td >
                                    <input type="password" class="form-control" name="newpassword" id="newpassword"/>
                                </td>
                            </tr>
                            <tr>
                                <td >Confirm new password: </td>
                                <td>
                                    <input type="password" class="form-control" name="confirmpassword" id="confirmpassword"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success text-light me-5">Submit</button>
                                    <button type="reset"class="btn btn-secondary ">Reset</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <!--Main Contents-->
<!--            <div class="row mt-2">
                <div class="col-sm-6" style="min-height: 600px;background-color: aliceblue;"></div>
                <div class="col-sm-6" style="min-height: 600px;background-color: gray;"></div>
            </div>-->
            
            <!--Footer Starts-->
            <div class="row mt-2" style="min-height: 250px;">
                <div class="col-sm-5 fw-semibold text-light bg-dark pb-2" style="text-align: center">
                    <div class="fw-bold py-2" style="border-bottom: 2px solid;">SOCIAL LINKS</div>
                    <div class="row h-90 mb-2" style="border-bottom: 3px solid;">
                        <div class="col-sm-6 h-100 py-2">  
                            <ul class="nav flex-column">
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Facebook</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Instagram</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">LinkedIn</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Whatsapp</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6 h-100 py-2">
                            <ul class="nav flex-column">
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Youtube</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Blog</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">NSE</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">BSE</a></li>
                            </ul>
                        </div>
                    </div>Copyright &COPY; to Farmer Merchant Integration
                </div>
                <div class="col-sm-2 bg-white" id="admfoot" style="background: url('../images/logo.png');background-position: centre;background-size: fit; background-repeat: no-repeat;">
                </div>
                <div class="col-sm-5 fw-semibold text-light bg-dark pb-2" style="text-align: center">
                    <div class="fw-bold py-2" style="border-bottom: 2px solid;">QUICK LINKS</div>
                    <div class="row h-90 mb-2" style="border-bottom: 3px solid;">
                        <div class="col-sm-6 h-100 py-2">
                            <ul class="nav flex-column">
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Team</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Clients</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Warehouses</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Map</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6 h-100 py-2">
                            <ul class="nav flex-column">
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Warehouses</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Lease spaces</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Supply chain</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Storage</a></li>
                            </ul>
                        </div>
                    </div>
                    Developed by: Insha Khan
                </div>
            </div>
            <!--Footer Ends-->
            
        </div>
    </body>
</html>
<%
    }
%>
