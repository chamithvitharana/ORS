<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crave Admin - Manage Users</title>
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

        .btn-add-user {
            background-color: #0d5fb6;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            margin-bottom: 20px;
            transition: background-color 0.3s;
        }

        .btn-add-user:hover {
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



        @media print {
            .sidebar, .topbar {
                display: none;
            }

            .main-content {
                margin-left: 0;
                padding: 0;
            }

            .card {
                box-shadow: none;
                border: 1px solid #ddd;
                margin-bottom: 0;
            }

            table {
                border-collapse: collapse;
                width: 100%;
            }

            table th, table td {
                border: 1px solid #ddd;
                padding: 8px;
            }

            table thead {
                background-color: #0d5fb6;
                color: #fff;
            }

            .btn-print {
                display: none;
            }
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <a href="dashboard.jsp"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
        <a href="orders.jsp"><i class="fas fa-shopping-cart"></i> Orders</a>
        <a href="reservations.jsp"><i class="fas fa-calendar-alt"></i> Reservations</a>
        <a href="users.jsp" class="active"><i class="fas fa-users"></i> Manage Users</a>
        <a href="branches.jsp"><i class="fas fa-store"></i> Restaurant Branches</a>
        <a href="foodItems.jsp"><i class="fas fa-utensils"></i> Food Items</a>
    </div>

    <!-- Topbar -->
    <div class="topbar">
        <h2>Manage Users</h2>
        <div class="user-profile">
            <img src="../images/logo2.png" alt="Admin Profile">
            <span>Admin Name</span>
        </div>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="container-fluid">
            <div class="card">
                <h5>User Management</h5>
                <div class="card-body">
                    <!-- Add New User Button -->
                    <button class="btn-add-user" data-bs-toggle="modal" data-bs-target="#addUserModal"><i class="fas fa-plus"></i> Add New User</button>
                    <!-- Print Button -->
                    <button class="btn btn-warning offset-9" onclick="printTable()"> <i class="fas fa-print"></i> Print Report</button>
                    <!-- Users Table -->
                    <div id="userTable" class="table-container">
                        <table>
                            <thead>
                            <tr>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Mobile</th>
                                <th>Role</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tbody id="usersTableBody">
                                <!-- Add more users as needed -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add User Modal -->
    <div class="modal fade" id="addUserModal" tabindex="-1" aria-labelledby="addUserModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addUserModalLabel">Add New User</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Add User Form -->
                    <div class="mb-3">
                        <label for="firstname" class="form-label">First Name</label>
                        <input type="text" class="form-control" id="firstname">
                    </div>
                    <div class="mb-3">
                        <label for="lastname" class="form-label">Last Name</label>
                        <input type="text" class="form-control" id="lastname">
                    </div>
                    <div class="mb-3">
                        <label for="mobile" class="form-label">Mobile</label>
                        <input type="number" class="form-control" id="mobile">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password">
                    </div>
                    <div class="mb-3">
                        <label for="role" class="form-label">Role</label>
                        <select class="form-control" id="role">
                            <option value="ADMIN">Admin</option>
                            <option value="RESTAURENT_MANAGER">Restaurant Manager</option>
                            <option value="DELIVERY_COORDINATOR">Delivery Coordinator</option>
                            <option value="RECEPTIONIST">Receptionist</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-cancel" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-save" id="saveButton">Save</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        function printTable() {
            var printWindow = window.open('', '', 'height=600,width=800');

            // Clone the table
            var table = document.getElementById('userTable').cloneNode(true);

            // Remove the "Actions" column from the cloned table
            var header = table.querySelector('thead');
            var rows = table.querySelectorAll('tbody tr');

            // Remove the header cell for the "Actions" column
            var headers = header.querySelectorAll('th');
            headers[headers.length - 1].remove();

            // Remove the "Actions" column from each row
            rows.forEach(function(row) {
                var cells = row.querySelectorAll('td');
                cells[cells.length - 1].remove();
            });

            // Write the HTML content to the print window
            printWindow.document.write('<html><head><title>Crave Users<\/title>');
            printWindow.document.write('<style>table { width: 100%; border-collapse: collapse; } th, td { border: 1px solid #ddd; padding: 8px; } th { background-color: #0d5fb6; color: white; }');
            printWindow.document.write('img { display: block; margin: 0 auto; }'); // Center the logo
            printWindow.document.write('<\/style>');
            printWindow.document.write('<\/head><body>');

            // Add the logo at the top center
            printWindow.document.write('<img src="../images/logo2.png" alt="Crave Logo" style="width: 200px; height:200px;">');

            printWindow.document.write('<h2 style="text-align: center;">Crave User List<\/h2>');
            printWindow.document.write(table.outerHTML);
            printWindow.document.write('<\/body><\/html>');

            printWindow.document.close();
            printWindow.focus();
            printWindow.print();
        }

        document.getElementById("saveButton").addEventListener('click', function () {
            var firstName = document.getElementById("firstname");
            var lastName = document.getElementById("lastname");
            var mobile = document.getElementById("mobile");
            var password = document.getElementById("password");
            var userType = document.getElementById("role");

            if(firstName.value==="") {
                alert("Please enter your first name");
                return;
            } else if(lastName.value==="") {
                alert("Please enter your last name.");
                return;
            } else if(mobile.value==="" || mobile.value.length!==10) {
                alert("Please enter a valid mobile number.");
                return;
            } else if(password.value.length < 6 || password.value.length > 20) {
                alert("Password must be within 6-20 characters.");
                return;
            }

            var form = JSON.stringify({
                "firstName": firstName.value,
                "lastName": lastName.value,
                "mobile": mobile.value,
                "password": password.value,
                "userType": userType.value
            });

            var ajax = new XMLHttpRequest();

            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status===200) {
                        alert("User registered successfully!");
                        firstName.value = "";
                        lastName.value = "";
                        mobile.value = "";
                        password.value = "";
                        userType.value = "";
                        loadUsers();
                    } else {
                        alert(ajax.responseText);
                    }
                }
            };
            ajax.open("POST", "/user/register", true);
            ajax.setRequestHeader("Content-Type", "application/json");
            ajax.send(form);
        });

        document.addEventListener('DOMContentLoaded', function () {
            loadUsers();
        });

        function loadUsers() {
            var ajax = new XMLHttpRequest();

            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status===200) {
                        populateUsers(JSON.parse(ajax.responseText));
                    }
                }
            };
            ajax.open("GET", "/user/get", true);
            ajax.send();
        }

        function populateUsers(users) {
            const tbody = document.getElementById('usersTableBody');
            tbody.innerHTML = ''; // Clear existing table rows

            users.forEach(item => {
                const row = document.createElement('tr');

                // Create and append first name cell
                const fnCell = document.createElement('td');
                fnCell.textContent = item.firstName;
                row.appendChild(fnCell);

                // Create and append last name cell
                const lnCell = document.createElement('td');
                lnCell.textContent = item.lastName;
                row.appendChild(lnCell);

                // Create and append mobile cell
                const mobCell = document.createElement("td");
                mobCell.textContent = item.mobile;
                row.appendChild(mobCell);

                // Create and append user type cell
                const utCell = document.createElement("td");
                utCell.textContent = item.userType;
                row.appendChild(utCell);

                // Create delete button
                const deleteButton = document.createElement("button");
                deleteButton.classList.add("btn-delete");
                deleteButton.textContent = "Delete";
                deleteButton.setAttribute("onclick", "deleteUser('"+ item.mobile +"');");

                // Create and append delete button cell
                const btnCell = document.createElement("td");
                btnCell.classList.add("btn-actions");
                btnCell.appendChild(deleteButton);
                row.appendChild(btnCell);

                // Append the complete row to the tbody
                tbody.appendChild(row);
            });
        }

        function deleteUser(mobile) {
            var ajax = new XMLHttpRequest();

            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status===200) {
                        alert("User deleted successfully!");
                        loadUsers();
                    } else {
                        alert(ajax.responseText);
                    }
                }
            };
            ajax.open("GET", "/user/delete?mobile=" + encodeURIComponent(mobile), true);
            ajax.send();
        }
    </script>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="../js/script.js"></script>
</body>
</html>
