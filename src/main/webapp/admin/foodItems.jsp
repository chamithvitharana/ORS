<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crave Admin - Food Items</title>
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

        .btn-add-item,
        .btn-add-category {
            background-color: #0d5fb6;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            margin-bottom: 20px;
            transition: background-color 0.3s;
        }

        .btn-add-item:hover,
        .btn-add-category:hover {
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
        <a href="branches.jsp"><i class="fas fa-store"></i> Restaurant Branches</a>
        <a href="foodItems.jsp" class="active"><i class="fas fa-utensils"></i> Food Items</a>
    </div>

    <!-- Topbar -->
    <div class="topbar">
        <h2>Food Items</h2>
        <div class="user-profile">
            <img src="../images/logo2.png" alt="Admin Profile">
            <span>Admin Name</span>
        </div>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="container-fluid">
            <div class="card">
                <h5>Food Item Management</h5>
                <div class="card-body">
                    <!-- Add New Food Item Button -->
                    <button class="btn-add-item" data-bs-toggle="modal" data-bs-target="#addFoodItemModal"><i class="fas fa-plus"></i> Add New Food Item</button>
                    <!-- Add New Food Category Button -->
                    <button class="btn-add-category" data-bs-toggle="modal" data-bs-target="#addFoodCategoryModal"><i class="fas fa-plus"></i> Add New Food Category</button>
                    <!-- Print Report Button -->
                    <button class="btn btn-warning offset-7" onclick="printReport()"><i class="fas fa-print"></i> Print Report</button>

                    <!-- Food Items Table -->
                    <div class="table-container">
                        <table>
                            <thead>
                                <tr>
                                    <th>Item ID</th>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>Price (LKR)</th>
                                    <th>Category</th>
                                </tr>
                            </thead>
                            <tbody id="foodItemsTableBody">
                                <!-- Dynamic content will be inserted here -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Food Item Modal -->
    <div class="modal fade" id="addFoodItemModal" tabindex="-1" aria-labelledby="addFoodItemModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addFoodItemModalLabel">Add New Food Item</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="foodItemImage" class="form-label">Image URL</label>

                        <input type="file" accept="image/*"  class="form-control" id="foodItemImage" placeholder="URL of food image" required>
                    </div>
                    <div class="mb-3">
                        <label for="foodItemName" class="form-label">Food Item Name</label>
                        <input type="text" class="form-control" id="foodItemName">
                    </div>
                    <div class="mb-3">
                        <label for="foodItemPrice" class="form-label">Price (LKR)</label>
                        <input type="number" class="form-control" id="foodItemPrice">
                    </div>
                    <div class="mb-3">
                        <label for="foodItemCategory" class="form-label">Category</label>
                        <select class="form-select" id="foodItemCategory">
                            <option value="" selected>Select a category</option>
                            <!-- Categories will be populated dynamically -->
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-cancel" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-save" id="saveFoodItemBtn">Save</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Food Category Modal -->
    <div class="modal fade" id="addFoodCategoryModal" tabindex="-1" aria-labelledby="addFoodCategoryModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addFoodCategoryModalLabel">Add New Food Category</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="foodCategoryName" class="form-label">Category Name</label>
                        <input type="text" class="form-control" id="foodCategoryName">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-cancel" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-save" id="saveFoodCategoryBtn">Save</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Custom JS -->
    <script>
        // Example data
        const foodItems = [];
        const categories = [];

        // Function to populate food items table
        function populateFoodItems() {
            const tbody = document.getElementById('foodItemsTableBody');
            tbody.innerHTML = ''; // Clear existing table rows

            foodItems.forEach(item => {
                const row = document.createElement('tr');

                // Create and append ID cell
                const idCell = document.createElement('td');
                idCell.textContent = item.id;
                row.appendChild(idCell);

                // Create and append Image cell
                const imageCell = document.createElement('td');
                const img = document.createElement('img');
                img.src = item.image;
                img.alt = item.name;
                img.style.width = '80px';
                img.style.height = '80px';
                imageCell.appendChild(img);
                row.appendChild(imageCell);

                // Create and append Name cell
                const nameCell = document.createElement('td');
                nameCell.textContent = item.name;
                row.appendChild(nameCell);

                // Create and append Price cell
                const priceCell = document.createElement('td');
                priceCell.textContent = item.price;
                row.appendChild(priceCell);

                // Create and append Category cell
                const categoryCell = document.createElement('td');
                categoryCell.textContent = item.category;
                row.appendChild(categoryCell);

                // Append the complete row to the tbody
                tbody.appendChild(row);
            });
        }

        // Function to populate category options
        function populateCategories() {
            const select = document.getElementById('foodItemCategory');
            select.innerHTML = '<option value="0" selected>Select a category<\/option>';
            categories.forEach(category => {
                const option = document.createElement('option');
                option.value = category.id;
                option.textContent = category.name;
                select.appendChild(option);
            });
        }

        // Function to handle adding a food item
        document.getElementById('saveFoodItemBtn').addEventListener('click', () => {
            const image = document.getElementById('foodItemImage');
            const name = document.getElementById('foodItemName').value;
            const price = parseFloat(document.getElementById('foodItemPrice').value);
            const category = document.getElementById('foodItemCategory').value;

            if(image.files.length==0) {
                alert("Please upload a food image");
                return;
            } else if(name==="") {
                alert("Please enter a valid food name");
                return;
            } else if(price==="") {
                alert("Please enter the price of the food");
                return;
            } else if(category==0) {
                alert("Please select a category");
                return;
            }

            var jsonForm = JSON.stringify({
                "name": name,
                "price": price,
                "categoryId": category
            });

            var form = new FormData();
            form.append("fooditem", new Blob([jsonForm], {type: "application/json"}));
            form.append("image", document.getElementById('foodItemImage').files[0]);

            var ajax = new XMLHttpRequest();

            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status===200) {
                        alert("Food saved successfully!");
                        loadFoods();
                        new bootstrap.Modal(document.getElementById('addFoodItemModal')).hide();
                    } else {
                        alert(ajax.responseText);
                    }
                }
            };
            ajax.open("POST", "/food/add", true);
            ajax.send(form);
        });

        // Function to handle adding a food category
        document.getElementById('saveFoodCategoryBtn').addEventListener('click', () => {
            const categoryName = document.getElementById('foodCategoryName').value;

            if (!categoryName) {
                alert('Please enter a category name.');
            }

            var ajax = new XMLHttpRequest();

            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status===200) {
                        new bootstrap.Modal(document.getElementById('addFoodCategoryModal')).hide();
                        alert("Category saved successfully!");
                        loadCategories();
                    } else {
                        alert(ajax.responseText);
                    }
                }
            };
            ajax.open("GET", "/food/add/category?category=" + encodeURIComponent(categoryName), true);
            ajax.send();
        });

        // Function to load all the foods
        function loadFoods() {
            var ajax = new XMLHttpRequest();

            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status===200) {
                        var foodArray = JSON.parse(ajax.responseText);
                        foodItems.length = 0;
                        foodArray.forEach((item) => {
                            foodItems.push({
                                id: item.id,
                                image: '../images/foodItems/' + item.imagePath,
                                name: item.name,
                                price: item.price,
                                category: item.categoryName
                            });
                        });
                        populateFoodItems();
                    }
                }
            };
            ajax.open("GET", "/food/all?isActive=" + encodeURIComponent(true), true);
            ajax.send();
        }

        // Function to load all the foods
        function loadCategories() {
            var ajax = new XMLHttpRequest();

            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status===200) {
                        var categoryArray = JSON.parse(ajax.responseText);
                        categories.length = 0;
                        categoryArray.forEach((item) => {
                             categories.push({ id: item.id, name: item.name });
                        });
                        populateCategories();
                    }
                }
            };
            ajax.open("GET", "/food/all/category", true);
            ajax.send();
        }

        // Function to generate a printable report
        function printReport() {
            const originalContent = document.body.innerHTML;
            // Create a new document for the printable report
            const printWindow = window.open('', '', 'height=600,width=800');
            const doc = printWindow.document;

            doc.open();
            doc.write('<html>');
            doc.write('<head>');
            doc.write('<title>Food Items Report</title>');
            doc.write('<style>');
            doc.write('body { font-family: Arial, sans-serif; margin: 20px; }');
            doc.write('h1 { text-align: center; }');
            doc.write('.report-container { max-width: 800px; margin: auto; }');
            doc.write('.table { width: 100%; border-collapse: collapse; margin: 20px 0; }');
            doc.write('.table th, .table td { border: 1px solid #ddd; padding: 8px; }');
            doc.write('.table th { background-color: #f4f4f4; }');
            doc.write('<\/style>');
            doc.write('<\/head>');
            doc.write('<body>');
            doc.write('<div class="report-container">');
            doc.write('<img src="../images/logo2.png" alt="Crave Logo" style="width: 200px; height: 200px; display: block; margin: 0 auto;">');
            doc.write('<h1>Food Items and Categories Report<\/h1>');
            doc.write('<h2>Food Items<\/h2>');
            doc.write('<table class="table">');
            doc.write('<thead>');
            doc.write('<tr>');
            doc.write('<th>Item ID<\/th>');
            doc.write('<th>Image<\/th>');
            doc.write('<th>Name<\/th>');
            doc.write('<th>Price (LKR)<\/th>');
            doc.write('<th>Category<\/th>');
            doc.write('<\/tr>');
            doc.write('<\/thead>');
            doc.write('<tbody>');

            // Populate the food items table
            foodItems.forEach(function(item) {
                doc.write('<tr>');
                doc.write('<td>' + item.id + '<\/td>');
                doc.write('<td><img src="' + item.image + '" alt="' + item.name + '" style="width: 80px; height: 80px;"><\/td>');
                doc.write('<td>' + item.name + '<\/td>');
                doc.write('<td>' + item.price + '<\/td>');
                doc.write('<td>' + item.category + '<\/td>');
                doc.write('<\/tr>');
            });

            doc.write('<\/tbody>');
            doc.write('<\/table>');
            doc.write('<h2>Categories<\/h2>');
            doc.write('<ul id="categoriesList">');

            // Populate the categories list
            categories.forEach(function(category) {
                doc.write('<li>' + category.name + '<\/li>');
            });

            doc.write('<\/ul>');
            doc.write('<\/div>');
            doc.write('<\/body>');
            doc.write('<\/html>');

            doc.close();  // Close the document stream
            printWindow.print();  // Trigger the print dialog
        }

        // Initial population
        loadFoods();
        loadCategories();
    </script>
    <script src="../js/script.js"></script>
</body>
</html>
