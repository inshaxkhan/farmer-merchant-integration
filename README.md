## I had build this project in AUGUST 2023, 2 years back, as a part of my summer training in Softpro, India

# 🌾 Farmer-Merchant Integration System (FMI)
This web-based project was developed as part of a Summer Training Program in 2023 at Softpro India, aimed at digitizing the interaction between farmers and merchants. The application provides an intuitive interface for farmers to register, connect with merchants, and receive instant SMS updates upon form submissions, helping bridge the gap between rural producers and urban markets.

# 🔧 Key Features
## Admin Panel:
Admins can manage users, view submissions, and oversee system-wide data related to inquiries, product listings, or feedback.

## Farmer Contact Form with SMS Integration:
When a farmer submits a contact form, the system sends an automated SMS notification to acknowledge the submission using an integrated SMS API.

## JSP-Based UI:
The system uses Java Server Pages (.jsp files) for dynamic content rendering and user interaction.

## Modular Web Architecture:
Organized using standard Java EE practices with clear separation between:
src/main/java: Java source packages (e.g., Connect, dbpack, fmi)
webapp/: Static and JSP content (adminzone, CSS, JS, images)
WEB-INF, META-INF: Deployment and config structure

# 🛠️ Technologies Used
### Backend: Java (Servlets, JSP)
### Frontend: HTML, CSS, JS
### Build Tool: Maven (pom.xml)
### IDE: NetBeans
### SMS API: For real-time farmer notifications 
### Database: MySQL 

# 🧾 Use Case
This system facilitates better communication and data management between:
### Farmers looking to cold storage availability for storing their produce, needs, or inquiries.
### Merchants or administrators who monitor the backend system for leads, contact information, or feedback.
