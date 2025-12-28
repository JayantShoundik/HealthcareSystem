<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard | HMS</title>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">

    <style>
        :root {
            --primary-color: #0d6efd;
            --sidebar-bg: #212529; /* Dark Professional Background */
            --sidebar-width: 260px;
            --body-bg: #f4f6f9;
            --card-border: rgba(0,0,0,0.03);
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: var(--body-bg);
            overflow-x: hidden;
        }

        /* --- Sidebar Styling --- */
        .sidebar {
            width: var(--sidebar-width);
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            background-color: var(--sidebar-bg);
            color: #fff;
            padding-top: 20px;
            transition: all 0.3s;
            z-index: 1000;
        }

        .sidebar-brand {
            padding: 15px 25px;
            font-size: 1.4rem;
            font-weight: 700;
            color: #fff;
            border-bottom: 1px solid rgba(255,255,255,0.1);
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .nav-link {
            color: rgba(255,255,255,0.75);
            padding: 12px 25px;
            font-size: 0.95rem;
            display: flex;
            align-items: center;
            gap: 12px;
            transition: 0.2s;
            border-left: 4px solid transparent;
        }

        .nav-link:hover, .nav-link.active {
            color: #fff;
            background-color: rgba(255,255,255,0.05);
            border-left-color: var(--primary-color);
        }

        .nav-link i {
            font-size: 1.1rem;
        }

        .nav-category {
            font-size: 0.75rem;
            text-transform: uppercase;
            color: rgba(255,255,255,0.4);
            padding: 20px 25px 10px;
            font-weight: 600;
            letter-spacing: 0.5px;
        }

        /* --- Main Content Area --- */
        .main-content {
            margin-left: var(--sidebar-width);
            padding: 20px 30px;
            transition: all 0.3s;
        }

        /* Top Header inside Main Content */
        .top-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 35px;
            background: #fff;
            padding: 15px 25px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.02);
        }

        /* --- KPI Cards --- */
        .stats-card {
            background: #fff;
            border: 1px solid var(--card-border);
            border-radius: 12px;
            padding: 25px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 12px rgba(0,0,0,0.02);
            transition: transform 0.2s;
            height: 100%;
        }

        .stats-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.05);
        }

        .stats-info h6 {
            color: #6c757d;
            font-size: 0.9rem;
            margin-bottom: 5px;
            font-weight: 500;
        }

        .stats-info h3 {
            font-weight: 700;
            margin: 0;
            color: #212529;
        }

        .stats-icon-box {
            width: 50px;
            height: 50px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
        }

        /* --- Action Modules --- */
        .section-title {
            font-size: 1.1rem;
            font-weight: 700;
            color: #343a40;
            margin-bottom: 20px;
            border-left: 4px solid var(--primary-color);
            padding-left: 10px;
        }

        .action-card {
            background: #fff;
            border-radius: 12px;
            border: 1px solid rgba(0,0,0,0.04);
            overflow: hidden;
            height: 100%;
            box-shadow: 0 2px 8px rgba(0,0,0,0.02);
        }

        .action-card-header {
            background: #fff;
            padding: 20px;
            border-bottom: 1px solid #f0f0f0;
        }

        .action-card-header h5 {
            margin: 0;
            font-size: 1rem;
            font-weight: 600;
            color: #212529;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .action-list a {
            padding: 12px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            color: #495057;
            text-decoration: none;
            border-bottom: 1px solid #f8f9fa;
            transition: 0.2s;
            font-size: 0.9rem;
        }

        .action-list a:last-child {
            border-bottom: none;
        }

        .action-list a:hover {
            background-color: #f8f9fa;
            color: var(--primary-color);
            padding-left: 25px; /* Slight movement effect */
        }

        .action-list i {
            font-size: 1rem;
            opacity: 0.7;
        }

        /* Mobile Responsive */
        @media (max-width: 991px) {
            .sidebar { left: -260px; }
            .main-content { margin-left: 0; }
        }
    </style>
</head>

