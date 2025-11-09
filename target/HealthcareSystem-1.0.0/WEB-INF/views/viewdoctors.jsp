<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- <%
    // Prevent direct access without login
    if (session.getAttribute("userFullName") == null) {
        response.sendRedirect("managementLogin.jsp");
        return;
    }
%> -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Doctors - HMS Admin</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

    <style>
        body {
            background-color: #f4f7f6;
            font-family: 'Poppins', sans-serif;
        }

        .container {
            margin-top: 40px;
        }

        h2 {
            text-align: center;
            font-weight: 700;
            color: #007bff;
            margin-bottom: 30px;
        }

        .table-container {
            background: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        table {
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: white;
            font-weight: 600;
            text-transform: uppercase;
        }

        tr:hover {
            background-color: #eaf4ff;
        }

        .btn-back {
            display: inline-block;
            margin-bottom: 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 8px;
            padding: 10px 20px;
            font-weight: 500;
            text-decoration: none;
            transition: 0.3s;
        }

        .btn-back:hover {
            background-color: #0056b3;
        }

        .no-data {
            text-align: center;
            color: #888;
            font-size: 18px;
            padding: 30px;
        }
    </style>
</head>
<body>

<div class="container">
    <a href="/managementdashboard" class="btn-back"><i class="bi bi-arrow-left"></i> Back to Dashboard</a>
    <h2>Available Doctors</h2>

    <div class="table-container">
        <c:choose>
            <c:when test="${not empty doctors}">
                <table class="table table-hover align-middle">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Doctor Name</th>
                            <th>Specialization</th>
                            <th>Availability</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="doc" items="${doctors}">
                            <tr>
                                <td>${doc.doctorId}</td>
                                <td>${doc.name}</td>
                                <td>${doc.specialization}</td>
                                <td>${doc.availability}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <div class="no-data">
                    <i class="bi bi-exclamation-circle"></i> No doctors found in the system.
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
