<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>ITManage - Admin Dashboard</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	background: #f5f7fb;
	color: #1f2937;
	font-family: Arial, sans-serif;
}

/* SIDEBAR */
.sidebar {
	position: fixed;
	left: 0;
	top: 0;
	bottom: 0;
	width: 250px;
	background: #111827;
	color: white;
	padding: 25px 18px;
	overflow-y: auto;
}

.logo {
	font-size: 25px;
	font-weight: 700;
	margin-bottom: 35px;
	padding-left: 10px;
}

.menu-title {
	color: #9ca3af;
	font-size: 12px;
	text-transform: uppercase;
	margin: 20px 10px 10px;
}

.sidebar a {
	display: flex;
	align-items: center;
	gap: 12px;
	color: #d1d5db;
	text-decoration: none;
	padding: 12px 14px;
	border-radius: 10px;
	margin-bottom: 5px;
	transition: .2s;
}

.sidebar a:hover, .sidebar a.active {
	background: #2563eb;
	color: white;
}

.logout {
	position: absolute;
	bottom: 20px;
	left: 18px;
	right: 18px;
}

/* MAIN */
.main {
	margin-left: 250px;
	padding: 30px;
}

/* TOPBAR */
.topbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 30px;
}

.page-title h1 {
	margin: 0;
	font-size: 30px;
	font-weight: 700;
}

.page-title p {
	margin: 6px 0 0;
	color: #6b7280;
}

.admin-profile {
	display: flex;
	align-items: center;
	gap: 12px;
}

.avatar {
	width: 48px;
	height: 48px;
	background: #2563eb;
	color: white;
	border-radius: 50%;
	display: flex;
	align-items: center;
	justify-content: center;
	font-weight: 700;
	font-size: 18px;
}

.profile-name {
	font-weight: 700;
}

.profile-role {
	color: #6b7280;
	font-size: 13px;
}

/* WELCOME */
.welcome {
	background: white;
	border-radius: 18px;
	padding: 25px;
	margin-bottom: 25px;
	box-shadow: 0 5px 20px rgba(0, 0, 0, .05);
}

.welcome h2 {
	font-size: 24px;
	margin-bottom: 8px;
}

.welcome p {
	color: #6b7280;
	margin: 0;
}

/* STATS */
.stats {
	display: grid;
	grid-template-columns: repeat(5, 1fr);
	gap: 18px;
	margin-bottom: 30px;
}

.stat-card {
	background: white;
	padding: 22px;
	border-radius: 16px;
	box-shadow: 0 5px 20px rgba(0, 0, 0, .05);
}

.stat-icon {
	width: 45px;
	height: 45px;
	display: flex;
	align-items: center;
	justify-content: center;
	background: #eef2ff;
	color: #2563eb;
	border-radius: 12px;
	font-size: 21px;
	margin-bottom: 15px;
}

.stat-title {
	color: #6b7280;
	font-size: 13px;
	margin-bottom: 5px;
}

.stat-value {
	font-size: 28px;
	font-weight: 700;
}

/* SECTION */
.section {
	background: white;
	border-radius: 18px;
	padding: 25px;
	margin-bottom: 25px;
	box-shadow: 0 5px 20px rgba(0, 0, 0, .05);
	scroll-margin-top: 20px;
}

.section-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 20px;
}

.section-header h3 {
	margin: 0;
	font-size: 20px;
}

.section-header p {
	margin: 5px 0 0;
	color: #6b7280;
	font-size: 14px;
}

.count-badge {
	background: #eff6ff;
	color: #2563eb;
	padding: 8px 13px;
	border-radius: 20px;
	font-size: 13px;
	font-weight: 600;
}

/* TABLE */
.table-responsive {
	overflow-x: auto;
}

table {
	width: 100%;
	border-collapse: collapse;
}

thead {
	background: #f8fafc;
}

th {
	padding: 14px;
	text-align: left;
	font-size: 13px;
	color: #64748b;
	white-space: nowrap;
}

td {
	padding: 15px 14px;
	border-top: 1px solid #eef2f7;
	white-space: nowrap;
}

.user-name {
	font-weight: 600;
}

.user-avatar {
	width: 35px;
	height: 35px;
	border-radius: 50%;
	background: #e0e7ff;
	color: #3730a3;
	display: inline-flex;
	align-items: center;
	justify-content: center;
	font-weight: 700;
	margin-right: 8px;
}

.role-badge {
	display: inline-block;
	padding: 6px 10px;
	border-radius: 20px;
	font-size: 12px;
	font-weight: 700;
	background: #eef2ff;
	color: #3730a3;
}

.empty {
	text-align: center;
	color: #9ca3af;
	padding: 30px;
}

/* BUTTON */
.view-btn {
	border-radius: 8px;
	padding: 6px 12px;
	font-size: 12px;
}

/* REPORT */
.report-grid {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	gap: 20px;
}

.report-card {
	padding: 25px;
	border-radius: 15px;
	background: #f8fafc;
}

.report-card h4 {
	margin-bottom: 10px;
	font-size: 15px;
	color: #64748b;
}

