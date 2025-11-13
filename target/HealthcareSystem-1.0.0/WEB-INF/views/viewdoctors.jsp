<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
        font-family: 'Poppins', sans-serif;
        background-color: #f3f6f9; /* Softer off-white background */
        color: #222;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 1000px;
        margin: 60px auto;
        background: #ffffff;
        border-radius: 14px;
        padding: 40px;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.08);
    }

    h2 {
        text-align: center;
        font-weight: 700;
        color: #003366; /* Deep navy for good contrast */
        margin-bottom: 35px;
        letter-spacing: 0.5px;
    }

    .table-container {
        overflow-x: auto;
        border-radius: 10px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        border-radius: 10px;
        overflow: hidden;
    }

    th {
        background-color: #004aad; /* Accessible royal blue */
        color: #ffffff;
        text-transform: uppercase;
        font-weight: 600;
        padding: 14px 16px;
        font-size: 14px;
        letter-spacing: 0.4px;
    }

    td {
        text-align: center;
        padding: 14px 16px;
        border-bottom: 1px solid #d8e1eb;
        font-size: 15px;
        color: #222;
    }

    tr:nth-child(even) {
        background-color: #f8fbff; /* Light background for better readability */
    }

    tr:hover {
        background-color: #dfefff; /* Slightly deeper blue for focus */
        transition: background-color 0.3s ease;
    }

    .btn-back {
        background-color: #004aad;
        color: #fff;
        text-decoration: none;
        padding: 10px 20px;
        border-radius: 8px;
        display: inline-block;
        margin-bottom: 25px;
        font-weight: 600;
        transition: all 0.3s ease;
    }

    .btn-back:hover {
        background-color: #003a88;
        transform: translateY(-2px);
    }

    .no-data {
        text-align: center;
        font-size: 16px;
        color: #555;
        padding: 40px;
    }

    /* Focus outline for keyboard users (important for accessibility) */
    a:focus, button:focus, .btn-back:focus {
        outline: 3px solid #ffcc00;
        outline-offset: 3px;
    }

    /* Responsive design */
    @media (max-width: 768px) {
        .container {
            margin: 30px 15px;
            padding: 25px 20px;
        }

        th, td {
            font-size: 13px;
            padding: 10px;
        }

        h2 {
            font-size: 20px;
        }
    }
</style>

</head>
<body>

<div class="container">
    <button type="button" onclick="history.back()">Back to Dashboard </button>

    <!-- <a href="/mangamentdashboard" class="btn-back"><i class="bi bi-arrow-left"></i> Back to Dashboard</a> -->
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
