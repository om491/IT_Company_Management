<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Projects | Manager Portal</title>

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

.main-wrapper {
	min-height: 100vh;
	padding: 35px;
}

/* ================= HEADER ================= */
.page-header {
	background: linear-gradient(135deg, #172033, #273449);
	border-radius: 20px;
	padding: 30px;
	color: white;
	margin-bottom: 25px;
	position: relative;
	overflow: hidden;
}

.page-header::after {
	content: "";
	position: absolute;
	width: 220px;
	height: 220px;
	border-radius: 50%;
	background: rgba(245, 158, 11, 0.12);
	right: -70px;
	top: -80px;
}

.page-header-content {
	position: relative;
	z-index: 2;
}

.page-header h2 {
	font-size: 26px;
	font-weight: 800;
	margin-bottom: 7px;
}

.page-header p {
	color: #cbd5e1;
	font-size: 13px;
	margin: 0;
}

/* ================= TOP BAR ================= */
.top-bar {
	background: white;
	border: 1px solid #e5e7eb;
	border-radius: 18px;
	padding: 18px 22px;
	margin-bottom: 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	gap: 15px;
}

.project-count {
	color: #64748b;
	font-size: 13px;
}

.project-count strong {
	color: #172033;
	font-size: 15px;
}

/* ================= BUTTON ================= */
.btn-add {
	background: #f59e0b;
	color: white;
	border: none;
	padding: 11px 18px;
	border-radius: 10px;
	font-size: 12px;
	font-weight: 700;
	text-decoration: none;
	transition: 0.2s;
}

.btn-add:hover {
	background: #d97706;
	color: white;
	transform: translateY(-2px);
}

/* ================= TABLE CARD ================= */
.table-card {
	background: white;
	border: 1px solid #e5e7eb;
	border-radius: 18px;
	overflow: hidden;
	box-shadow: 0 10px 30px rgba(15, 23, 42, 0.06);
}

.table-responsive {
	overflow-x: auto;
}

.project-table {
	width: 100%;
	border-collapse: collapse;
	margin: 0;
}

.project-table thead {
	background: #f8fafc;
}

.project-table th {
	padding: 15px 16px;
	font-size: 11px;
	font-weight: 800;
	color: #64748b;
	text-transform: uppercase;
	letter-spacing: 0.5px;
	white-space: nowrap;
	border-bottom: 1px solid #e5e7eb;
}

.project-table td {
	padding: 17px 16px;
	font-size: 12px;
	color: #475569;
	border-bottom: 1px solid #eef2f7;
	vertical-align: middle;
}

.project-table tbody tr {
	transition: 0.2s;
}

.project-table tbody tr:hover {
	background: #fffbeb;
}

.project-table tbody tr:last-child td {
	border-bottom: none;
}

/* ================= PROJECT NAME ================= */
.project-name {
	font-weight: 700;
	color: #172033;
	font-size: 13px;
}

.project-id {
	display: block;
	color: #94a3b8;
	font-size: 10px;
	margin-top: 3px;
}

/* ================= DESCRIPTION ================= */
.description {
	max-width: 280px;
	color: #64748b;
	line-height: 1.5;
}

/* ================= STATUS ================= */
.status-badge {
	display: inline-flex;
	align-items: center;
	gap: 5px;
	padding: 6px 10px;
	border-radius: 20px;
	font-size: 10px;
	font-weight: 700;
	white-space: nowrap;
}

.status-planned {
	background: #eff6ff;
	color: #2563eb;
}

.status-progress {
	background: #fff7ed;
	color: #ea580c;
}

.status-completed {
	background: #ecfdf5;
	color: #059669;
}

.status-hold {
	background: #fefce8;
	color: #ca8a04;
}

.status-cancelled {
	background: #fef2f2;
	color: #dc2626;
}

/* ================= MANAGER ================= */
.manager-id {
	display: inline-flex;
	align-items: center;
	gap: 5px;
	background: #f1f5f9;
	color: #475569;
	padding: 6px 9px;
	border-radius: 8px;
	font-size: 11px;
	font-weight: 700;
}

/* ================= DATES ================= */
.date-text {
	font-size: 11px;
	color: #64748b;
	white-space: nowrap;
}

/* ================= EMPTY STATE ================= */
.empty-state {
	text-align: center;
	padding: 70px 20px;
}

.empty-icon {
	width: 65px;
	height: 65px;
	border-radius: 16px;
	background: #fffbeb;
	color: #d97706;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 28px;
	margin: 0 auto 18px;
}

.empty-state h5 {
	font-size: 16px;
	font-weight: 800;
	margin-bottom: 7px;
}

.empty-state p {
	color: #94a3b8;
	font-size: 12px;
	margin-bottom: 20px;
}

/* ================= BACK BUTTON ================= */
.back-area {
	margin-top: 20px;
}

.btn-back {
	display: inline-flex;
	align-items: center;
	gap: 7px;
	background: #f1f5f9;
	color: #475569;
	padding: 10px 16px;
	border-radius: 10px;
	font-size: 12px;
	font-weight: 700;
	text-decoration: none;
	transition: 0.2s;
}

.btn-back:hover {
	background: #e2e8f0;
	color: #172033;
}

/* ================= MOBILE ================= */
@media ( max-width : 768px) {
	.main-wrapper {
		padding: 20px;
	}
	.page-header {
		padding: 25px;
	}
	.page-header h2 {
		font-size: 22px;
	}
	.top-bar {
		flex-direction: column;
		align-items: stretch;
	}
	.btn-add {
		text-align: center;
	}
	.table-card {
		border-radius: 14px;
	}
	.project-table {
		min-width: 950px;
	}
}
</style>

</head>

<body>

	<div class="main-wrapper">

		<!-- ================= PAGE HEADER ================= -->

		<div class="page-header">

			<div class="page-header-content">

				<h2>
					<i class="bi bi-kanban-fill"></i> Project Management
				</h2>

				<p>View and manage all projects assigned to the organization.</p>

			</div>

		</div>


		<!-- ================= TOP BAR ================= -->

		<div class="top-bar">

			<div class="project-count">

				<i class="bi bi-folder2-open"></i> Total Projects: <strong>
					<c:choose>

						<c:when test="${not empty projects}">
                        ${projects.size()}
                    </c:when>

						<c:otherwise>
                        0
                    </c:otherwise>

					</c:choose>
				</strong>

			</div>


			<a href="/EmployeeMVC/addProject" class="btn-add"> <i
				class="bi bi-plus-circle"></i> Create New Project

			</a>

		</div>


		<!-- ================= PROJECT TABLE ================= -->

		<div class="table-card">

			<div class="table-responsive">

				<c:choose>

					<c:when test="${not empty projects}">

						<table class="project-table">

							<thead>
								<tr>
									<th>#</th>
									<th>Project</th>
									<th>Description</th>
									<th>Manager</th>
									<th>Start Date</th>
									<th>End Date</th>
									<th>Status</th>
								</tr>
							</thead>

							<tbody>

								<c:forEach var="project" items="${projects}" varStatus="status">

									<tr>

										<td>${status.count}</td>

										<td>
											<div class="project-name">${project.projectName}</div> <span
											class="project-id"> Project ID: ${project.projectId} </span>
										</td>

										<td>
											<div class="description">${project.description}</div>
										</td>

										<td><span class="manager-id"> <i
												class="bi bi-person-badge"></i> ${project.managerId}
										</span></td>

										<td><span class="date-text"> <i
												class="bi bi-calendar-event"></i> ${project.startDate}
										</span></td>

										<td><span class="date-text"> <i
												class="bi bi-calendar-check"></i> ${project.endDate}
										</span></td>

										<td><c:choose>

												<c:when test="${project.status == 'PLANNED'}">
													<span class="status-badge status-planned"> <i
														class="bi bi-clock"></i> Planned
													</span>
												</c:when>

												<c:when test="${project.status == 'IN_PROGRESS'}">
													<span class="status-badge status-progress"> <i
														class="bi bi-arrow-repeat"></i> In Progress
													</span>
												</c:when>

												<c:when test="${project.status == 'COMPLETED'}">
													<span class="status-badge status-completed"> <i
														class="bi bi-check-circle"></i> Completed
													</span>
												</c:when>

												<c:when test="${project.status == 'ON_HOLD'}">
													<span class="status-badge status-hold"> <i
														class="bi bi-pause-circle"></i> On Hold
													</span>
												</c:when>

												<c:when test="${project.status == 'CANCELLED'}">
													<span class="status-badge status-cancelled"> <i
														class="bi bi-x-circle"></i> Cancelled
													</span>
												</c:when>

												<c:otherwise>
													<span class="status-badge"> ${project.status} </span>
												</c:otherwise>

											</c:choose></td>

									</tr>

								</c:forEach>

							</tbody>

						</table>

					</c:when>

					<c:otherwise>

						<div class="empty-state">

							<div class="empty-icon">
								<i class="bi bi-folder-x"></i>
							</div>

							<h5>No Projects Found</h5>

							<p>There are currently no projects available. Create your
								first project to get started.</p>

							<a href="/EmployeeMVC/addProject" class="btn-add"> <i
								class="bi bi-plus-circle"></i> Create Project
							</a>

						</div>

					</c:otherwise>

				</c:choose>

			</div>

		</div>


		<!-- ================= BACK ================= -->

		<div class="back-area">

			<a href="/EmployeeMVC/managerDashboard" class="btn-back"> <i
				class="bi bi-arrow-left"></i> Back to Manager Dashboard

			</a>

		</div>

	</div>


	<!-- Bootstrap JS -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js">
		
	</script>

</body>

</html>
