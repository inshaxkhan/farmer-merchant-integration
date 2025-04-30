<%-- 
    Document   : header
    Created on : 18 Sep, 2023, 2:13:36 PM
    Author     : inshaxkhan
--%>

<%-- 
    Document   : header
    Created on : Sep 16, 2023, 10:07:56 AM
    Author     : sjkof
--%>
<style>
    .nav-link:hover{
        background-color: #198754;
        color: white;
    }
    
    
.bar1, .bar2, .bar3 {
  width: 35px;
  height: 5px;
  background-color: #333;
  margin: 6px 0;
  transition: 0.4s;
}

.change .bar1 {
  transform: translate(0, 11px) rotate(-45deg);
}

.change .bar2 {opacity: 0;}

.change .bar3 {
  transform: translate(0, -11px) rotate(45deg);
}
</style>
<script>
function myFunction(x) {
  x.classList.toggle("change");
}
</script>



<div class="row">
                <div class="col-sm-2" style="min-height:150px; background-color:#79AC78">
                    <img src="../images/fmi_images/logo/logo.png" class="img-fluid ms-5 mt-3 mb-5" style="height:100px;width:100px;display: block;"/>
                    
                </div>
                <div class="col-sm-10 pt-4" style="min-height: 150px;background-color:#79AC78">
                    <p class="display-2 fw-bold text-light " style="margin-top:-100px; margin-left:-170px; font-size:50px; color:#618264; text-align: center; font-family: 'Skranji';padding-top: 100px;">Khan Cold Storage <br/>& Warehouse</p>
        
                </div>
            </div>
            <div class="row">
                <!-- Nav Bar -->
    
      <nav class="navbar navbar-expand-lg navbar-light px-5">
        <a class="navbar-brand">ADMIN LOGIN</a>
        <button class="navbar-toggler" onclick="myFunction(this)" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
         
  <div class="bar1"></div>
  <div class="bar2"></div>
  <div class="bar3"></div>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto">
              <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="adminhome.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="news.jsp">News</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="enquiry.jsp">Enquiries</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="booking.jsp">Booking</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="closing.jsp">Closing</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Admin
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="changepassword.jsp">Change Password</a></li>
            <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
          </ul>
        </li>
          </ul>
       </div>
      </nav>
         
            </div>