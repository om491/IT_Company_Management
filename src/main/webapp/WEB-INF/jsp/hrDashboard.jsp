<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>HR Dashboard</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
	rel="stylesheet">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Inter', sans-serif;
	background: #f4f7fb;
	color: #172033;
}

/* SIDEBAR */
.sidebar {
	position: fixed;
	left: 0;
	top: 0;
	width: 255px;
	height: 100vh;
	background: #111827;
	color: white;
	padding: 25px 16px;
	z-index: 1000;
	box-shadow: 5px 0 25px rgba(0, 0, 0, 0.08);
}

.logo {
	font-size: 22px;
	font-weight: 800;
	padding: 12px 15px 28px;
}

.logo span {
	color: #6366f1;
}

.menu-title {
	font-size: 11px;
	color: #64748b;
	font-weight: 700;
	text-transform: uppercase;
	letter-spacing: 1px;
	padding: 0 15px;
	margin-bottom: 12px;
}

.sidebar a {
	display: flex;
	align-items: center;
	gap: 13px;
	padding: 12px 15px;
	margin-bottom: 6px;
	color: #cbd5e1;
	text-decoration: none;
	border-radius: 10px;
	font-size: 14px;
	font-weight: 500;
	transition: 0.25s;
}

.sidebar a i {
	width: 22px;
	font-size: 17px;
}

.sidebar a:hover {
	background: #1f2937;
	color: white;
	transform: translateX(3px);
}

.sidebar a.active {
	background: #6366f1;
	color: white;
	box-shadow: 0 7px 18px rgba(99, 102, 241, 0.25);
}

.divider {
	height: 1px;
	background: #1f2937;
	margin: 22px 10px;
}

.logout {
	color: #fca5a5 !important;
}

.logout:hover {
	background: #3f1d1d !important;
	color: #ef4444 !important;
}

/* MAIN */
.main {
	margin-left: 255px;
	min-height: 100vh;
}

/* TOPBAR */
.topbar {
	height: 76px;
	background: white;
	border-bottom: 1px solid #e5e7eb;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 35px;
	position: sticky;
	top: 0;
	z-index: 900;
}

.page-title h4 {
	font-size: 19px;
	font-weight: 800;
	margin: 0;
}

.page-title small {
	color: #94a3b8;
	font-size: 12px;
}

.user-area {
	display: flex;
	align-items: center;
	gap: 12px;
}

.user-avatar {
	width: 42px;
	height: 42px;
	border-radius: 50%;
	background: #e0e7ff;
	color: #4f46e5;
	display: flex;
	align-items: center;
	justify-content: center;
	font-weight: 800;
}

.user-name {
	font-size: 14px;
	font-weight: 700;
}

.role-badge {
	background: #e0e7ff;
	color: #4338ca;
	padding: 5px 9px;
	border-radius: 20px;
	font-size: 10px;
	font-weight: 800;
}

/* CONTENT */
.content {
	padding: 32px 35px;
}

/* WELCOME */
.welcome {
	background: linear-gradient(135deg, #312e81, #6366f1);
	border-radius: 18px;
	padding: 32px;
	color: white;
	margin-bottom: 25px;
	position: relative;
	overflow: hidden;
}

.welcome::after {
	content: "";
	position: absolute;
	width: 230px;
	height: 230px;
	border-radius: 50%;
	background: rgba(255, 255, 255, 0.08);
	right: -70px;
	top: -80px;
}

.welcome-content {
	position: relative;
	z-index: 2;
}

.welcome small {
	color: #c7d2fe;
	text-transform: uppercase;
	letter-spacing: 1px;
	font-weight: 700;
}

.welcome h2 {
	font-size: 27px;
	font-weight: 800;
	margin: 8px 0;
}

.welcome p {
	color: #e0e7ff;
	margin: 0;
	font-size: 14px;
}

/* PROFILE */
.profile-card {
	background: white;
	border-radius: 16px;
	padding: 27px;
	border: 1px solid #e5e7eb;
	margin-bottom: 25px;
}

.profile {
	display: flex;
	align-items: center;
	gap: 20px;
}

.avatar-large {
	width: 82px;
	height: 82px;
	border-radius: 50%;
	background: #e0e7ff;
	color: #4f46e5;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 31px;
	font-weight: 800;
	border: 5px solid #eef2ff;
}

.profile h3 {
	font-size: 22px;
	font-weight: 800;
	margin-bottom: 5px;
}

.profile p {
	color: #64748b;
	font-size: 13px;
	margin-bottom: 8px;
}

.active-status {
	background: #eef2ff;
	color: #4338ca;
	padding: 5px 10px;
	border-radius: 20px;
	font-size: 11px;
	font-weight: 700;
}

/* SECTION */
.section-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 15px;
}

