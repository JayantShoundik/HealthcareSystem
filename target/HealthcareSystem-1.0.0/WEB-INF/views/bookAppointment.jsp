<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Appointment</title>
    <style>
        /* ---------- GLOBAL ---------- */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #e8f3ff, #d6eaff);
            margin: 0;
            padding: 0;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* ---------- FORM CONTAINER ---------- */
        .container {
            width: 95%;
            max-width: 550px;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(12px);
            border-radius: 20px;
            padding: 45px 50px;
            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.15);
            animation: fadeIn 0.8s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(15px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            color: #004aad;
            font-weight: 700;
            margin-bottom: 30px;
            letter-spacing: 0.4px;
        }

        /* ---------- FORM FIELDS ---------- */
        label {
            display: block;
            font-weight: 600;
            color: #004aad;
            margin-top: 20px;
            margin-bottom: 6px;
        }

        input[type="text"],
        input[type="date"],
        select {
            width: 100%;
            padding: 12px 14px;
            border-radius: 10px;
            border: 1.5px solid #cdd9ed;
            background-color: #f9fbff;
            font-size: 15px;
            transition: all 0.3s ease;
            outline: none;
        }

        input:focus,
        select:focus {
            border-color: #004aad;
            box-shadow: 0 0 6px rgba(0, 74, 173, 0.25);
            background-color: #ffffff;
        }

        /* ---------- BUTTON ---------- */
        button {
            width: 100%;
            margin-top: 30px;
            background: linear-gradient(135deg, #004aad, #0077cc);
            color: #fff;
            border: none;
            padding: 14px 0;
            font-size: 17px;
            font-weight: 600;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(0, 74, 173, 0.25);
        }

        button:hover {
            background: linear-gradient(135deg, #0063cc, #0090ff);
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(0, 74, 173, 0.3);
        }

        /* ---------- SUCCESS MESSAGE ---------- */
        .success-message {
            background: linear-gradient(90deg, #d4f9e2, #baf5c7);
            color: #1b6d36;
            border-left: 5px solid #29a94d;
            padding: 14px 18px;
            border-radius: 8px;
            margin-bottom: 20px;
            text-align: center;
            font-weight: 500;
            box-shadow: 0 3px 10px rgba(0,0,0,0.08);
        }

        /* ---------- BACK BUTTON ---------- */
        .back-btn {
            display: inline-block;
            text-decoration: none;
            margin-top: 25px;
            color: #004aad;
            font-weight: 600;
            font-size: 15px;
            transition: 0.3s ease;
            text-align: center;
        }

        .back-btn:hover {
            color: #0063cc;
            text-decoration: underline;
        }

        /* ---------- FOOTER ---------- */
        footer {
            text-align: center;
            margin-top: 25px;
            font-size: 13px;
            color: #666;
        }

        /* ---------- RESPONSIVE ---------- */
        @media (max-width: 768px) {
            .container {
                margin: 20px;
                padding: 30px 25px;
            }

            h2 {
                font-size: 22px;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Book Appointment</h2>

        <!-- ✅ Success message -->
        <c:if test="${not empty message}">
            <div class="success-message">${message}</div>
        </c:if>

        <form action="/bookAppointment" method="post">
            <label for="patientName">Patient Name:</label>
            <input type="text" id="patientName" name="patientName" placeholder="Enter patient full name" required>

            <label for="doctorName">Select Doctor:</label>
            <select id="doctorName" name="doctorName" required>
                <option value="" disabled selected>Choose a doctor</option>
                <c:forEach var="doctor" items="${doctors}">
                    <option value="${doctor.name}">
                        ${doctor.name} — ${doctor.specialization}
                    </option>
                </c:forEach>
            </select>

            <label for="date">Appointment Date:</label>
            <input type="date" id="date" name="date" required>

            <button type="submit">Book Appointment</button>
        </form>

        <div style="text-align:center;">
            <a href="/patientDashboard" class="back-btn">← Back to Dashboard</a>
        </div>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
