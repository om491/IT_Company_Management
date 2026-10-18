<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Manage Team | IT Company Management</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

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
	background: #f4f6fb;
	color: #1f2937;
	min-height: 100vh;
}

.topbar {
	height: 72px;
	background: #111827;
	color: white;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 35px;
	position: sticky;
	top: 0;
	z-index: 1000;
	box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
}

.brand {
	display: flex;
	align-items: center;
	gap: 12px;
	font-size: 19px;
	font-weight: 800;
}

.brand-icon {
	width: 40px;
	height: 40px;
	border-radius: 11px;
	background: linear-gradient(135deg, #f97316, #ea580c);
	display: flex;
	align-items: center;
	justify-content: center;
	box-shadow: 0 5px 15px rgba(249, 115, 22, 0.3);
}

.back-btn {
	color: #d1d5db;
	text-decoration: none;
	font-size: 14px;
	font-weight: 600;
	padding: 9px 15px;
	border-radius: 9px;
	transition: 0.25s;
}

.back-btn:hover {
	background: #1f2937;
	color: white;
}

.main-container {
	max-width: 1250px;
	margin: auto;
	padding: 35px 25px 60px;
}

.page-header {
	margin-bottom: 30px;
}

.breadcrumb-box {
	display: flex;
	align-items: center;
	gap: 8px;
	margin-bottom: 12px;
	font-size: 13px;
	color: #9ca3af;
}

.breadcrumb-box .active {
	color: #f97316;
	font-weight: 600;
}

.page-header h1 {
	font-size: 30px;
	font-weight: 800;
	color: #111827;
	margin-bottom: 7px;
}

.page-header p {
	color: #6b7280;
	font-size: 14px;
	margin: 0;
}

.layout {
	display: grid;
	grid-template-columns: 1fr 1.4fr;
	gap: 25px;
	align-items: start;
}

.card-box {
	background: white;
	border-radius: 18px;
	border: 1px solid #e5e7eb;
	box-shadow: 0 8px 30px rgba(15, 23, 42, 0.05);
	overflow: hidden;
}

.card-header-custom {
	padding: 21px 24px;
	border-bottom: 1px solid #eef0f4;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.card-title {
	display: flex;
	align-items: center;
	gap: 11px;
	font-size: 16px;
	font-weight: 750;
	color: #111827;
}

.card-title-icon {
	width: 36px;
	height: 36px;
	border-radius: 10px;
	background: #fff7ed;
	color: #f97316;
	display: flex;
	align-items: center;
	justify-content: center;
}

.card-body-custom {
	padding: 24px;
}

.project-list {
	display: flex;
	flex-direction: column;
	gap: 12px;
}

.project-item {
	border: 1px solid #e5e7eb;
	border-radius: 13px;
	padding: 15px;
	transition: 0.25s;
	cursor: pointer;
}

.project-item:hover {
	border-color: #fdba74;
	background: #fffaf5;
	transform: translateY(-1px);
}

.project-name {
	font-size: 14px;
	font-weight: 700;
	color: #111827;
	margin-bottom: 6px;
}

.project-description {
	font-size: 12px;
	line-height: 1.5;
	color: #6b7280;
}

.project-status {
	display: inline-flex;
	margin-top: 9px;
	padding: 5px 9px;
	border-radius: 20px;
	background: #ecfdf5;
	color: #059669;
	font-size: 10px;
	font-weight: 700;
	text-transform: uppercase;
}

.empty-project {
	padding: 35px 15px;
	text-align: center;
	color: #9ca3af;
}

.empty-project i {
	font-size: 30px;
	margin-bottom: 10px;
}

.form-group {
	margin-bottom: 20px;
}

.form-label-custom {
	display: block;
	font-size: 13px;
	font-weight: 700;
	color: #374151;
	margin-bottom: 8px;
}

.form-control-custom {
	width: 100%;
	height: 47px;
	border: 1px solid #dbe0e7;
	border-radius: 10px;
	padding: 0 14px;
	font-family: inherit;
	font-size: 13px;
	color: #111827;
	background: #fff;
	outline: none;
	transition: 0.2s;
}

.form-control-custom:focus {
	border-color: #f97316;
	box-shadow: 0 0 0 4px rgba(249, 115, 22, 0.10);
}

.helper-text {
	margin-top: 8px;
	font-size: 11px;
	color: #9ca3af;
}

.manager-display {
	display: flex;
	align-items: center;
	gap: 12px;
	padding: 13px 15px;
	border: 1px solid #fed7aa;
	background: #fff7ed;
	border-radius: 12px;
}

.manager-avatar {
	width: 40px;
	height: 40px;
	border-radius: 11px;
	background: #f97316;
	color: white;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-shrink: 0;
}

.manager-info {
	flex: 1;
	min-width: 0;
}

.manager-name {
	font-size: 13px;
	font-weight: 750;
	color: #111827;
}

.manager-role {
	margin-top: 3px;
	font-size: 10px;
	font-weight: 700;
	color: #ea580c;
	letter-spacing: 0.4px;
}

.manager-check {
	color: #16a34a;
	font-size: 18px;
}

.divider {
	height: 1px;
	background: #eef0f4;
	margin: 23px 0;
}

.employee-header {
	display: flex;
	align-items: center;
	justify-content: space-between;
	gap: 10px;
	margin-bottom: 15px;
}

.employee-title {
	font-size: 13px;
	font-weight: 750;
	color: #374151;
}

.employee-actions {
	display: flex;
	gap: 7px;
}

.small-action {
	border: 1px solid #e5e7eb;
	background: white;
	color: #6b7280;
	padding: 6px 10px;
	border-radius: 8px;
	font-size: 11px;
	font-weight: 600;
	cursor: pointer;
	transition: 0.2s;
}

.small-action:hover {
	border-color: #f97316;
	color: #ea580c;
	background: #fff7ed;
}

.employee-count {
	display: inline-flex;
	align-items: center;
	gap: 6px;
	background: #fff7ed;
	color: #ea580c;
	border-radius: 20px;
	padding: 6px 10px;
	font-size: 11px;
	font-weight: 750;
	margin-bottom: 15px;
}

.employee-list {
	display: flex;
	flex-direction: column;
	gap: 10px;
	max-height: 360px;
	overflow-y: auto;
	padding-right: 3px;
}

.employee-list::-webkit-scrollbar {
	width: 5px;
}

.employee-list::-webkit-scrollbar-thumb {
	background: #d1d5db;
	border-radius: 10px;
}

.employee-card {
	display: flex;
	align-items: center;
	gap: 13px;
	border: 1px solid #e5e7eb;
	border-radius: 13px;
	padding: 13px 14px;
	cursor: pointer;
	background: #fff;
	transition: all 0.2s ease;
}

.employee-card:hover {
	border-color: #fdba74;
	background: #fffaf5;
}

.employee-card.selected {
	border-color: #f97316;
	background: #fff7ed;
}

.employee-checkbox {
	width: 18px;
	height: 18px;
	accent-color: #f97316;
	cursor: pointer;
	flex-shrink: 0;
}

.employee-avatar {
	width: 40px;
	height: 40px;
	border-radius: 11px;
	background: #111827;
	color: white;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 13px;
	font-weight: 800;
	flex-shrink: 0;
}

.employee-info {
	min-width: 0;
	flex: 1;
}

.employee-name {
	font-size: 13px;
	font-weight: 700;
	color: #111827;
	margin-bottom: 3px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.employee-role {
	font-size: 10px;
	font-weight: 700;
	color: #9ca3af;
	letter-spacing: 0.5px;
}

.employee-check-icon {
	width: 25px;
	height: 25px;
	border-radius: 50%;
	background: #f3f4f6;
	color: #9ca3af;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 11px;
	transition: 0.2s;
}

.employee-card.selected .employee-check-icon {
	background: #f97316;
	color: white;
}

.empty-state {
	text-align: center;
	padding: 40px 15px;
	border: 1px dashed #d1d5db;
	border-radius: 13px;
	color: #9ca3af;
}

.empty-state i {
	font-size: 30px;
	margin-bottom: 12px;
}

.empty-state p {
	margin: 0;
	font-size: 13px;
	font-weight: 600;
}

.selected-bar {
	margin-top: 17px;
	padding: 12px 14px;
	border-radius: 10px;
	background: #f9fafb;
	border: 1px solid #eef0f4;
	display: flex;
	justify-content: space-between;
	align-items: center;
	font-size: 12px;
	color: #6b7280;
}

.selected-number {
	color: #ea580c;
	font-weight: 800;
}

.create-btn {
	width: 100%;
	height: 49px;
	border: none;
	border-radius: 11px;
	background: linear-gradient(135deg, #f97316, #ea580c);
	color: white;
	font-family: inherit;
	font-size: 13px;
	font-weight: 750;
	cursor: pointer;
	transition: 0.25s;
	box-shadow: 0 8px 18px rgba(249, 115, 22, 0.20);
}

.create-btn:hover {
	transform: translateY(-1px);
	box-shadow: 0 11px 22px rgba(249, 115, 22, 0.28);
}

.footer-note {
	margin-top: 25px;
	text-align: center;
	color: #9ca3af;
	font-size: 11px;
}

@media ( max-width : 991px) {
	.layout {
		grid-template-columns: 1fr;
	}
	.project-list {
		display: grid;
		grid-template-columns: repeat(2, 1fr);
	}
}

@media ( max-width : 650px) {
	.topbar {
		padding: 0 17px;
		height: 65px;
	}
	.brand {
		font-size: 15px;
	}
	.brand-icon {
		width: 35px;
		height: 35px;
	}
	.back-btn {
		padding: 7px 9px;
		font-size: 12px;
	}
	.main-container {
		padding: 25px 15px 40px;
	}
	.page-header h1 {
		font-size: 24px;
	}
	.project-list {
		grid-template-columns: 1fr;
	}
	.card-header-custom, .card-body-custom {
		padding: 18px;
	}
	.employee-header {
		align-items: flex-start;
		flex-direction: column;
	}
}

@media ( max-width : 430px) {
	.page-header h1 {
		font-size: 21px;
	}
	.employee-actions {
		width: 100%;
	}
	.small-action {
		flex: 1;
	}
	.employee-name {
		max-width: 170px;
	}
}
</style>

</head>

<body>

	<div class="topbar">

		<div class="brand">

			<div class="brand-icon">
				<i class="fa-solid fa-users-gear"></i>
			</div>

			<span>IT Company Management</span>

		</div>

		<a href="managerDashboard" class="back-btn"> <i
			class="fa-solid fa-arrow-left"></i> Dashboard

		</a>

	</div>


	<div class="main-container">

		<div class="page-header">

			<div class="breadcrumb-box">

				<span> <i class="fa-solid fa-house"></i> Dashboard
				</span> <i class="fa-solid fa-chevron-right"></i> <span class="active">
					Manage Team </span>

			</div>

			<h1>Manage Team</h1>

			<p>Create a team and assign employees to your project.</p>

		</div>


		<div class="layout">


			<!-- PROJECTS -->

			<div class="card-box">

				<div class="card-header-custom">

					<div class="card-title">

						<div class="card-title-icon">
							<i class="fa-solid fa-diagram-project"></i>
						</div>

						<span>Projects</span>

					</div>

					<span class="badge text-bg-light"> ${projects.size()} </span>

				</div>


				<div class="card-body-custom">

					<c:choose>

						<c:when test="${not empty projects}">

							<div class="project-list">

								<c:forEach var="project" items="${projects}">

									<div class="project-item">

										<div class="project-name">

											<i class="fa-solid fa-folder-open"
												style="color: #f97316; margin-right: 6px;"> </i>

											${project.projectName}

										</div>

										<div class="project-description">${project.description}

										</div>

										<span class="project-status"> ${project.status} </span>

									</div>

								</c:forEach>

							</div>

						</c:when>

						<c:otherwise>

							<div class="empty-project">

								<i class="fa-regular fa-folder-open"></i>

								<p>No projects available.</p>

							</div>

						</c:otherwise>

					</c:choose>

				</div>

			</div>


			<!-- CREATE TEAM -->

			<div class="card-box">

				<div class="card-header-custom">

					<div class="card-title">

						<div class="card-title-icon">
							<i class="fa-solid fa-people-group"></i>
						</div>

						<span>Create New Team</span>

					</div>

				</div>


				<div class="card-body-custom">

					<form action="createTeam" method="post" id="teamForm">


						<!-- TEAM NAME -->

						<div class="form-group">

							<label class="form-label-custom"> Team Name </label> <input
								type="text" name="teamName" class="form-control-custom"
								placeholder="e.g. Java Development Team" required>

							<div class="helper-text">Enter a unique and meaningful team
								name.</div>

						</div>


						<!-- CREATED BY -->

						<div class="form-group">

							<label class="form-label-custom"> Created By </label>

							<c:choose>

								<c:when test="${not empty manager}">

									<input type="hidden" name="createdBy" value="${manager.id}">

									<div class="manager-display">

										<div class="manager-avatar">
											<i class="fa-solid fa-user-tie"></i>
										</div>

										<div class="manager-info">

											<div class="manager-name">${manager.name}</div>

											<div class="manager-role">MANAGER · ID ${manager.id}</div>

										</div>

										<div class="manager-check">
											<i class="fa-solid fa-circle-check"></i>
										</div>

									</div>

									<div class="helper-text">Logged-in manager is
										automatically assigned as team creator.</div>

								</c:when>

								<c:otherwise>

									<div class="empty-state">

										<i class="fa-solid fa-user-tie"></i>

										<p>Manager information not available.</p>

									</div>

								</c:otherwise>

							</c:choose>

						</div>


						<div class="divider"></div>


						<!-- EMPLOYEES -->

						<div class="employee-header">

							<div class="employee-title">

								<i class="fa-solid fa-user-check"
									style="color: #f97316; margin-right: 6px;"> </i> Select
								Employees

							</div>

							<div class="employee-actions">

								<button type="button" class="small-action" id="selectAllBtn">

									<i class="fa-solid fa-check-double"></i> Select All

								</button>

								<button type="button" class="small-action" id="clearAllBtn">

									<i class="fa-solid fa-xmark"></i> Clear

								</button>

							</div>

						</div>


						<div>

							<span class="employee-count"> <i class="fa-solid fa-users"></i>

								${employees.size()} Employees

							</span>

						</div>


						<c:choose>

							<c:when test="${not empty employees}">

								<div class="employee-list">

									<c:forEach var="employee" items="${employees}">

										<label class="employee-card"> <input type="checkbox"
											name="employeeIds" value="${employee.id}"
											class="employee-checkbox">

											<div class="employee-avatar">

												<i class="fa-solid fa-user"></i>

											</div>

											<div class="employee-info">

												<div class="employee-name">${employee.name}</div>

												<div class="employee-role">${employee.role}</div>

											</div>

											<div class="employee-check-icon">

												<i class="fa-solid fa-check"></i>

											</div>

										</label>

									</c:forEach>

								</div>

							</c:when>


							<c:otherwise>

								<div class="empty-state">

									<i class="fa-solid fa-user-slash"></i>

									<p>No employees available.</p>

								</div>

							</c:otherwise>

						</c:choose>


						<div class="selected-bar">

							<span> <i class="fa-solid fa-user-group"></i> Selected
								Employees

							</span> <span class="selected-number" id="selectedCount"> 0 </span>

						</div>


						<div style="margin-top: 20px;">

							<button type="submit" class="create-btn">

								<i class="fa-solid fa-plus"></i> Create Team

							</button>

						</div>


					</form>

				</div>

			</div>

		</div>


		<div class="footer-note">Team Management • IT Company Management
			System</div>

	</div>


	<script>
		const checkboxes = document.querySelectorAll(".employee-checkbox");

		const selectedCount = document.getElementById("selectedCount");

		const selectAllBtn = document.getElementById("selectAllBtn");

		const clearAllBtn = document.getElementById("clearAllBtn");

		function updateSelectedCount() {

			let count = 0;

			checkboxes.forEach(function(checkbox) {

				const card = checkbox.closest(".employee-card");

				if (checkbox.checked) {

					count++;

					card.classList.add("selected");

				} else {

					card.classList.remove("selected");

				}

			});

			selectedCount.textContent = count;
		}

		checkboxes.forEach(function(checkbox) {

			checkbox.addEventListener("change", updateSelectedCount);

		});

		selectAllBtn.addEventListener("click", function() {

			checkboxes.forEach(function(checkbox) {

				checkbox.checked = true;

			});

			updateSelectedCount();

		});

		clearAllBtn.addEventListener("click", function() {

			checkboxes.forEach(function(checkbox) {

				checkbox.checked = false;

			});

			updateSelectedCount();

		});

		document.querySelectorAll(".employee-card").forEach(function(card) {

			card.addEventListener("click", function(event) {

				if (event.target.type === "checkbox") {
					return;
				}

				const checkbox = card.querySelector(".employee-checkbox");

				checkbox.checked = !checkbox.checked;

				updateSelectedCount();

			});

		});

		document
				.getElementById("teamForm")
				.addEventListener(
						"submit",
						function(event) {

							const selected = document
									.querySelectorAll(".employee-checkbox:checked").length;

							if (selected === 0) {

								event.preventDefault();

								alert("Please select at least one employee.");

							}

						});
	</script>

</body>

</html>