.section-header h5 {
	font-size: 17px;
	font-weight: 800;
	margin: 0;
}

.section-header span {
	color: #94a3b8;
	font-size: 12px;
}

/* CARDS */
.info-card {
	background: white;
	border: 1px solid #e5e7eb;
	border-radius: 15px;
	padding: 23px;
	height: 100%;
	transition: 0.25s;
}

.info-card:hover {
	transform: translateY(-4px);
	box-shadow: 0 12px 28px rgba(15, 23, 42, 0.07);
}

.icon-box {
	width: 48px;
	height: 48px;
	border-radius: 12px;
	background: #eef2ff;
	color: #4f46e5;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 21px;
	margin-bottom: 17px;
}

.info-card h6 {
	color: #94a3b8;
	font-size: 11px;
	text-transform: uppercase;
	font-weight: 700;
	letter-spacing: .7px;
}

.info-card h4 {
	font-size: 17px;
	font-weight: 800;
	margin: 5px 0 0;
}

/* QUICK ACTION */
.action-card {
	background: white;
	border: 1px solid #e5e7eb;
	border-radius: 14px;
	padding: 20px;
	height: 100%;
	transition: .25s;
}

.action-card:hover {
	transform: translateY(-4px);
	border-color: #c7d2fe;
	box-shadow: 0 12px 25px rgba(15, 23, 42, .06);
}

.action-icon {
	width: 45px;
	height: 45px;
	border-radius: 11px;
	background: #eef2ff;
	color: #4f46e5;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 20px;
	margin-bottom: 14px;
}

.action-card h6 {
	font-size: 14px;
	font-weight: 800;
	margin-bottom: 5px;
}

.action-card p {
	color: #94a3b8;
	font-size: 11px;
	margin: 0;
}

@media ( max-width :768px) {
	.sidebar {
		position: relative;
		width: 100%;
		height: auto;
	}
	.main {
		margin-left: 0;
	}
	.topbar {
		position: relative;
		padding: 18px 20px;
		height: auto;
	}
	.content {
		padding: 20px;
	}
}
</style>

</head>

