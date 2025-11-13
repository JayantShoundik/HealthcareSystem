🏥 Healthcare Management System
📘 Overview

The Healthcare Management System (HMS) is a full-stack web application designed to streamline hospital operations by connecting patients, doctors, and management staff through a unified dashboard.

The system allows patients to book appointments, doctors to view and manage schedules, and administrators to monitor overall hospital performance, such as appointments, doctors, patients, and revenue.

This project is built using Spring Boot (MVC), JSP, Hibernate/JPA, and MySQL.

⚙️ Tech Stack
Layer	Technology
Frontend	JSP, HTML5, CSS3, Bootstrap 5
Backend	Spring Boot, Hibernate (JPA)
Database	MySQL
Server	Apache Tomcat (Embedded)
IDE	VS Code / IntelliJ IDEA
Build Tool	Maven
📁 Project Modules
🧍 Patient Module

Register and login securely.

View available doctors and their specializations.

Book new appointments online.

Track and view appointment status (Pending, Confirmed, Completed).

Access past visit history and consultation records.

Raise hospital-related inquiries or requests.

Emergency section with quick-call integration.

🩺 Doctor Module

Secure login based on credentials from the doctors table.

Personalized dashboard showing:

Total appointments

Pending, confirmed, and completed appointments

Today’s patient list with live status update buttons

Ability to mark appointments as Confirmed / Completed / Cancelled.

🏢 Management (Admin) Module

Login via staff table credentials.

Dashboard showing:

Total patients

Total doctors

Today’s appointments

Daily revenue (static/demo metric)

View and manage:

Doctor records

Patient details

Appointments

Billing and reports (future modules placeholder).

🗄️ Database Schema Overview

Tables used:

doctors
Columns: doctor_id, name, specialization, availability, email, password, contact

appointments
Columns: appointment_id, patient_name, doctor_name, date, status

staff
Columns: staff_id, name, email, password, role

(Foreign keys link appointments.doctor_name → doctors.name for doctor-patient mapping.)

🚀 How to Run the Project

Clone the Repository:

git clone https://github.com/<your-username>/HealthcareSystem.git
cd HealthcareSystem


Create MySQL Database:

CREATE DATABASE healthcare_system;
USE healthcare_system;


Update application.properties:

spring.datasource.url=jdbc:mysql://localhost:3306/healthcare_system
spring.datasource.username=root
spring.datasource.password=yourpassword
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true


Run the Application:

mvn spring-boot:run


Access in Browser:

http://localhost:8080/

🌟 Key Features Summary
Role	Features
Patient	Book/View Appointments, View Doctors, Online Help
Doctor	Dashboard, Appointment Status Update, Schedule Overview
Management	KPI Dashboard, Doctor/Patient Lists, Appointment Control
🧩 Future Enhancements

The project has been structured for easy expansion. Planned features include:

🔹 1. Electronic Medical Records (EMR)

Store patient medical history, prescriptions, and reports with secure access control.

🔹 2. Notification & Email System

Automatic SMS/Email alerts for appointment confirmation and reminders.

🔹 3. Online Billing & Payment Integration

Integrate Razorpay or Stripe for online hospital bill payments and invoices.

🔹 4. Role-Based Access Control (RBAC)

Enhance authentication using Spring Security for multiple roles and permission layers.

🔹 5. Analytics & Reporting

Generate charts and reports for hospital performance using Power BI or embedded dashboards.

🔹 6. Telemedicine (Video Consultation)

Enable secure online consultation between doctor and patient.

🔹 7. AI-based Appointment Suggestions

Predict optimal appointment slots based on doctor availability and patient trends.

🔹 8. REST API for Mobile App Integration

Expose endpoints for Android/iOS integration in future versions.

🧑‍💻 Developed By

Jayant Shoundik
Engineering Student, C.V. Raman Global University
📍 Web Technology & Financial Analytics Enthusiast
💬 Passionate about building intelligent healthcare and financial systems.
