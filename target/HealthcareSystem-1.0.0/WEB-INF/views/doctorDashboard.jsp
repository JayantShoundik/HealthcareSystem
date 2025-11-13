<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Doctor Dashboard</title>
    <style>
        /* Global */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #e6f0ff, #f7fbff);
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Header */
        .header {
            background: linear-gradient(135deg, #004aad, #0077cc);
            color: white;
            padding: 25px 10px;
            text-align: center;
            box-shadow: 0 4px 20px rgba(0,0,0,0.2);
        }

        .header h1 {
            font-size: 32px;
            margin-bottom: 8px;
            letter-spacing: 0.5px;
        }

        .header p {
            font-size: 16px;
            opacity: 0.9;
        }

        /* Summary Section */
        .summary {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin: 50px auto 30px auto;
            max-width: 1100px;
            gap: 20px;
        }

        .card {
            background: white;
            border-radius: 18px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            padding: 25px 20px;
            width: 30%;
            min-width: 280px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .card h3 {
            color: #004aad;
            margin-bottom: 10px;
            font-size: 20px;
        }

        .card p {
            font-size: 26px;
            font-weight: 700;
            color: #222;
        }

        /* Section Blocks */
        .section {
            margin: 40px auto;
            width: 90%;
            background: #ffffff;
            border-radius: 16px;
            padding: 25px 30px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.08);
            transition: transform 0.3s ease;
        }

        .section:hover {
            transform: translateY(-3px);
        }

        h2 {
            color: #004aad;
            font-size: 22px;
            border-left: 4px solid #004aad;
            padding-left: 10px;
            margin-bottom: 15px;
        }

        /* Tables */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            font-size: 15px;
        }

        th, td {
            padding: 14px 16px;
            text-align: left;
            border-bottom: 1px solid #e4e4e4;
        }

        th {
            background-color: #004aad;
            color: white;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        tr:hover {
            background-color: #f5faff;
        }

        /* Status Badges */
        .status {
            font-weight: 600;
            padding: 6px 10px;
            border-radius: 20px;
            font-size: 13px;
            text-transform: capitalize;
        }

        .Pending {
            background-color: #fff4ce;
            color: #8a6d00;
        }

        .Confirmed {
            background-color: #d8f7d0;
            color: #216e39;
        }

        .Completed {
            background-color: #cfe8ff;
            color: #004085;
        }

        /* Footer */
        .footer {
            text-align: center;
            margin: 40px 0;
        }

        .btn {
            text-decoration: none;
            background-color: #004aad;
            color: white;
            padding: 12px 28px;
            border-radius: 8px;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: #0063cc;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        /* Responsive */
        @media (max-width: 768px) {
            .summary {
                flex-direction: column;
                align-items: center;
            }

            .card {
                width: 80%;
            }

            h2 {
                font-size: 20px;
            }

            table, th, td {
                font-size: 13px;
            }
        }
    </style>
</head>

<body>
    <div class="header">
        <h1>Welcome, ${doctorName}</h1>
        <p>Here’s an overview of your appointments</p>
    </div>

    <!-- Summary Cards -->
    <div class="summary">
        <div class="card">
            <h3>Total Appointments</h3>
            <p>${totalAppointments}</p>
        </div>
        <div class="card">
            <h3>Pending</h3>
            <p>${pendingCount}</p>
        </div>
        <div class="card">
            <h3>Confirmed</h3>
            <p>${confirmedCount}</p>
        </div>
    </div>

    <!-- Today's Appointments -->
    <div class="section">
        <h2>Today's Appointments</h2>
        <table>
            <tr>
                <th>Patient</th>
                <th>Date</th>
                <th>Status</th>
            </tr>
            <c:forEach var="a" items="${todaysAppointments}">
                <tr>
                    <td>${a.patientName}</td>
                    <td>${a.date}</td>
                    <td><span class="status ${a.status}">${a.status}</span></td>
                </tr>
            </c:forEach>
            <c:if test="${empty todaysAppointments}">
                <tr><td colspan="3" style="text-align:center; color:#777;">No appointments today</td></tr>
            </c:if>
        </table>
    </div>

    <!-- Upcoming Appointments -->
    <div class="section">
        <h2>Upcoming Appointments</h2>
        <table>
            <tr>
                <th>Patient</th>
                <th>Date</th>
                <th>Status</th>
            </tr>
            <c:forEach var="a" items="${upcomingAppointments}">
                <tr>
                    <td>${a.patientName}</td>
                    <td>${a.date}</td>
                    <td><span class="status ${a.status}">${a.status}</span></td>
                </tr>
            </c:forEach>
            <c:if test="${empty upcomingAppointments}">
                <tr><td colspan="3" style="text-align:center; color:#777;">No upcoming appointments</td></tr>
            </c:if>
        </table>
    </div>

    <!-- Completed Appointments -->
    <div class="section">
        <h2>Completed Appointments</h2>
        <table>
            <tr>
                <th>Patient</th>
                <th>Date</th>
                <th>Status</th>
            </tr>
            <c:forEach var="a" items="${completedAppointments}">
                <tr>
                    <td>${a.patientName}</td>
                    <td>${a.date}</td>
                    <td><span class="status ${a.status}">${a.status}</span></td>
                </tr>
            </c:forEach>
            <c:if test="${empty completedAppointments}">
                <tr><td colspan="3" style="text-align:center; color:#777;">No completed appointments yet</td></tr>
            </c:if>
        </table>
    </div>

    <div class="footer">
        <a href="/doctorLogin" class="btn">Logout</a>
    </div>
    <%@ include file= "footer.jsp" %>
</body>
</html>
