<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crave Admin - Restaurant Branches</title>
    <link rel="icon" href="../images/logoblack.png">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            display: flex;
            min-height: 100vh;
            font-family: 'Roboto', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
        }

        /* Sidebar styles */
        .sidebar {
            width: 280px;
            background-color: #343a40;
            padding: 30px 15px;
            display: flex;
            flex-direction: column;
            height: 100vh;
            position: fixed;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar a {
            color: #cfd8dc;
            padding: 12px 20px;
            margin-bottom: 10px;
            border-radius: 5px;
            text-decoration: none;
            display: flex;
            align-items: center;
            font-size: 18px;
            font-weight: 500;
            transition: background-color 0.3s;
        }

        .sidebar a:hover {
            background-color: #495057;
            color: #fff;
        }

        .sidebar a.active {
            background-color: #0d5fb6;
            color: #fff;
        }

        .sidebar i {
            margin-right: 15px;
        }

        .sidebar .logout {
            margin-top: auto;
            background-color: #dc3545;
            color: #fff !important;
        }

        /* Topbar styles */
        .topbar {
            width: calc(100% - 280px);
            background-color: #0d5fb6;
            color: #fff;
            padding: 20px 30px;
            position: fixed;
            left: 280px;
            top: 0;
            z-index: 1000;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .topbar h2 {
            margin: 0;
            font-size: 28px;
            font-weight: 600;
        }

        .topbar .user-profile {
            display: flex;
            align-items: center;
        }

        .topbar .user-profile img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }

        /* Main content styles */
        .main-content {
            margin-top: 70px;
            margin-left: 280px;
            padding: 30px;
            width: calc(100% - 280px);
        }

        .card {
            border-radius: 8px;
            border: none;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            background-color: #ffffff;
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h5 {
            margin: 0;
            padding: 15px;
            background-color: #0d5fb6;
            color: white;
            border-radius: 8px 8px 0 0;
            font-weight: 600;
        }

        .card-body {
            padding: 20px;
        }

        .table-container {
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table thead {
            background-color: #0d5fb6;
            color: #fff;
        }

        table th,
        table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        table th {
            font-weight: 600;
            font-size: 16px;
        }

        .tr1:hover {
            background-color: #f1f1f1;
        }

        .btn-actions {
            display: flex;
            gap: 10px;
        }

        .btn-actions button {
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-edit {
            background-color: #28a745;
            color: white;
        }

        .btn-edit:hover {
            background-color: #218838;
        }

        .btn-delete {
            background-color: #dc3545;
            color: white;
        }

        .btn-delete:hover {
            background-color: #c82333;
        }

        .btn-add-branch {
            background-color: #0d5fb6;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            margin-bottom: 20px;
            transition: background-color 0.3s;
        }

        .btn-add-branch:hover {
            background-color: #0b4a8a;
        }

        .modal-header {
            background-color: #0d5fb6;
            color: white;
        }

        .modal-footer .btn {
            border-radius: 5px;
            padding: 10px 20px;
        }

        .btn-save {
            background-color: #28a745;
            color: white;
        }

        .btn-save:hover {
            background-color: #218838;
        }

        .btn-cancel {
            background-color: #6c757d;
            color: white;
        }

        .btn-cancel:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <a href="dashboard.jsp"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
        <a href="orders.jsp"><i class="fas fa-shopping-cart"></i> Orders</a>
        <a href="reservations.jsp"><i class="fas fa-calendar-alt"></i> Reservations</a>
        <a href="users.jsp"><i class="fas fa-users"></i> Manage Users</a>
        <a href="branches.jsp" class="active"><i class="fas fa-store"></i> Restaurant Branches</a>
        <a href="foodItems.jsp"><i class="fas fa-utensils"></i> Food Items</a>
    </div>

    <!-- Topbar -->
    <div class="topbar">
        <h2>Restaurant Branches</h2>
        <div class="user-profile">
            <img src="../images/logo2.png" alt="Admin Profile">
            <span>Admin Name</span>
        </div>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="container-fluid">
            <div class="card">
                <h5>Branch Management</h5>
                <div class="card-body">
                    <!-- Add New Branch Button -->
                    <button class="btn-add-branch" data-bs-toggle="modal" data-bs-target="#addBranchModal"><i class="fas fa-plus"></i> Add New Branch</button>

                    <!-- Branches Table -->
                    <div class="table-container">
                        <table>
                            <thead>
                            <tr>
                                <th>Branch ID</th>
                                <th>Branch Name</th>
                            </tr>
                            </thead>
                            <tbody id="branchTableBody">
                                <!-- Load branches hear -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Branch Modal -->
    <div class="modal fade" id="addBranchModal" tabindex="-1" aria-labelledby="addBranchModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addBranchModalLabel">Add New Branch</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div id="addBranchForm">
                        <div class="mb-3">
                            <label for="branchName" class="form-label">Branch Name</label>
                            <input type="text" class="form-control" id="branchName" required>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-cancel" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-save" id="saveBranchBtn">Add New Branch</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Edit Branch Modal -->
    <div class="modal fade" id="editBranchModal" tabindex="-1" aria-labelledby="editBranchModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editBranchModalLabel">Edit Branch</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div id="editBranchForm">
                        <div class="mb-3">
                            <label for="editBranchName" class="form-label">Branch Name</label>
                            <input type="text" class="form-control" id="editBranchName" required>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-cancel" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-save" id="updateBranchBtn">Update</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Custom JS -->
    <script>
        document.getElementById('saveBranchBtn').addEventListener('click', function () {
            var branch = document.getElementById("branchName").value;
            var ajax = new XMLHttpRequest();

            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status===200) {
                        alert("Branch saved successfully!");
                    } else {
                        alert(ajax.responseText);
                    }
                }
            };
            ajax.open("GET", "/branch/add?branch=" + encodeURIComponent(branch), true);
            ajax.send();
        });

        document.addEventListener('DOMContentLoaded', function () {
            var ajax = new XMLHttpRequest();

            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status===200) {
                        populateBranches(JSON.parse(ajax.responseText));
                    }
                }
            };
            ajax.open("GET", "/branch/get", true);
            ajax.send();
        });

        function populateBranches(branches) {
            const tbody = document.getElementById('branchTableBody');
            tbody.innerHTML = ''; // Clear existing table rows

            branches.forEach(item => {
                const row = document.createElement('tr');

                // Create and append ID cell
                const idCell = document.createElement('td');
                idCell.textContent = item.id;
                row.appendChild(idCell);

                // Create and append Name cell
                const nameCell = document.createElement('td');
                nameCell.textContent = item.name;
                row.appendChild(nameCell);

                // Append the complete row to the tbody
                tbody.appendChild(row);
            });
        }
    </script>
    <script src="../js/script.js"></script>
</body>
</html>
