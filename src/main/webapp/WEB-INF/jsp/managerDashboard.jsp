<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Manager Dashboard</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

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

/* ================= SIDEBAR ================= */
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
	box-shadow: 5px 0 25px rgba(0, 0, 0, .08);
	overflow-y: auto;
}

.logo {
	font-size: 22px;
	font-weight: 800;
	padding: 12px 15px 28px;
}

.logo span {
	color: #f59e0b;
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
	transition: .25s;
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
	background: #f59e0b;
	color: white;
	box-shadow: 0 7px 18px rgba(245, 158, 11, .25);
}

.sidebar a.project-link {
	background: rgba(245, 158, 11, .08);
	color: #fbbf24;
}

.sidebar a.project-link:hover {
	background: #f59e0b;
	color: white;
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

/* ================= MAIN ================= */
.main {
	margin-left: 255px;
	min-height: 100vh;
}

/* ================= TOPBAR ================= */
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
	background: #fef3c7;
	color: #d97706;
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
	background: #fef3c7;
	color: #b45309;
	padding: 5px 9px;
	border-radius: 20px;
	font-size: 10px;
	font-weight: 800;
}

/* ================= CONTENT ================= */
.content {
	padding: 32px 35px;
}

/* ================= WELCOME ================= */
.welcome {
	background: linear-gradient(135deg, #78350f, #f59e0b);
	border-radius: 20px;
	padding: 34px;
	color: white;
	margin-bottom: 25px;
	position: relative;
	overflow: hidden;
	box-shadow: 0 15px 35px rgba(146, 64, 14, .15);
}

.welcome::before {
	content: "";
	position: absolute;
	width: 180px;
	height: 180px;
	border-radius: 50%;
	background: rgba(255, 255, 255, .08);
	right: 110px;
	bottom: -100px;
}

.welcome::after {
	content: "";
	position: absolute;
	width: 230px;
	height: 230px;
	border-radius: 50%;
	background: rgba(255, 255, 255, .10);
	right: -70px;
	top: -80px;
}

.welcome-content {
	position: relative;
	z-index: 2;
}

.welcome small {
	color: #fef3c7;
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
	color: #fef3c7;
	margin: 0;
	font-size: 14px;
	max-width: 650px;
}

/* ================= PROFILE ================= */
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
	background: #fef3c7;
	color: #d97706;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 31px;
	font-weight: 800;
	border: 5px solid #fffbeb;
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
	background: #fffbeb;
	color: #b45309;
	padding: 5px 10px;
	border-radius: 20px;
	font-size: 11px;
	font-weight: 700;
}

/* ================= SECTION ================= */
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

/* ================= INFO CARDS ================= */
.info-card {
	background: white;
	border: 1px solid #e5e7eb;
	border-radius: 15px;
	padding: 23px;
	height: 100%;
	transition: .25s;
}

.info-card:hover {
	transform: translateY(-4px);
	box-shadow: 0 12px 28px rgba(15, 23, 42, .07);
}

