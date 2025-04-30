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
        
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.css"/> 
        
        
        <style>
           
  @import url('https://fonts.googleapis.com/css2?family=Skranji:wght@400;700&display=swap');

/*         start of cards*/
            :root{
  --background-dark: #ffffff;
  --text-light: rgba(255,255,255,0.6);
  --text-lighter: rgba(255,255,255,0.9);
  --spacing-s: 8px;
  --spacing-m: 16px;
  --spacing-l: 24px;
  --spacing-xl: 32px;
  --spacing-xxl: 64px;
  --width-container: 1200px;
}

*{
  border: 0;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html{
  height: 100%;
  font-family: 'Montserrat', sans-serif;
  font-size: 14px;
}

body{
  height: 100%;
  width:100%;
}

.hero-section{
  align-items: flex-start;
  background-color: white;
  display: flex;
  min-height: 100%;
  justify-content: center;
  padding: var(--spacing-xxl) var(--spacing-l);
}

.card-grid{
  display: grid;
  grid-template-columns: repeat(1, 1fr);
  grid-column-gap: var(--spacing-l);
  grid-row-gap: var(--spacing-l);
  max-width: var(--width-container);
  width: 100%;
}

@media(min-width: 540px){
  .card-grid{
    grid-template-columns: repeat(2, 1fr); 
  }
}

@media(min-width: 960px){
  .card-grid{
    grid-template-columns: repeat(4, 1fr); 
  }
}

.card{
  list-style: none;
  position: relative;
  background-color: transparent;
  margin-top:300px;
}

.card:before{
  content: '';
  display: block;
  padding-bottom: 150%;
  width: 100%;
}

.card__background{
  background-size: cover;
  background-position: center;
  border-radius: var(--spacing-l);
  bottom: 0;
  filter: brightness(0.75) saturate(1.2) contrast(0.85);
  left: 0;
  position: absolute;
  right: 0;
  top: 0;
  transform-origin: center;
  trsnsform: scale(1) translateZ(0);
  transition: 
    filter 200ms linear,
    transform 200ms linear;
}

.card:hover .card__background{
  transform: scale(1.05) translateZ(0);
}

.card-grid:hover > .card:not(:hover) .card__background{
  filter: brightness(0.5) saturate(0) contrast(1.2) blur(20px);
}

.card__content{
  left: 0;
  padding: var(--spacing-l);
  position: absolute;
  top: 0;
}

.card__category{
  color: var(--text-lighter);
  font-size: 3rem;
  margin-bottom: var(--spacing-s);
  text-transform: uppercase;
  text-align: center;
}

.card__heading{
  color: white;
  font-size: 1.6rem;
  text-shadow: 2px 2px 20px rgba(0,0,0,0.2);
  line-height: 1.4;
  word-spacing: 100vw;
  text-align: center;
  margin-top:65px;
}

/*end of cards*/


        </style>
        
    </head>
    
    
    <body>
        
        
         
            <jsp:include page="header.jsp"/>
           
<!--name-->
    <div style="height:300px; position: relative">
        <img src="images/fmi_images/logo/girl.jpeg" width="200px" height="200px" alt="alt" style="position: absolute; top:90px;right: 0px;"/>
        <h1 style="font-size:90px; color:#618264; text-align: center; font-family: 'Skranji';padding-top: 100px"> Khan Cold Storage<br/> & Warehouse</h1>
        <img src="images/fmi_images/logo/boy.jpeg" width="200px" height="200px" alt="alt" style="position: absolute; top:90px;left: 0px;"/>
        
    </div>
            

<!-- customer testimonials  -->

<div style="height:500px; width:100%; background-color: #79AC78;">
    
    <div style="font-size:50px; margin-left:50px; margin-top:50px; color:white; font-family:'Skranji'"> Our Services </div>

    
</div>


            <div class="slider1" style="height:800px; width:90%; margin-left: 5%;">
                <!--carousal-->

   <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="images/fmi_images/racks/one.jpeg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
        <img src="images/fmi_images/racks/two.jpeg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
        <img src="images/fmi_images/racks/four.jpeg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
        </div>
   </div>  
<!--       closing of slider-->
            



<!--  start of card section -->
            
<section class="hero-section">
  <div class="card-grid">
    <a class="card" href="#">
      <div class="card__background" style="background-image: url(images/fmi_images/horizontal/e.jpeg)"></div>
      <div class="card__content">
        <p class="card__category">SUPPORT</p>
        <h3 class="card__heading">24X7 Customer Support available </h3>
      </div>
    </a>
    <a class="card" href="#">
      <div class="card__background" style="background-image: url(images/fmi_images/horizontal/h.jpeg)"></div>
      <div class="card__content">
        <p class="card__category">Loyalty</p>
        <h3 class="card__heading">Company Loyalty Program for customers</h3>
      </div>
    </a>
    <a class="card" href="#">
      <div class="card__background" style="background-image: url(images/fmi_images/horizontal/g.jpeg)"></div>
      <div class="card__content">
        <p class="card__category">EMI</p>
        <h3 class="card__heading">Monthly payment options available</h3>
      </div>
    </li>
    <a class="card" href="#">
      <div class="card__background" style="background-image: url(images/fmi_images/horizontal/f.jpeg)"></div>
      <div class="card__content">
        <p class="card__category">Bigger & Better</p>
        <h3 class="card__heading">Biggest in North India</h3>
      </div>
    </a>
  <div>
</section>


<!-- customer testimonials  -->

<div style="height:500px; width:100%; background-color: #79AC78;">
    

    
</div>

            <jsp:include page="footer.jsp"/>
        
           
    </body>
</html>
