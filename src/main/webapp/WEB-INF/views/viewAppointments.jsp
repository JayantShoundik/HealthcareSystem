<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Appointments</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f8fb;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1000px;
            margin: 60px auto;
            background: #ffffff;
            padding: 40px 50px;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
        }

        h2 {
            text-align: center;
            color: #004aad;
            font-weight: 600;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0,0,0,0.05);
        }

        th, td {
            padding: 14px 18px;
            text-align: left;
            border-bottom: 1px solid #e1e8f0;
            font-size: 15px;
        }

        th {
            background-color: #004aad;
            color: #fff;
            font-weight: 600;
        }

        tr:nth-child(even) {
            background-color: #f9fcff;
        }

        tr:hover {
            background-color: #eef5ff;
        }

        .status {
            font-weight: 600;
            padding: 5px 10px;
            border-radius: 6px;
            font-size: 13px;
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

        .btn {
            display: inline-block;
            margin-top: 25px;
            padding: 12px 20px;
            background-color: #004aad;
            color: #fff;
            text-decoration: none;
            border-radius: 8px;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: #0063cc;
            transform: translateY(-1px);
        }

        .no-data {
            text-align: center;
            color: #777;
            padding: 40px;
            font-size: 16px;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .container {
                margin: 30px 15px;
                padding: 25px 20px;
            }

            table, th, td {
                font-size: 13px;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>All Appointments</h2>

        <c:choose>
            <c:when test="${not empty appointments}">
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Patient Name</th>
                        <th>Doctor Name</th>
                        <th>Date</th>
                        <th>Status</th>
                    </tr>

                    <c:forEach var="a" items="${appointments}">
                        <tr>
                            <td>${a.id}</td>
                            <td>${a.patientName}</td>
                            <td>${a.doctorName}</td>
                            <td>${a.date}</td>
                            <td><span class="status ${a.status}">${a.status}</span></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:when>
            <c:otherwise>
                <div class="no-data">No appointments found in the system.</div>
            </c:otherwise>
        </c:choose>

        <div style="text-align:center;">
            <button type="button" onclick="history.back()">Back to Dashboard </button>

        </div>
    </div>
  <%@ include file= "footer.jsp" %>
</body>
</html>