.icon-box {
	width: 48px;
	height: 48px;
	border-radius: 12px;
	background: #fffbeb;
	color: #d97706;
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

/* ================= PROJECT HERO ================= */
.project-panel {
	position: relative;
	overflow: hidden;
	background: linear-gradient(135deg, #172033, #273449);
	border-radius: 20px;
	padding: 30px;
	color: white;
	margin-top: 30px;
	margin-bottom: 28px;
	box-shadow: 0 15px 35px rgba(15, 23, 42, .12);
}

.project-panel::before {
	content: "";
	position: absolute;
	width: 250px;
	height: 250px;
	border-radius: 50%;
	background: rgba(245, 158, 11, .10);
	right: -70px;
	top: -100px;
}

.project-panel::after {
	content: "";
	position: absolute;
	width: 150px;
	height: 150px;
	border-radius: 50%;
	background: rgba(255, 255, 255, .04);
	right: 160px;
	bottom: -80px;
}

.project-content {
	position: relative;
	z-index: 2;
}

.project-label {
	display: inline-flex;
	align-items: center;
	gap: 8px;
	background: rgba(245, 158, 11, .14);
	color: #fbbf24;
	padding: 7px 12px;
	border-radius: 30px;
	font-size: 11px;
	font-weight: 800;
	text-transform: uppercase;
	letter-spacing: .7px;
	margin-bottom: 13px;
}

.project-panel h3 {
	font-size: 25px;
	font-weight: 800;
	margin-bottom: 8px;
}

.project-panel p {
	color: #cbd5e1;
	font-size: 13px;
	max-width: 650px;
	margin-bottom: 22px;
}

.project-actions {
	display: flex;
	gap: 10px;
	flex-wrap: wrap;
}

.project-btn {
	display: inline-flex;
	align-items: center;
	gap: 8px;
	padding: 10px 16px;
	border-radius: 10px;
	text-decoration: none;
	font-size: 12px;
	font-weight: 700;
	transition: .25s;
}

.project-btn.primary {
	background: #f59e0b;
	color: white;
}

.project-btn.primary:hover {
	background: #d97706;
	transform: translateY(-2px);
}

.project-btn.secondary {
	background: rgba(255, 255, 255, .08);
	color: white;
	border: 1px solid rgba(255, 255, 255, .12);
}

.project-btn.secondary:hover {
	background: rgba(255, 255, 255, .15);
	transform: translateY(-2px);
}

/* ================= PROJECT CARDS ================= */
.project-card {
	background: white;
	border: 1px solid #e5e7eb;
	border-radius: 16px;
	padding: 22px;
	height: 100%;
	transition: .25s;
}

.project-card:hover {
	transform: translateY(-5px);
	box-shadow: 0 14px 30px rgba(15, 23, 42, .08);
	border-color: #fde68a;
}

.project-card-icon {
	width: 48px;
	height: 48px;
	border-radius: 12px;
	background: #fffbeb;
	color: #d97706;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 21px;
	margin-bottom: 16px;
}

.project-card h6 {
	font-size: 15px;
	font-weight: 800;
	margin-bottom: 7px;
}

.project-card p {
	color: #94a3b8;
	font-size: 11px;
	line-height: 1.6;
	margin-bottom: 15px;
}

.project-card a {
	display: inline-flex;
	align-items: center;
	gap: 6px;
	color: #d97706;
	text-decoration: none;
	font-size: 11px;
	font-weight: 800;
}

.project-card a:hover {
	color: #92400e;
}

/* ================= ACTIONS ================= */
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
	border-color: #fde68a;
	box-shadow: 0 12px 25px rgba(15, 23, 42, .06);
}

.action-icon {
	width: 45px;
	height: 45px;
	border-radius: 11px;
	background: #fffbeb;
	color: #d97706;
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

.action-card a {
	display: inline-flex;
	align-items: center;
	gap: 6px;
	margin-top: 12px;
	color: #d97706;
	text-decoration: none;
	font-size: 11px;
	font-weight: 800;
}

.action-card a:hover {
	color: #92400e;
}

/* ================= RESPONSIVE ================= */
@media ( max-width : 992px) {
	.sidebar {
		width: 220px;
	}
	.main {
		margin-left: 220px;
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
		padding: 18px 14px;
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
	.welcome {
		padding: 25px;
	}
	.welcome h2 {
		font-size: 22px;
	}
	.project-panel {
		padding: 25px;
	}
	.project-panel h3 {
		font-size: 21px;
	}
	.profile {
		align-items: flex-start;
	}
}

@media ( max-width : 576px) {
	.topbar {
		flex-direction: column;
		align-items: flex-start;
		gap: 15px;
	}
	.user-area {
		width: 100%;
	}
	.project-actions {
		flex-direction: column;
	}
	.project-btn {
		justify-content: center;
	}
	.profile {
		flex-direction: column;
	}
}
</style>

</head>

<body>

	<!-- ================= SIDEBAR ================= -->

	<div class="sidebar">

		<div class="logo">
			Manager<span>Portal</span>
		</div>

		<div class="menu-title">Management</div>

		<a href="/EmployeeMVC/managerDashboard" class="active"> <i
			class="bi bi-grid-fill"></i> Dashboard
		</a> <a href="/EmployeeMVC/listProject" class="project-link"> <i
			class="bi bi-kanban-fill"></i> Projects
		</a> <a href="/EmployeeMVC/manageTeam"> <i class="bi bi-people-fill"></i>
			My Team
		</a> <a href="#"> <i class="bi bi-calendar-check"></i> Team Attendance
		</a> <a href="#"> <i class="bi bi-calendar-event"></i> Leave Requests
		</a> <a href="#"> <i class="bi bi-list-check"></i> Team Tasks
		</a> <a href="#"> <i class="bi bi-graph-up-arrow"></i> Performance
		</a> <a href="#"> <i class="bi bi-megaphone"></i> Notices
		</a>

		<div class="divider"></div>

		<a href="/EmployeeMVC/logout" class="logout"> <i
			class="bi bi-box-arrow-right"></i> Logout
		</a>

	</div>


	<!-- ================= MAIN ================= -->

	<div class="main">

		<!-- ================= TOPBAR ================= -->

		<div class="topbar">

			<div class="page-title">

				<h4>Manager Dashboard</h4>

				<small> Team, Projects & Performance Management </small>

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


		<!-- ================= CONTENT ================= -->

		<div class="content">


			<!-- ================= WELCOME ================= -->

			<div class="welcome">

				<div class="welcome-content">

					<small> Management Workspace </small>

					<h2>Welcome back, ${loggedInUser.name} 👋</h2>

					<p>Manage your team, coordinate projects, assign
						responsibilities, monitor progress and keep your team's
						performance on track.</p>

				</div>

			</div>


			<!-- ================= PROFILE ================= -->

			<div class="profile-card">

				<div class="profile">

					<div class="avatar-large">
						${loggedInUser.name.substring(0,1).toUpperCase()}</div>

					<div>

						<h3>${loggedInUser.name}</h3>

						<p>${loggedInUser.userName}</p>

						<span class="active-status"> <i class="bi bi-person-check"></i>
							Active Manager
						</span>

					</div>

				</div>

			</div>


			<!-- ================= INFORMATION ================= -->

			<div class="section-header">

				<h5>Manager Information</h5>

				<span> Account Details </span>

			</div>


			<div class="row g-4">


				<div class="col-lg-3 col-md-6">

					<div class="info-card">

						<div class="icon-box">
							<i class="bi bi-person-badge"></i>
						</div>

						<h6>Manager ID</h6>

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


			<!-- ================= PROJECT MANAGEMENT ================= -->

			<div class="project-panel">

				<div class="project-content">

					<div class="project-label">
						<i class="bi bi-kanban-fill"></i> Project Management
					</div>

					<h3>Manage Your Projects</h3>

					<p>Create projects, organize team responsibilities, assign
						employees and monitor project progress from one centralized
						workspace.</p>

					<div class="project-actions">

						<a href="/EmployeeMVC/addProject" class="project-btn primary">

							<i class="bi bi-plus-circle-fill"></i> Create New Project

						</a> <a href="/EmployeeMVC/listProject" class="project-btn secondary">

							<i class="bi bi-folder2-open"></i> View All Projects

						</a> <a href="/EmployeeMVC/manageTeam" class="project-btn secondary">

							<i class="bi bi-people-fill"></i> Manage Teams

						</a>

					</div>

				</div>

			</div>


			<!-- ================= PROJECT FEATURES ================= -->

			<div class="section-header">

				<h5>Project Workspace</h5>

				<span> Project Operations </span>

			</div>


			<div class="row g-4">


				<!-- CREATE PROJECT -->

				<div class="col-lg-4 col-md-6">

					<div class="project-card">

						<div class="project-card-icon">
							<i class="bi bi-folder-plus"></i>
						</div>

						<h6>Create Project</h6>

						<p>Start a new company project with project name, description,
							timeline, status and manager details.</p>

						<a href="/EmployeeMVC/addProject"> Create Project <i
							class="bi bi-arrow-right"></i>

						</a>

					</div>

				</div>


				<!-- PROJECT PORTFOLIO -->

				<div class="col-lg-4 col-md-6">

					<div class="project-card">

						<div class="project-card-icon">
							<i class="bi bi-kanban"></i>
						</div>

						<h6>Project Portfolio</h6>

						<p>View all projects in one place and keep track of projects
							currently handled by the organization.</p>

						<a href="/EmployeeMVC/listProject"> View Projects <i
							class="bi bi-arrow-right"></i>

						</a>

					</div>

				</div>


				<!-- TEAM ASSIGNMENT -->

				<div class="col-lg-4 col-md-6">

					<div class="project-card">

						<div class="project-card-icon">
							<i class="bi bi-people"></i>
						</div>

						<h6>Team Assignment</h6>

						<p>Assign employees to projects and build organized project
							teams for upcoming task management.</p>

						<a href="/EmployeeMVC/manageTeam"> Manage Teams <i
							class="bi bi-arrow-right"></i>

						</a>

					</div>

				</div>

			</div>


			<!-- ================= MANAGEMENT ACTIONS ================= -->

			<div class="section-header mt-5">

				<h5>Management Actions</h5>

				<span> Team Operations </span>

			</div>


			<div class="row g-4">


				<!-- MY TEAM -->

				<div class="col-lg-3 col-md-6">

					<div class="action-card">

						<div class="action-icon">
							<i class="bi bi-people-fill"></i>
						</div>

						<h6>My Team</h6>

						<p>View and manage team members</p>

						<a href="/EmployeeMVC/manageTeam"> <i class="bi bi-people"></i>
							Manage Teams

						</a>

					</div>

				</div>

				<!-- ================= MY TEAMS ================= -->

				<div class="section-header mt-5">
					<h5>My Teams</h5>
					<span>Teams Created By You</span>
				</div>

				<div class="row g-4">

					<c:choose>

						<c:when test="${not empty teams}">

							<c:forEach var="team" items="${teams}">

								<div class="col-lg-4 col-md-6">

									<div class="project-card">

										<div class="project-card-icon">
											<i class="bi bi-people-fill"></i>
										</div>

										<h6>${team.teamName}</h6>

										<p>Team ID: #${team.id}</p>

										<p>Created By Manager ID: #${team.createdBy}</p>

										<a href="manageTeam"> Manage Team <i
											class="bi bi-arrow-right"></i>
										</a>

									</div>

								</div>

							</c:forEach>

						</c:when>

						<c:otherwise>

							<div class="col-12">

								<div class="info-card text-center">

									<div class="icon-box mx-auto">
										<i class="bi bi-people"></i>
									</div>

									<h4>No Teams Created</h4>

									<p class="text-muted mb-0">You have not created any team
										yet.</p>

								</div>

							</div>

						</c:otherwise>

					</c:choose>

				</div>


				<!-- ATTENDANCE -->

				<div class="col-lg-3 col-md-6">

					<div class="action-card">

						<div class="action-icon">
							<i class="bi bi-calendar-check"></i>
						</div>

						<h6>Attendance</h6>

						<p>Monitor team attendance</p>

					</div>

				</div>


				<!-- LEAVE REQUESTS -->

				<div class="col-lg-3 col-md-6">

					<div class="action-card">

						<div class="action-icon">
							<i class="bi bi-calendar-event"></i>
						</div>

						<h6>Leave Requests</h6>

						<p>Review pending leave requests</p>

					</div>

				</div>


				<!-- PERFORMANCE -->

				<div class="col-lg-3 col-md-6">

					<div class="action-card">

						<div class="action-icon">
							<i class="bi bi-graph-up-arrow"></i>
						</div>

						<h6>Performance</h6>

						<p>Track team performance</p>

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