.report-card strong {
	font-size: 30px;
}

/* RESPONSIVE */
@media ( max-width : 1100px) {
	.stats {
		grid-template-columns: repeat(3, 1fr);
	}
}

@media ( max-width : 800px) {
	.sidebar {
		position: relative;
		width: 100%;
		height: auto;
	}
	.logout {
		position: relative;
		left: auto;
		right: auto;
		bottom: auto;
		margin-top: 20px;
	}
	.main {
		margin-left: 0;
		padding: 20px;
	}
	.topbar {
		flex-direction: column;
		align-items: flex-start;
		gap: 20px;
	}
	.stats {
		grid-template-columns: repeat(2, 1fr);
	}
	.report-grid {
		grid-template-columns: 1fr;
	}
}

@media ( max-width : 500px) {
	.stats {
		grid-template-columns: 1fr;
	}
	.page-title h1 {
		font-size: 24px;
	}
	.section {
		padding: 18px;
	}
}
</style>

</head>

<body>

	<!-- SIDEBAR -->

	<div class="sidebar">

		<div class="logo">
			<i class="bi bi-building"></i> ITManage
		</div>

		<div class="menu-title">Management</div>

		<a href="/EmployeeMVC/admin/dashboard" class="active"> <i
			class="bi bi-speedometer2"></i> Dashboard
		</a> <a href="/EmployeeMVC/admin/dashboard#all-users"> <i
			class="bi bi-people"></i> All Users
		</a> <a href="/EmployeeMVC/admin/dashboard#employees"> <i
			class="bi bi-person-badge"></i> Employees
		</a> <a href="/EmployeeMVC/admin/dashboard#hr"> <i
			class="bi bi-person-workspace"></i> HR
		</a> <a href="/EmployeeMVC/admin/dashboard#managers"> <i
			class="bi bi-person-gear"></i> Managers
		</a> <a href="/EmployeeMVC/admin/dashboard#reports"> <i
			class="bi bi-bar-chart"></i> Reports
		</a> <a href="/EmployeeMVC/logout" class="logout"> <i
			class="bi bi-box-arrow-right"></i> Logout
		</a>

	</div>


	<!-- MAIN -->

	<div class="main">

		<!-- TOPBAR -->

		<div class="topbar">

			<div class="page-title">

				<h1>Admin Dashboard</h1>

				<p>Organization overview and user management</p>

			</div>

			<div class="admin-profile">

				<div class="avatar">A</div>

				<div>

					<div class="profile-name">${loggedInUser.name}</div>

					<div class="profile-role">Administrator</div>

				</div>

			</div>

		</div>


		<!-- WELCOME -->

		<div class="welcome">

			<h2>Welcome back, ${loggedInUser.name}</h2>

			<p>Here's an overview of your organization's users and roles.</p>

		</div>


		<!-- STATS -->

		<div class="stats">

			<div class="stat-card">

				<div class="stat-icon">
					<i class="bi bi-people"></i>
				</div>

				<div class="stat-title">Total Users</div>

				<div class="stat-value">${totalUsers}</div>

			</div>


			<div class="stat-card">

				<div class="stat-icon">
					<i class="bi bi-person-badge"></i>
				</div>

				<div class="stat-title">Employees</div>

				<div class="stat-value">${totalEmployees}</div>

			</div>


			<div class="stat-card">

				<div class="stat-icon">
					<i class="bi bi-person-workspace"></i>
				</div>

				<div class="stat-title">HR</div>

				<div class="stat-value">${totalHR}</div>

			</div>


			<div class="stat-card">

				<div class="stat-icon">
					<i class="bi bi-person-gear"></i>
				</div>

				<div class="stat-title">Managers</div>

				<div class="stat-value">${totalManagers}</div>

			</div>


			<div class="stat-card">

				<div class="stat-icon">
					<i class="bi bi-shield-check"></i>
				</div>

				<div class="stat-title">Admins</div>

				<div class="stat-value">${totalAdmins}</div>

			</div>

		</div>


		<!-- ALL USERS -->

		<div class="section" id="all-users">

			<div class="section-header">

				<div>

					<h3>Organization Users</h3>

					<p>Employees, HR and Managers</p>

				</div>

				<div class="count-badge">${totalUsers} Users</div>

			</div>


			<div class="table-responsive">

				<table>

					<thead>

						<tr>

							<th>ID</th>
							<th>Name</th>
							<th>Username</th>
							<th>Role</th>
							<th>Department</th>
							<th>Salary</th>
							<th>Action</th>

						</tr>

					</thead>


					<tbody>

						<c:choose>

							<c:when test="${not empty users}">

								<c:forEach var="user" items="${users}">

									<tr>

										<td>#${user.id}</td>

										<td><span class="user-avatar">
												${user.name.substring(0,1)} </span> <span class="user-name">
												${user.name} </span></td>

										<td>${user.userName}</td>

										<td><span class="role-badge"> ${user.role} </span></td>

										<td>${user.department.name}</td>

										<td>₹ ${user.salary}</td>

										<td><a href="/EmployeeMVC/admin/user?id=${user.id}"
											class="btn btn-primary view-btn"> <i class="bi bi-eye"></i>
												View

										</a></td>

									</tr>

								</c:forEach>

							</c:when>


							<c:otherwise>

								<tr>

									<td colspan="7" class="empty">No users found.</td>

								</tr>

							</c:otherwise>

						</c:choose>

					</tbody>

				</table>

			</div>

		</div>


		<!-- EMPLOYEES -->

		<div class="section" id="employees">

			<div class="section-header">

				<div>

					<h3>Employee List</h3>

					<p>All registered employees</p>

				</div>

				<div class="count-badge">${totalEmployees} Employees</div>

			</div>


			<div class="table-responsive">

				<table>

					<thead>

						<tr>

							<th>ID</th>
							<th>Name</th>
							<th>Username</th>
							<th>Department</th>
							<th>Salary</th>
							<th>Action</th>

						</tr>

					</thead>


					<tbody>

						<c:choose>

							<c:when test="${not empty employees}">

								<c:forEach var="user" items="${employees}">

									<tr>

										<td>#${user.id}</td>

										<td class="user-name">${user.name}</td>

										<td>${user.userName}</td>

										<td>${user.department.name}</td>

										<td>₹ ${user.salary}</td>

										<td><a href="/EmployeeMVC/admin/user?id=${user.id}"
											class="btn btn-primary view-btn"> <i class="bi bi-eye"></i>
												View

										</a></td>

									</tr>

								</c:forEach>

							</c:when>


							<c:otherwise>

								<tr>

									<td colspan="6" class="empty">No employees found.</td>

								</tr>

							</c:otherwise>

						</c:choose>

					</tbody>

				</table>

			</div>

		</div>


		<!-- HR -->

		<div class="section" id="hr">

			<div class="section-header">

				<div>

					<h3>HR List</h3>

					<p>All registered HR users</p>

				</div>

				<div class="count-badge">${totalHR} HR</div>

			</div>


			<div class="table-responsive">

				<table>

					<thead>

						<tr>

							<th>ID</th>
							<th>Name</th>
							<th>Username</th>
							<th>Department</th>
							<th>Salary</th>
							<th>Action</th>

						</tr>

					</thead>


					<tbody>

						<c:choose>

							<c:when test="${not empty hrList}">

								<c:forEach var="hr" items="${hrList}">

									<tr>

										<td>#${hr.id}</td>

										<td class="user-name">${hr.name}</td>

										<td>${hr.userName}</td>

										<td>${hr.department.name}</td>

										<td>₹ ${hr.salary}</td>

										<td><a href="/EmployeeMVC/admin/user?id=${hr.id}"
											class="btn btn-primary view-btn"> <i class="bi bi-eye"></i>
												View

										</a></td>

									</tr>

								</c:forEach>

							</c:when>


							<c:otherwise>

								<tr>

									<td colspan="6" class="empty">No HR users found.</td>

								</tr>

							</c:otherwise>

						</c:choose>

					</tbody>

				</table>

			</div>

		</div>


		<!-- MANAGERS -->

		<div class="section" id="managers">

			<div class="section-header">

				<div>

					<h3>Manager List</h3>

					<p>Management team</p>

				</div>

				<div class="count-badge">${totalManagers} Managers</div>

			</div>


			<div class="table-responsive">

				<table>

					<thead>

						<tr>

							<th>ID</th>
							<th>Name</th>
							<th>Username</th>
							<th>Department</th>
							<th>Salary</th>
							<th>Action</th>

						</tr>

					</thead>


					<tbody>

						<c:choose>

							<c:when test="${not empty managers}">

								<c:forEach var="manager" items="${managers}">

									<tr>

										<td>#${manager.id}</td>

										<td class="user-name">${manager.name}</td>

										<td>${manager.userName}</td>

										<td>${manager.department.name}</td>

										<td>₹ ${manager.salary}</td>

										<td><a href="/EmployeeMVC/admin/user?id=${manager.id}"
											class="btn btn-primary view-btn"> <i class="bi bi-eye"></i>
												View

										</a></td>

									</tr>

								</c:forEach>

							</c:when>


							<c:otherwise>

								<tr>

									<td colspan="6" class="empty">No managers found.</td>

								</tr>

							</c:otherwise>

						</c:choose>

					</tbody>

				</table>

			</div>

		</div>


		<!-- REPORTS -->

		<div class="section" id="reports">

			<div class="section-header">

				<div>

					<h3>Organization Statistics</h3>

					<p>Current organization overview</p>

				</div>

			</div>


			<div class="report-grid">

				<div class="report-card">

					<h4>Total Workforce</h4>

					<strong> ${totalEmployees} </strong>

				</div>


				<div class="report-card">

					<h4>HR</h4>

					<strong> ${totalHR} </strong>

				</div>
				
				<div class="report-card">

					<h4>Manager</h4>

					<strong> ${totalManagers} </strong>

				</div>

			</div>

		</div>

	</div>

</body>

</html>