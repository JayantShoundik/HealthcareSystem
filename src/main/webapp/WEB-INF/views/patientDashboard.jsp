<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Patient Central Desk</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap');

        /* ---------- Global ---------- */
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #00b4d8, #0077b6);
            color: #333;
            height: 100vh;
            display: flex;
        }

        /* ---------- Sidebar ---------- */
        .sidebar {
            width: 260px;
            background: rgba(0, 50, 130, 0.7);
            backdrop-filter: blur(12px);
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            padding: 25px 20px;
            box-shadow: 4px 0 20px rgba(0,0,0,0.15);
        }

        .sidebar h2 {
            text-align: center;
            font-weight: 700;
            font-size: 22px;
            margin-bottom: 40px;
            letter-spacing: 1px;
        }

        .menu a {
            display: block;
            color: white;
            text-decoration: none;
            padding: 12px 15px;
            margin: 10px 0;
            border-radius: 8px;
            font-weight: 500;
            transition: all 0.3s;
        }

        .menu a:hover {
            background-color: rgba(255, 255, 255, 0.2);
            transform: translateX(5px);
        }

        .logout {
            text-align: center;
            margin-top: 40px;
        }

        .logout a {
            color: #ffcd00;
            text-decoration: none;
            font-weight: 600;
            transition: 0.3s;
        }

        .logout a:hover {
            color: #fff;
        }

        /* ---------- Main Content ---------- */
        .main-content {
            flex: 1;
            padding: 40px 50px;
            overflow-y: auto;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 35px;
            color: white;
        }

        .header h1 {
            font-size: 30px;
            font-weight: 700;
            background: linear-gradient(90deg, #fff, #d9f3ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /* ---------- Cards ---------- */
        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
            gap: 25px;
        }

        .card {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(12px);
            padding: 25px;
            border-radius: 18px;
            text-align: left;
            color: white;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .card:hover {
            transform: translateY(-6px) scale(1.03);
            background: rgba(255, 255, 255, 0.25);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.25);
        }

        .card h3 {
            margin: 0 0 10px;
            font-size: 20px;
            font-weight: 600;
            color: #ffffff;
        }

        .card p {
            margin: 0;
            font-size: 14px;
            color: #f1f1f1;
            opacity: 0.9;
        }

        /* ---------- Emergency Banner ---------- */
        .emergency-banner {
            background: linear-gradient(90deg, #e63946, #ff6b6b);
            color: white;
            text-align: center;
            padding: 15px;
            border-radius: 12px;
            margin-top: 40px;
            font-weight: 600;
            letter-spacing: 0.5px;
            box-shadow: 0 4px 20px rgba(230, 57, 70, 0.4);
        }

        .emergency-banner a {
            color: #fff200;
            text-decoration: underline;
            font-weight: 700;
        }

        /* ---------- Scroll ---------- */
        ::-webkit-scrollbar {
            width: 8px;
        }
        ::-webkit-scrollbar-thumb {
            background-color: rgba(0,0,0,0.3);
            border-radius: 10px;
        }

        /* ---------- Responsive ---------- */
        @media (max-width: 768px) {
            .sidebar {
                width: 200px;
            }

            .main-content {
                padding: 25px;
            }

            .header h1 {
                font-size: 24px;
            }
        }
    </style>
</head>

<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <div>
            <h2>Patient Panel</h2>
            <div class="menu">
                <a href="/viewdoctors">View Doctors</a>
                <a href="/bookAppointment">Book Appointment</a>
                <a href="/visitHistory">Visit History</a>
                <a href="/patientAppointments">My Appointments</a>
                <a href="/onlineConsultation">Online Consultation</a>
                <a href="/enquiry"> Enquiry</a>
                <a href="/help"> Help Center</a>
            </div>
        </div>
        <div class="logout">
            <a href="/patientLogin">Logout</a>
        </div>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="header">
            <h1>Central Desk</h1>
        </div>

        <div class="cards">
            <div class="card" onclick="location.href='/viewdoctors'">
                <h3>View Doctor List</h3>
                <p>See all available doctors and their specializations.</p>
            </div>

            <div class="card" onclick="location.href='/bookAppointment'">
                <h3>Book Appointment</h3>
                <p>Schedule your next hospital visit easily.</p>
            </div>

            <div class="card" onclick="location.href='/patientAppointments'">
                <h3>My Appointments</h3>
                <p>Track your booked and confirmed appointments.</p>
            </div>

            <div class="card" onclick="location.href='/visitHistory'">
                <h3>Visit History</h3>
                <p>Review all your past medical visits.</p>
            </div>

            <div class="card" onclick="location.href='/onlineConsultation'">
                <h3>Online Consultation</h3>
                <p>Chat or video consult with our doctors anytime.</p>
            </div>

            <div class="card" onclick="location.href='/enquiry'">
                <h3>Enquiry</h3>
                <p>Ask questions or request hospital-related information.</p>
            </div>

            <div class="card" onclick="location.href='/help'">
                <h3>Help Center</h3>
                <p>Get quick assistance for your queries.</p>
            </div>
        </div>

        <div class="emergency-banner">
             Emergency? <a href="tel:108">Call 108</a> or visit the nearest hospital immediately.
        </div>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
