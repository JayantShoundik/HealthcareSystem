<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Doctor Appointments</title>
</head>
<body>
<h2>Appointments for Doctor</h2>

<table border="1" cellpadding="6">
    <tr>
        <th>Appointment ID</th>
        <th>Patient Name</th>
        <th>Date</th>
        <th>Status</th>
    </tr>

    <c:forEach var="a" items="${appointments}">
        <tr>
            <td>${a.appointmentId}</td>
            <td>${a.patientName}</td>
            <td>${a.appointmentDate}</td>
            <td>${a.status}</td>
        </tr>
    </c:forEach>
</table>

<a href="/mangamentdashboard">Back to Dashboard</a>
<%@ include file="footer.jsp" %>
</body>
</html>
