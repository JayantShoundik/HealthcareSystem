<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Appointments | Patient Portal</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #00b4d8, #0077b6);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            color: #333;
        }

        .container {
            width: 90%;
            max-width: 950px;
            margin: 60px auto;
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(12px);
            border-radius: 18px;
            padding: 40px 50px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
            color: #fff;
            animation: fadeIn 0.7s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(15px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            font-weight: 600;
            color: #ffffff;
            margin-bottom: 35px;
            font-size: 30px;
            letter-spacing: 0.5px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 12px;
            overflow: hidden;
            background: rgba(255, 255, 255, 0.1);
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 14px 18px;
            text-align: left;
            font-size: 15px;
            color: #fff;
        }

        th {
            background-color: rgba(0, 74, 173, 0.85);
            font-weight: 600;
        }

        tr:nth-child(even) {
            background-color: rgba(255, 255, 255, 0.08);
        }

        tr:hover {
            background-color: rgba(255, 255, 255, 0.18);
            transition: 0.3s;
        }

        .status {
            font-weight: 600;
            padding: 6px 12px;
            border-radius: 8px;
            font-size: 13px;
            display: inline-block;
        }

        .Pending {
            background-color: #fff3cd;
            color: #856404;
        }

        .Confirmed {
            background-color: #d4edda;
            color: #155724;
        }

        .Cancelled {
            background-color: #f8d7da;
            color: #721c24;
        }

        .no-data {
            text-align: center;
            padding: 50px;
            font-size: 17px;
            color: #e8e8e8;
        }

        .btn {
            display: inline-block;
            margin-top: 30px;
            padding: 12px 26px;
            background: linear-gradient(135deg, #ffffff, #d9f3ff);
            color: #0077b6;
            text-decoration: none;
            border-radius: 10px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 3px 10px rgba(0,0,0,0.2);
        }

        .btn:hover {
            background: linear-gradient(135deg, #0077b6, #023e8a);
            color: #fff;
            transform: scale(1.05);
            box-shadow: 0 6px 20px rgba(0,119,182,0.3);
        }

        @media (max-width: 768px) {
            .container {
                margin: 25px;
                padding: 25px 20px;
            }

            h2 {
                font-size: 24px;
            }

            table, th, td {
                font-size: 13px;
            }

            .btn {
                font-size: 14px;
                padding: 10px 18px;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>My Appointments</h2>

        <c:choose>
            <c:when test="${not empty appointments}">
                <table>
                    <tr>
                        <th>Appointment ID</th>
                        <th>Doctor Name</th>
                        <th>Date</th>
                        <th>Status</th>
                    </tr>

                    <c:forEach var="a" items="${appointments}">
                        <tr>
                            <td>${a.id}</td>
                            <td>${a.doctorName}</td>
                            <td>${a.date}</td>
                            <td><span class="status ${a.status}">${a.status}</span></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:when>
            <c:otherwise>
                <div class="no-data">No appointments found yet. Book one to get started.</div>
            </c:otherwise>
        </c:choose>

        <div style="text-align:center;">
            <a href="#" onclick="history.back()" class="btn">⬅ Back to Dashboard</a>
        </div>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
