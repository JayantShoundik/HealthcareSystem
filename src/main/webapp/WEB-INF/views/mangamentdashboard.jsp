<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Hospital Management</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

    <style>
        body {
            background-color: #f4f7f6;
            font-family: 'Poppins', sans-serif;
            color: #333;
        }

        .navbar {
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            background-color: #ffffff;
        }

        .navbar-brand {
            font-weight: 700;
            color: #007bff !important;
            font-size: 1.5rem;
        }

        .kpi-card {
            background-color: #ffffff;
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.07);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .kpi-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.12);
        }

        .kpi-icon {
            font-size: 3rem;
            margin-bottom: 15px;
        }

        .module-card {
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.07);
            padding: 25px;
            margin-bottom: 30px;
            transition: transform 0.3s ease;
        }

        .module-card:hover {
             transform: scale(1.03);
        }

        .module-card h4 {
            font-weight: 600;
            color: #0056b3;
            margin-bottom: 15px;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
            display: inline-block;
        }

        .module-card .list-group-item {
            border: none;
            padding: 10px 0;
            font-weight: 500;
            color: #343a40;
            transition: background-color 0.2s ease, color 0.2s ease;
        }

        .module-card .list-group-item:hover {
            background-color: #f0f8ff;
            color: #007bff;
            border-radius: 5px;
            padding-left: 10px;
        }

        .header {
            margin: 30px 0;
        }

        .header h2 {
            font-weight: 700;
            color: #343a40;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><i class="bi bi-hospital-fill"></i> HMS Admin</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-danger" href="/logout">
                        <i class="bi bi-box-arrow-right"></i> Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid px-4">
    <div class="header">
        <h2>Admin Dashboard</h2>
        <p class="text-muted">
            Welcome back Jayant
        </p>
    </div>

    <div class="row g-4 mb-4">
        <div class="col-lg-3 col-md-6">
            <div class="kpi-card text-primary">
                <i class="bi bi-people-fill kpi-icon"></i>
                <h3>1,250</h3>
                <p>Total Patients</p>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="kpi-card text-success">
                <i class="bi bi-person-badge-fill kpi-icon"></i>
                <h3>75</h3>
                <p>Total Doctors</p>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="kpi-card text-info">
                <i class="bi bi-calendar-check-fill kpi-icon"></i>
                <h3>142</h3>
                <p>Today's Appointments</p>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="kpi-card text-warning">
                <i class="bi bi-cash-coin kpi-icon"></i>
                <h3>&#8377;8,50,000</h3>
                <p>Today's Revenue</p>
            </div>
        </div>
    </div>

    <div class="row">
        <!-- Patient Management -->
        <div class="col-md-6 col-lg-4">
            <div class="module-card">
                <h4><i class="bi bi-person-lines-fill"></i> Patient Management</h4>
                <div class="list-group list-group-flush">
                    <a href="/admin/patients/add" class="list-group-item"><i class="bi bi-person-plus-fill"></i> Register New Patient</a>
                    <a href="/admin/patients/search" class="list-group-item"><i class="bi bi-search"></i> Search Patients</a>
                    <a href="/admin/patients/view" class="list-group-item"><i class="bi bi-journal-medical"></i> View All Patient Records</a>
                </div>
            </div>
        </div>

        <!-- Doctor Management -->
        <div class="col-md-6 col-lg-4">
            <div class="module-card">
                <h4><i class="bi bi-heart-pulse-fill"></i> Doctor Management</h4>
                <div class="list-group list-group-flush">
                    <a href="/admin/doctors/add" class="list-group-item"><i class="bi bi-person-plus"></i> Add New Doctor</a>
                    <a href="/viewdoctors" class="list-group-item">
                        <i class="bi bi-list-columns-reverse"></i> View Doctors List
                    </a>
                    <a href="/admin/doctors/schedule" class="list-group-item"><i class="bi bi-calendar-week"></i> Manage Schedules</a>
                </div>
            </div>
        </div>

        <!-- Appointments -->
        <div class="col-md-6 col-lg-4">
            <div class="module-card">
                <h4><i class="bi bi-calendar-plus-fill"></i> Appointment Mgmt</h4>
                <div class="list-group list-group-flush">
                    <a href="/admin/appointments/book" class="list-group-item"><i class="bi bi-journal-plus"></i> Book New Appointment</a>
                    <a href="/admin/appointments/today" class="list-group-item"><i class="bi bi-calendar-day-fill"></i> View Today's Appointments</a>
                    <a href="/admin/appointments/all" class="list-group-item"><i class="bi bi-calendar3"></i> View All Appointments</a>
                </div>
            </div>
        </div>

        <!-- Billing -->
        <div class="col-md-6 col-lg-4">
            <div class="module-card">
                <h4><i class="bi bi-receipt-cutoff"></i> Billing & Invoicing</h4>
                <div class="list-group list-group-flush">
                    <a href="/admin/billing/create" class="list-group-item"><i class="bi bi-file-earmark-plus"></i> Generate New Invoice</a>
                    <a href="/admin/billing/payments" class="list-group-item"><i class="bi bi-wallet-fill"></i> View Payments History</a>
                    <a href="/admin/billing/reports" class="list-group-item"><i class="bi bi-graph-up-arrow"></i> Financial Reports</a>
                </div>
            </div>
        </div>

        <!-- Reports & Settings -->
        <div class="col-md-6 col-lg-4">
            <div class="module-card">
                <h4><i class="bi bi-file-earmark-bar-graph-fill"></i> Reports & Settings</h4>
                <div class="list-group list-group-flush">
                    <a href="/admin/reports/patient" class="list-group-item"><i class="bi bi-graph-up"></i> Patient Statistics Report</a>
                    <a href="/admin/reports/revenue" class="list-group-item"><i class="bi bi-pie-chart-fill"></i> Revenue Report</a>
                    <a href="/admin/settings" class="list-group-item"><i class="bi bi-gear-fill"></i> System Settings</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<%@ include file="footer.jsp" %>
</body>
</html>
