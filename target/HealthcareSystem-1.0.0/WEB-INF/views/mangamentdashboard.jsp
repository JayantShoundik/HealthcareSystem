<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Hospital Management</title>

    <!-- Bootstrap + Icons + Fonts -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #e3f2fd, #f9fbfc);
            font-family: 'Poppins', sans-serif;
            color: #333;
            min-height: 100vh;
        }

        .navbar {
            box-shadow: 0 3px 15px rgba(0,0,0,0.08);
            background: linear-gradient(90deg, #0077b6, #00b4d8);
        }

        .navbar-brand {
            font-weight: 700;
            color: #fff !important;
            font-size: 1.5rem;
            letter-spacing: 0.5px;
        }

        .nav-link {
            color: #f1f1f1 !important;
            transition: 0.3s;
            font-weight: 500;
        }

        .nav-link:hover {
            color: #caf0f8 !important;
        }

        .kpi-card {
            background: #ffffff;
            border-radius: 20px;
            box-shadow: 0 6px 25px rgba(0,0,0,0.07);
            padding: 25px;
            text-align: center;
            transition: 0.3s ease;
        }

        .kpi-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 10px 35px rgba(0,119,182,0.2);
        }

        .kpi-icon {
            font-size: 3.2rem;
            margin-bottom: 15px;
        }

        .kpi-card h3 {
            font-weight: 700;
            color: #023e8a;
            margin-bottom: 5px;
        }

        .module-card {
            background: #ffffff;
            border-radius: 18px;
            box-shadow: 0 4px 18px rgba(0,0,0,0.08);
            padding: 25px;
            margin-bottom: 35px;
            transition: 0.3s ease;
        }

        .module-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0,119,182,0.15);
        }

        .module-card h4 {
            font-weight: 600;
            color: #0077b6;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            gap: 10px;
            border-left: 4px solid #00b4d8;
            padding-left: 10px;
        }

        .module-card .list-group-item {
            border: none;
            padding: 10px 0;
            font-weight: 500;
            color: #343a40;
            background: transparent;
            transition: 0.2s;
        }

        .module-card .list-group-item:hover {
            background: #f0faff;
            color: #0077b6;
            border-radius: 6px;
            padding-left: 12px;
        }

        .header {
            margin: 40px 0 30px 0;
        }

        .header h2 {
            font-weight: 700;
            color: #03045e;
        }

        .text-muted {
            font-size: 15px;
        }

        footer {
            background: linear-gradient(90deg, #023e8a, #0077b6);
            color: #caf0f8;
            text-align: center;
            padding: 15px 0;
            font-size: 14px;
            letter-spacing: 0.4px;
            margin-top: 30px;
        }

        footer strong {
            color: #00b4d8;
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><i class="bi bi-hospital-fill"></i> HMS Admin</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link active" href="#">Dashboard</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Profile</a></li>
                <li class="nav-item">
                    <a class="nav-link text-warning" href="/loginSelection"><i class="bi bi-box-arrow-right"></i> Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Dashboard Header -->
<div class="container-fluid px-4">
    <div class="header">
        <h2>Admin Dashboard</h2>
        <p class="text-muted">Welcome back, <strong>Jayant</strong></p>
    </div>

    <!-- KPI Cards -->
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
                <h3>30</h3>
                <p>Total Doctors</p>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="kpi-card text-info">
                <i class="bi bi-calendar-check-fill kpi-icon"></i>
                <h3>${todaysAppointmentsCount}</h3>
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

    <!-- Management Modules -->
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
                    <a href="/viewdoctors" class="list-group-item"><i class="bi bi-list-columns-reverse"></i> View Doctors List</a>
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
                    <a href="/viewAppointments" class="list-group-item"><i class="bi bi-list-columns-reverse"></i> View Appointments</a>
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

<footer>
    <span>Developed by <strong>Jayant Shoundik</strong></span>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

</html>