<body>


	<!-- ================= SIDEBAR ================= -->

	<div class="sidebar">

		<div class="logo">
			HR<span>Portal</span>
		</div>

		<div class="menu-title">HR Workspace</div>

		<a href="hrDashboard"
			class="active"> <i class="bi bi-grid-fill"></i> Dashboard
		</a> <a href="#"> <i class="bi bi-people-fill"></i> Employees
		</a> <a href="#"> <i class="bi bi-person-plus-fill"></i> Recruitment
		</a> <a href="#"> <i class="bi bi-calendar-check"></i> Attendance
		</a> <a href="#"> <i class="bi bi-calendar-event"></i> Leave
			Management
		</a> <a href="#"> <i class="bi bi-cash-stack"></i> Payroll
		</a> <a href="#"> <i class="bi bi-building"></i> Departments
		</a>

		<div class="divider"></div>

		<a href="logout" class="logout">
			<i class="bi bi-box-arrow-right"></i> Logout
		</a>

	</div>



	<div class="main">


		<!-- TOPBAR -->

		<div class="topbar">

			<div class="page-title">

				<h4>HR Dashboard</h4>

				<small> Human Resources Management </small>

			</div>

			<div class="user-area">

				<div class="user-avatar">

					${loggedInUser.name.substring(0,1).toUpperCase()}</div>

				<div>

					<div class="user-name">${loggedInUser.name}</div>

					<span class="role-badge"> ${loggedInUser.role} </span>

				</div>

			</div>

		</div>


		<!-- CONTENT -->

		<div class="content">


			<!-- WELCOME -->

			<div class="welcome">

				<div class="welcome-content">

					<small> HR Workspace </small>

					<h2>Welcome back, ${loggedInUser.name} 👋</h2>

					<p>Manage employees, attendance, leaves, recruitment and
						organizational activities from one place.</p>

				</div>

			</div>


			<!-- PROFILE -->

			<div class="profile-card">

				<div class="profile">

					<div class="avatar-large">

						${loggedInUser.name.substring(0,1).toUpperCase()}</div>

					<div>

						<h3>${loggedInUser.name}</h3>

						<p>${loggedInUser.userName}</p>

						<span class="active-status"> <i class="bi bi-shield-check"></i>
							HR Administrator
						</span>

					</div>

				</div>

			</div>


			<!-- INFORMATION -->

			<div class="section-header">

				<h5>HR Account Information</h5>

				<span> Account Details </span>

			</div>


			<div class="row g-4">


				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="icon-box">
							<i class="bi bi-person-badge"></i>
						</div>

						<h6>HR ID</h6>

						<h4>#${loggedInUser.id}</h4>

					</div>

				</div>


				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="icon-box">
							<i class="bi bi-person-circle"></i>
						</div>

						<h6>Username</h6>

						<h4>${loggedInUser.userName}</h4>

					</div>

				</div>


				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="icon-box">
							<i class="bi bi-building"></i>
						</div>

						<h6>Department</h6>

						<h4>${loggedInUser.department.name}</h4>

					</div>

				</div>


				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="icon-box">
							<i class="bi bi-shield-check"></i>
						</div>

						<h6>Role</h6>

						<h4>${loggedInUser.role}</h4>

					</div>

				</div>


				<div class="col-lg-4 col-md-6">

					<div class="info-card">

						<div class="icon-box">
							<i class="bi bi-cash-stack"></i>
						</div>

						<h6>Salary</h6>

						<h4>₹ ${loggedInUser.salary}</h4>

					</div>

				</div>


				<div class="col-lg-8 col-md-6">

					<div class="info-card">

						<div class="icon-box">
							<i class="bi bi-info-circle"></i>
						</div>

						<h6>Department Description</h6>

						<h4>${loggedInUser.department.description}</h4>

					</div>

				</div>

			</div>


			<!-- HR ACTIONS -->

			<div class="section-header mt-5">

				<h5>HR Management</h5>

				<span> Quick access </span>

			</div>


			<div class="row g-4">


				<div class="col-lg-3 col-md-6">

					<div class="action-card">

						<div class="action-icon">
							<i class="bi bi-people-fill"></i>
						</div>

						<h6>Employees</h6>

						<p>Manage employee records</p>

					</div>

				</div>


				<div class="col-lg-3 col-md-6">

					<div class="action-card">

						<div class="action-icon">
							<i class="bi bi-person-plus-fill"></i>
						</div>

						<h6>Recruitment</h6>

						<p>Manage hiring and candidates</p>

					</div>

				</div>


				<div class="col-lg-3 col-md-6">

					<div class="action-card">

						<div class="action-icon">
							<i class="bi bi-calendar-event"></i>
						</div>

						<h6>Leave Requests</h6>

						<p>Review employee leave requests</p>

					</div>

				</div>


				<div class="col-lg-3 col-md-6">

					<div class="action-card">

						<div class="action-icon">
							<i class="bi bi-cash-stack"></i>
						</div>

						<h6>Payroll</h6>

						<p>Manage salary information</p>

					</div>

				</div>


			</div>


		</div>

	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js">
		
	</script>

</body>
</html>