<body>

    <nav class="sidebar">
        <div class="sidebar-brand">
            <i class="bi bi-hospital"></i> MedAdmin
        </div>
        
        <div class="nav flex-column">
            <div class="nav-category">Main</div>
            <a href="#" class="nav-link active"><i class="bi bi-grid-fill"></i> Dashboard</a>
            <a href="#" class="nav-link"><i class="bi bi-speedometer2"></i> Analytics</a>
            
            <div class="nav-category">Administration</div>
            <a href="/viewdoctors" class="nav-link"><i class="bi bi-people-fill"></i> Doctors</a>
            <a href="/admin/patients/view" class="nav-link"><i class="bi bi-person-badge"></i> Patients</a>
            <a href="/viewAppointments" class="nav-link"><i class="bi bi-calendar-check"></i> Appointments</a>
            
            <div class="nav-category">Finance</div>
            <a href="/admin/billing/reports" class="nav-link"><i class="bi bi-currency-dollar"></i> Billing</a>
            
            <div class="nav-category">System</div>
            <a href="/admin/settings" class="nav-link"><i class="bi bi-gear"></i> Settings</a>
            <a href="/loginSelection" class="nav-link text-danger"><i class="bi bi-box-arrow-left"></i> Logout</a>
        </div>
    </nav>

    <div class="main-content">
        
        <header class="top-header">
            <div>
                <h4 class="m-0 fw-bold">Admin Dashboard</h4>
                <small class="text-muted">Welcome back, Jayant Shoundik</small>
            </div>
            <div class="d-flex align-items-center gap-3">
                <button class="btn btn-outline-secondary btn-sm position-relative border-0">
                    <i class="bi bi-bell fs-5"></i>
                    <span class="position-absolute top-0 start-100 translate-middle p-1 bg-danger border border-light rounded-circle"></span>
                </button>
                <div class="dropdown">
                    <a href="#" class="d-flex align-items-center text-decoration-none text-dark fw-bold" data-bs-toggle="dropdown">
                        <div class="bg-primary text-white rounded-circle d-flex align-items-center justify-content-center me-2" style="width: 35px; height: 35px;">J</div>
                        <span>Admin</span>
                    </a>
                </div>
            </div>
        </header>

        <div class="row g-4 mb-5">
            <div class="col-lg-3 col-md-6">
                <div class="stats-card">
                    <div class="stats-info">
                        <h6>Total Patients</h6>
                        <h3>1,250</h3>
                    </div>
                    <div class="stats-icon-box bg-primary bg-opacity-10 text-primary">
                        <i class="bi bi-people"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="stats-card">
                    <div class="stats-info">
                        <h6>Total Doctors</h6>
                        <h3>30</h3>
                    </div>
                    <div class="stats-icon-box bg-success bg-opacity-10 text-success">
                        <i class="bi bi-heart-pulse"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="stats-card">
                    <div class="stats-info">
                        <h6>Today's Appts</h6>
                        <h3>${todaysAppointmentsCount}</h3>
                    </div>
                    <div class="stats-icon-box bg-warning bg-opacity-10 text-warning">
                        <i class="bi bi-calendar-event"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="stats-card">
                    <div class="stats-info">
                        <h6>Today's Revenue</h6>
                        <h3>&#8377;8,50k</h3>
                    </div>
                    <div class="stats-icon-box bg-info bg-opacity-10 text-info">
                        <i class="bi bi-wallet2"></i>
                    </div>
                </div>
            </div>
        </div>

        <h5 class="section-title">Quick Management</h5>
        <div class="row g-4">
            
            <div class="col-md-6 col-lg-4">
                <div class="action-card">
                    <div class="action-card-header">
                        <h5><i class="bi bi-person-vcard text-primary"></i> Patient Management</h5>
                    </div>
                    <div class="action-list">
                        <a href="/admin/patients/add">
                            <span>Register New Patient</span> <i class="bi bi-chevron-right"></i>
                        </a>
                        <a href="/admin/patients/search">
                            <span>Search Records</span> <i class="bi bi-chevron-right"></i>
                        </a>
                        <a href="/admin/patients/view">
                            <span>View All Patients</span> <i class="bi bi-chevron-right"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4">
                <div class="action-card">
                    <div class="action-card-header">
                        <h5><i class="bi bi-hospital text-success"></i> Doctor Management</h5>
                    </div>
                    <div class="action-list">
                        <a href="/admin/doctors/add">
                            <span>Add New Doctor</span> <i class="bi bi-chevron-right"></i>
                        </a>
                        <a href="/viewdoctors">
                            <span>View Doctor List</span> <i class="bi bi-chevron-right"></i>
                        </a>
                        <a href="/admin/doctors/schedule">
                            <span>Manage Schedules</span> <i class="bi bi-chevron-right"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4">
                <div class="action-card">
                    <div class="action-card-header">
                        <h5><i class="bi bi-calendar-plus text-warning"></i> Appointments</h5>
                    </div>
                    <div class="action-list">
                        <a href="/admin/appointments/book">
                            <span>Book Appointment</span> <i class="bi bi-chevron-right"></i>
                        </a>
                        <a href="/viewAppointments">
                            <span>View Calendar</span> <i class="bi bi-chevron-right"></i>
                        </a>
                    </div>
                </div>
            </div>

             <div class="col-md-6 col-lg-4">
                <div class="action-card">
                    <div class="action-card-header">
                        <h5><i class="bi bi-receipt text-danger"></i> Billing & Finance</h5>
                    </div>
                    <div class="action-list">
                        <a href="/admin/billing/create">
                            <span>Generate Invoice</span> <i class="bi bi-chevron-right"></i>
                        </a>
                        <a href="/admin/billing/payments">
                            <span>Transaction History</span> <i class="bi bi-chevron-right"></i>
                        </a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-6 col-lg-4">
                <div class="action-card">
                    <div class="action-card-header">
                        <h5><i class="bi bi-sliders text-secondary"></i> Admin Controls</h5>
                    </div>
                    <div class="action-list">
                        <a href="/admin/reports/patient">
                            <span>System Reports</span> <i class="bi bi-chevron-right"></i>
                        </a>
                        <a href="/admin/settings">
                            <span>Global Settings</span> <i class="bi bi-chevron-right"></i>
                        </a>
                    </div>
                </div>
            </div>

        </div>

        <footer class="mt-5 text-center text-muted small">
            &copy; 2025 HMS System. Developed by <strong>Jayant Shoundik</strong>
        </footer>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>