<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employee Dashboard</title>

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
	min-height: 100vh;
}

/* ================= SIDEBAR ================= */
.sidebar {
	position: fixed;
	left: 0;
	top: 0;
	width: 255px;
	height: 100vh;
	background: #111827;
	color: #ffffff;
	padding: 25px 16px;
	z-index: 1000;
	box-shadow: 5px 0 25px rgba(0, 0, 0, 0.08);
}

.logo {
	font-size: 22px;
	font-weight: 800;
	padding: 12px 15px 28px;
	letter-spacing: -0.5px;
}

.logo span {
	color: #22c55e;
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
	transition: all 0.25s ease;
}

.sidebar a i {
	font-size: 17px;
	width: 22px;
}

.sidebar a:hover {
	background: #1f2937;
	color: #ffffff;
	transform: translateX(3px);
}

.sidebar a.active {
	background: #22c55e;
	color: #ffffff;
	box-shadow: 0 7px 18px rgba(34, 197, 94, 0.25);
}

.sidebar-divider {
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

/* ================= MAIN ================= */
.main {
	margin-left: 255px;
	min-height: 100vh;
}

/* ================= TOPBAR ================= */
.topbar {
	height: 76px;
	background: #ffffff;
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
	margin-bottom: 2px;
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

.user-mini-avatar {
	width: 42px;
	height: 42px;
	border-radius: 50%;
	background: #dcfce7;
	color: #16a34a;
	display: flex;
	align-items: center;
	justify-content: center;
	font-weight: 800;
	font-size: 16px;
}

.user-name {
	font-size: 14px;
	font-weight: 700;
}

.role-badge {
	background: #dcfce7;
	color: #15803d;
	font-size: 10px;
	font-weight: 800;
	padding: 5px 9px;
	border-radius: 20px;
	text-transform: uppercase;
	letter-spacing: 0.5px;
}

/* ================= CONTENT ================= */
.content {
	padding: 32px 35px;
}

/* ================= WELCOME BANNER ================= */
.welcome-banner {
	background: linear-gradient(135deg, #172033, #1f2937);
	border-radius: 18px;
	padding: 30px;
	color: #ffffff;
	position: relative;
	overflow: hidden;
	margin-bottom: 25px;
}

.welcome-banner::after {
	content: "";
	position: absolute;
	width: 220px;
	height: 220px;
	border-radius: 50%;
	background: rgba(34, 197, 94, 0.12);
	right: -70px;
	top: -80px;
}

.welcome-banner::before {
	content: "";
	position: absolute;
	width: 120px;
	height: 120px;
	border-radius: 50%;
	border: 20px solid rgba(34, 197, 94, 0.08);
	right: 100px;
	bottom: -50px;
}

.welcome-content {
	position: relative;
	z-index: 2;
}

.welcome-label {
	color: #86efac;
	font-size: 12px;
	font-weight: 700;
	text-transform: uppercase;
	letter-spacing: 1px;
	margin-bottom: 7px;
}

.welcome-banner h2 {
	font-size: 27px;
	font-weight: 800;
	margin-bottom: 8px;
}

.welcome-banner p {
	color: #cbd5e1;
	margin: 0;
	font-size: 14px;
}

/* ================= PROFILE CARD ================= */
.profile-card {
	background: #ffffff;
	border-radius: 16px;
	padding: 28px;
	border: 1px solid #e5e7eb;
	margin-bottom: 25px;
}

.profile-header {
	display: flex;
	align-items: center;
	gap: 20px;
}

.avatar {
	width: 82px;
	height: 82px;
	min-width: 82px;
	border-radius: 50%;
	background: #dcfce7;
	color: #16a34a;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 31px;
	font-weight: 800;
	border: 5px solid #f0fdf4;
}

.profile-info h3 {
	font-size: 22px;
	font-weight: 800;
	margin-bottom: 6px;
}

.profile-info p {
	color: #64748b;
	margin-bottom: 8px;
	font-size: 13px;
}

.employee-status {
	display: inline-flex;
	align-items: center;
	gap: 6px;
	color: #15803d;
	background: #f0fdf4;
	padding: 5px 10px;
	border-radius: 20px;
	font-size: 11px;
	font-weight: 700;
}

.status-dot {
	width: 7px;
	height: 7px;
	background: #22c55e;
	border-radius: 50%;
}

/* ================= INFORMATION CARDS ================= */
.info-card {
	background: #ffffff;
	border-radius: 16px;
	padding: 24px;
	border: 1px solid #e5e7eb;
	height: 100%;
	transition: all 0.25s ease;
}

.info-card:hover {
	transform: translateY(-4px);
	box-shadow: 0 12px 30px rgba(15, 23, 42, 0.07);
}

.icon-box {
	width: 48px;
	height: 48px;
	border-radius: 12px;
	background: #f0fdf4;
	color: #16a34a;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 21px;
	margin-bottom: 18px;
}

.info-card h6 {
	color: #94a3b8;
	font-size: 11px;
	font-weight: 700;
	text-transform: uppercase;
	letter-spacing: 0.7px;
	margin-bottom: 7px;
}

.info-card h4 {
	color: #172033;
	font-size: 17px;
	font-weight: 800;
	margin: 0;
	word-break: break-word;
}

/* ================= SECTION HEADER ================= */
.section-header {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-bottom: 15px;
}

.section-header h5 {
	font-size: 17px;
	font-weight: 800;
	margin: 0;
}

.section-header span {
	font-size: 12px;
	color: #94a3b8;
}

/* ================= QUICK ACTIONS ================= */
.action-card {
	background: #ffffff;
	border: 1px solid #e5e7eb;
	border-radius: 14px;
	padding: 20px;
	height: 100%;
	transition: all 0.25s ease;
	cursor: pointer;
}

.action-card:hover {
	transform: translateY(-4px);
	border-color: #bbf7d0;
	box-shadow: 0 12px 25px rgba(15, 23, 42, 0.06);
}

.action-icon {
	width: 45px;
	height: 45px;
	border-radius: 11px;
	background: #f0fdf4;
	color: #16a34a;
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

/* ================= RESPONSIVE ================= */
@media ( max-width : 991px) {
	.sidebar {
		width: 220px;
	}
	.main {
		margin-left: 220px;
	}
	.topbar {
		padding: 0 25px;
	}
	.content {
		padding: 25px;
	}
}

@media ( max-width : 768px) {
	.sidebar {
		position: relative;
		width: 100%;
		height: auto;
		padding: 15px;
	}
	.logo {
		padding: 10px 12px 15px;
		margin-bottom: 5px;
	}
	.sidebar a {
		display: inline-flex;
		margin-right: 5px;
		padding: 9px 11px;
	}
	.menu-title, .sidebar-divider {
		display: none;
	}
	.main {
		margin-left: 0;
	}
	.topbar {
		position: relative;
		height: auto;
		padding: 18px 20px;
	}
	.content {
		padding: 20px;
	}
	.welcome-banner {
		padding: 24px;
	}
	.welcome-banner h2 {
		font-size: 22px;
	}
}

@media ( max-width : 576px) {
	.sidebar {
		overflow-x: auto;
		white-space: nowrap;
	}
	.sidebar a {
		display: inline-flex;
	}
	.topbar {
		align-items: flex-start;
		gap: 15px;
		flex-direction: column;
	}
	.user-area {
		width: 100%;
	}
	.profile-header {
		align-items: flex-start;
	}
	.avatar {
		width: 65px;
		height: 65px;
		min-width: 65px;
		font-size: 24px;
	}
	.profile-info h3 {
		font-size: 18px;
	}
	.content {
		padding: 15px;
	}
}
</style>

</head>

<body>

	<!-- ================= SIDEBAR ================= -->

	<div class="sidebar">

		<div class="logo">
			Employee<span>Portal</span>
		</div>

		<div class="menu-title">Workspace</div>

		<a href="employeeDashboard" class="active"> <i
			class="bi bi-grid-fill"></i> Dashboard

		</a> <a href="#"> <i class="bi bi-person-fill"></i> My Profile
		</a> <a href="#"> <i class="bi bi-calendar-check"></i> Attendance
		</a> <a href="#"> <i class="bi bi-calendar-event"></i> Leave
		</a> <a href="#"> <i class="bi bi-list-check"></i> My Tasks
		</a> <a href="#"> <i class="bi bi-megaphone"></i> Notices
		</a>

		<div class="sidebar-divider"></div>

		<a href="logout" class="logout"> <i class="bi bi-box-arrow-right"></i>
			Logout

		</a>

	</div>


	<!-- ================= MAIN ================= -->

	<div class="main">
		<div class="topbar">

			<div class="page-title">

				<h4>Employee Dashboard</h4>

				<small> Welcome to your workspace </small>

			</div>


			<div class="user-area">

				<div class="user-mini-avatar">

					${loggedInUser.name.substring(0,1).toUpperCase()}</div>

				<div>

					<div class="user-name">${loggedInUser.name}</div>

					<span class="role-badge"> ${loggedInUser.role} </span>

				</div>

			</div>

		</div>


		<!-- ================= CONTENT ================= -->

		<div class="content">


			<!-- ================= WELCOME ================= -->

			<div class="welcome-banner">

				<div class="welcome-content">

					<div class="welcome-label">Employee Workspace</div>

					<h2>Welcome back, ${loggedInUser.name} 👋</h2>

					<p>Manage your profile, attendance, leaves and day-to-day
						activities from your workspace.</p>

				</div>

			</div>


			<!-- ================= PROFILE ================= -->

			<div class="profile-card">

				<div class="profile-header">

					<div class="avatar">

						${loggedInUser.name.substring(0,1).toUpperCase()}</div>

					<div class="profile-info">

						<h3>${loggedInUser.name}</h3>

						<p>${loggedInUser.userName}</p>

						<span class="employee-status"> <span class="status-dot"></span>

							Active Employee

						</span>

					</div>

				</div>

			</div>


			<!-- ================= EMPLOYEE INFORMATION ================= -->

			<div class="section-header">

				<h5>Employee Information</h5>

				<span> Account Details </span>

			</div>


			<div class="row g-4">


				<!-- EMPLOYEE ID -->

				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="icon-box">

							<i class="bi bi-person-badge"></i>

						</div>

						<h6>Employee ID</h6>

						<h4>#${loggedInUser.id}</h4>

					</div>

				</div>


				<!-- USERNAME -->

				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="icon-box">

							<i class="bi bi-person-circle"></i>

						</div>

						<h6>Username</h6>

						<h4>${loggedInUser.userName}</h4>

					</div>

				</div>


				<!-- DEPARTMENT -->

				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="icon-box">

							<i class="bi bi-building"></i>

						</div>

						<h6>Department</h6>

						<h4>${loggedInUser.department.name}</h4>

					</div>

				</div>


				<!-- ROLE -->

				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="icon-box">

							<i class="bi bi-shield-check"></i>

						</div>

						<h6>Role</h6>

						<h4>${loggedInUser.role}</h4>

					</div>

				</div>


				<!-- SALARY -->

				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="icon-box">

							<i class="bi bi-cash-stack"></i>

						</div>

						<h6>Salary</h6>

						<h4>₹ ${loggedInUser.salary}</h4>

					</div>

				</div>


				<!-- DEPARTMENT ID -->

				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="icon-box">

							<i class="bi bi-diagram-3"></i>

						</div>

						<h6>Department ID</h6>

						<h4>#${loggedInUser.department.id}</h4>

					</div>

				</div>


				<!-- DEPARTMENT DESCRIPTION -->

				<div class="col-lg-6 col-md-12">

					<div class="info-card">

						<div class="icon-box">

							<i class="bi bi-info-circle"></i>

						</div>

						<h6>Department Description</h6>

						<h4>${loggedInUser.department.description}</h4>

					</div>

				</div>

			</div>


			<!-- ================= QUICK ACTIONS ================= -->

			<div class="section-header mt-5">

				<h5>Quick Actions</h5>

				<span> Frequently used </span>

			</div>


			<div class="row g-4">


				<div class="col-lg-3 col-md-6">

					<div class="action-card">

						<div class="action-icon">

							<i class="bi bi-calendar-check"></i>

						</div>

						<h6>Attendance</h6>

						<p>View your attendance records</p>

					</div>

				</div>


				<div class="col-lg-3 col-md-6">

					<div class="action-card">

						<div class="action-icon">

							<i class="bi bi-calendar-event"></i>

						</div>

						<h6>Apply Leave</h6>

						<p>Submit and manage leave requests</p>

					</div>

				</div>


				<div class="col-lg-3 col-md-6">

					<div class="action-card">

						<div class="action-icon">

							<i class="bi bi-list-check"></i>

						</div>

						<h6>My Tasks</h6>

						<p>Check your assigned tasks</p>

					</div>

				</div>


				<div class="col-lg-3 col-md-6">

					<div class="action-card">

						<div class="action-icon">

							<i class="bi bi-person"></i>

						</div>

						<h6>My Profile</h6>

						<p>View and manage your profile</p>

					</div>

				</div>

			</div>


		</div>

	</div>


	<!-- Bootstrap JS -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js">
		
	</script>

</body>

</html>