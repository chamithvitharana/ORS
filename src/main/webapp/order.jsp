<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crave - Order Food</title>
    <link rel="icon" href="images/logoblack.png">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<style>
    /* Order Page Styles */
    .order-section {
        padding: 60px 20px;
        background-color: #f9f9f9;
        max-width: 1200px;
        margin: 0 auto;
    }

    .search-container {
        margin-bottom: 30px;
        text-align: center;
    }

    #search-input {
        width: 100%;
        max-width: 500px;
        padding: 10px;
        border-radius: 4px;
        border: 1px solid #ddd;
        font-size: 16px;
    }

    .category-filter {
        margin-bottom: 30px;
        text-align: center;
    }

    .category-filter select {
        width: 100%;
        max-width: 500px;
        padding: 10px;
        border-radius: 4px;
        border: 1px solid #ddd;
        font-size: 16px;
    }

    .order-section h3 {
        text-align: center;
        margin-bottom: 40px;
        font-size: 36px;
        font-weight: 600;
        color: #333;
    }

    .menu-container {
        display: flex;
        overflow-x: auto;
        padding: 10px 0;
        gap: 20px;
    }

    /* Order Page Styles Continued */
    .menu-item {
        padding: 10px;
        flex: 0 0 auto;
        width: 250px;
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
        margin: 10px;
    }

    .menu-item img {
        width: 100%;
        height: auto;
        display: block;
    }

    .menu-item h4 {
        font-size: 18px;
        font-weight: 600;
        color: #333;
        margin: 10px 0;
    }

    .menu-item .category {
        font-size: 14px;
        color: #999;
        padding: 0 10px;
    }

    .price {
        font-size: 16px;
        font-weight: 600;
        color: #000;
        padding: 10px;
    }

    .quantity-wrapper {
        display: flex;
        align-items: center;
        margin: 10px;
    }

    .quantity-input {
        width: 60px;
        text-align: center;
        font-size: 16px;
        margin: 0 10px;
    }

    .quantity-decrease,
    .quantity-increase {
        background-color: #f0f0f0;
        border: 1px solid #ddd;
        border-radius: 4px;
        padding: 5px 10px;
        cursor: pointer;
        font-size: 18px;
    }

    .add-to-cart-btn {
        background-color: #28a745;
        color: #fff;
        border: none;
        padding: 10px;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        margin: 10px;
    }

    .add-to-cart-btn:hover {
        background-color: #218838;
    }

    .load-more-btn {
        display: block;
        width: 100%;
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 20px;
    }

    .load-more-btn:hover {
        background-color: #0056b3;
    }

    /* Cart Summary Styles */
    .cart-summary {
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        margin-top: 30px;
    }

    .cart-items {
        margin-bottom: 20px;
    }

    .cart-item {
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-bottom: 1px solid #ddd;
        padding: 10px 0;
    }

    .cart-item h5 {
        font-size: 18px;
        font-weight: 500;
        color: #333;
    }

    .cart-item .quantity {
        font-size: 16px;
        color: #777;
    }

    .cart-item .remove-btn {
        background: none;
        border: none;
        cursor: pointer;
        color: #ff0000;
        font-size: 18px;
    }

    .total-price {
        font-size: 20px;
        font-weight: 600;
        color: #333;
        margin-bottom: 20px;
    }

    /* Cart Summary Styles */
    .cart-summary {
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        margin-top: 30px;
    }

    .cart-summary h4 {
        margin-top: 20px;

        color: #333;
        margin-bottom: 20px;
    }

    .cart-items {
        margin-bottom: 20px;
    }

    .cart-item {
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-bottom: 1px solid #ddd;
        padding: 10px 0;
    }

    .cart-item h5 {
        font-size: 18px;
        font-weight: 500;
        color: #333;
    }

    .cart-item .quantity {
        font-size: 16px;
        color: #777;
    }

    .cart-item .remove-btn {
        background: none;
        border: none;
        cursor: pointer;
        color: #ff0000;
        font-size: 18px;
    }

    .total-price {
        font-size: 20px;
        font-weight: 600;
        color: #333;
        margin-bottom: 20px;
    }

    /* Delivery & Payment Styles */
    .delivery-payment {
        background-color: #f9f9f9;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    .delivery-address {
        margin-bottom: 20px;
    }

    .delivery-address label {
        display: block;
        font-size: 16px;
        font-weight: 500;
        color: #333;
        margin-bottom: 5px;
    }

    .delivery-address input[type="text"] {
        width: calc(100% - 22px);
        padding: 10px;
        border-radius: 4px;
        border: 1px solid #ddd;
        font-size: 16px;
        margin-bottom: 10px;
    }

    .payment-method {
        margin-bottom: 20px;
    }

    .payment-method label {
        display: block;
        font-size: 16px;
        color: #333;
        margin-bottom: 5px;
    }

    .payment-method input[type="radio"] {
        margin-right: 10px;
    }

    .place-order-btn {
        background-color: #28a745;
        color: #fff;
        border: none;
        padding: 10px;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 10px;
        display: block;
        width: 100%;
        text-align: center;
    }

    .place-order-btn:hover {
        background-color: #218838;
    }

    @media (max-width: 768px) {
        .menu-item {
            width: 200px;
        }
    }

    @media (max-width: 480px) {
        .menu-item {
            width: 100%;
        }
    }

    /* Footer Styles */
    footer {
        background-color: #333;
        color: #fff;
        padding: 20px 0;
    }

    .footer-content {
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
    }

    .footer-logo {
        flex: 1;
        text-align: center;
    }

    .footer-logo img {
        max-width: 150px;
    }

    .footer-links,
    .footer-contact,
    .footer-social {
        flex: 1;
        margin: 0 20px;
    }

    .footer-links ul {
        list-style-type: none;
        padding: 0;
    }

    .footer-links li {
        margin: 10px 0;
    }

    .footer-links a {
        color: #fff;
        text-decoration: none;
    }

    .footer-contact p,
    .footer-social a {
        margin: 5px 0;
    }

    .footer-social a {
        margin: 0 10px;
        color: #fff;
        text-decoration: none;
    }
</style>
<body>
    <!-- header -->
    <header style="background: url('images/order1.jpg') center center/cover no-repeat;">
        <div id="navbar">
            <img src="images/logo1.png" alt="logo" id="logo" style="margin-top: 20px;">
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="index.jsp#about-content">About</a></li>
                    <li><a href="index.jsp#menu-section">Menu</a></li>
                    <li><a href="index.jsp#contact">Contact</a></li>
                    <li id="user-link"><a href="login.jsp">Login</a></li>
                </ul>
            </nav>
        </div>
        <div class="content">
            <h1>Welcome to
                <span class="primary-text"> Crave</span> Orders
            </h1>
            <p><span class="primary-text">Order</span> Your Favorite Food.</p>
            <p>Enjoy our delicious meals delivered straight to your door.</p>
            <a href="order.jsp#order-section" class="btn btn-secondary ">Order Now</a>
        </div>
    </header>

    <!-- Order Section Start -->
    <section class="order-section" id="order-section">
        <h3>Our Menu</h3>
        <div class="category-filter">
            <label for="category-filter" style="font-size: larger;">Search :: </label>
            <select id="category-filter" onchange="filterByCategory();">
                <option value="0">All Categories</option>
            </select>
        </div>
        <div class="menu-container" id="menu-container">
            <!-- Menu Items Will Be Injected Here -->
        </div>
        <!-- <button class="load-more-btn" id="load-more-btn">Load More</button> -->


        <!-- Cart Summary Section -->
        <div class="cart-summary" id="cart-summary">
            <h3>Cart Summary</h3>
            <div class="cart-items" id="cart-items">
                <!-- Cart Items Will Be Injected Here -->
            </div>
            <div class="total-price" id="total-price">Total: LKR 0.00</div>
            <div class="delivery-payment">
                <h4 style="margin-bottom: 10px; margin-top: 10px;">Order Type</h4>
                <div class="order-type">
                    <label><input type="radio" name="order-type" value="DELIVERY"> Delivery</label>
                    <label><input type="radio" name="order-type" value="DINE_IN" checked> Dine In</label>
                    <label><input type="radio" name="order-type" value="TAKE_AWAY"> Take Away</label>
                </div>
                <h4>Delivery Details</h4>
                <div class="delivery-address" id="delivery-address">
                    <label for="delivery-address-line1">Address Line 1:</label>
                    <input type="text" id="delivery-address-line1" placeholder="Enter address line 1">
                    <label for="delivery-address-line2">Address Line 2:</label>
                    <input type="text" id="delivery-address-line2" placeholder="Enter address line 2 (optional)">
                </div>
                <h4>Payment Method</h4>
                <div class="payment-method">
                    <label><input type="radio" name="payment-method" value="CARD" checked> Card</label>
                    <label><input type="radio" name="payment-method" value="CASH"> Cash on Delivery</label>
                </div>
                <button class="place-order-btn" id="place-order-btn">Place Order</button>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="footer-content">
            <div class="footer-logo">
                <img src="images/logo1.png" alt="Crave Logo">
            </div>
            <div class="footer-links">
                <h4>Links</h4>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="index.jsp#about-content">About</a></li>
                    <li><a href="index.jsp#menu-section">Menu</a></li>
                    <li><a href="index.jsp#contact">Contact</a></li>
                </ul>
            </div>
            <div class="footer-contact">
                <h4>Contact Us</h4>
                <p>Email: info@crave.com</p>
                <p>Phone: +94 123 4567</p>
            </div>
            <div class="footer-social">
                <h4>Follow Us</h4>
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </footer>

    <script>
        // Example menu items with categories
        const menuItems = [];
        const categories = [];
        const cart = [];
        let cartTotal = 0;

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
                        renderCategories();
                    }
                }
            };
            ajax.open("GET", "/food/all/category", true);
            ajax.send();
        }

        function renderCategories() {
            const select = document.getElementById('category-filter');
            select.innerHTML = '<option value="0" selected>All Categories<\/option>';
            categories.forEach(category => {
                const option = document.createElement('option');
                option.value = category.name;
                option.textContent = category.name;
                select.appendChild(option);
            });
        }

        function loadMenuItems() {
            var ajax = new XMLHttpRequest();

            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status===200) {
                        var foodArray = JSON.parse(ajax.responseText);
                        menuItems.length = 0;
                        foodArray.forEach((item) => {
                            menuItems.push({
                                id: item.id,
                                name: item.name,
                                price: item.price,
                                image: 'images/foodItems/' + item.imagePath,
                                category: item.categoryName
                            });
                        });
                        renderMenuItems(menuItems);
                    }
                }
            };
            ajax.open("GET", "/food/all?isActive=" + encodeURIComponent(false), true);
            ajax.send();
        }

        function renderMenuItems(items) {
            const menuContainer = document.getElementById('menu-container');
            menuContainer.innerHTML = '';
            items.forEach(item => {
                const menuItem = document.createElement('div');
                menuItem.className = 'menu-item';

                const img = document.createElement('img');
                img.src = item.image;
                img.alt = item.name;
                menuItem.appendChild(img);

                const name = document.createElement('h4');
                name.textContent = item.name;
                menuItem.appendChild(name);

                const category = document.createElement('p');
                category.className = 'category';
                category.textContent = item.category;
                menuItem.appendChild(category);

                const price = document.createElement('div');
                price.className = 'price';
                price.textContent = "LKR " + item.price;
                menuItem.appendChild(price);

                const quantityWrapper = document.createElement('div');
                quantityWrapper.className = 'quantity-wrapper';

                const decreaseButton = document.createElement('button');
                decreaseButton.className = 'quantity-decrease';
                decreaseButton.textContent = '-';
                decreaseButton.onclick = () => changeQuantity(item.id, -1);
                quantityWrapper.appendChild(decreaseButton);

                const quantityInput = document.createElement('input');
                quantityInput.type = 'number';
                quantityInput.className = 'quantity-input';
                quantityInput.id = "item-"+ item.id +"-quantity";
                quantityInput.value = 0;
                quantityInput.readOnly = true;
                quantityWrapper.appendChild(quantityInput);

                const increaseButton = document.createElement('button');
                increaseButton.className = 'quantity-increase';
                increaseButton.textContent = '+';
                increaseButton.onclick = () => changeQuantity(item.id, 1);
                quantityWrapper.appendChild(increaseButton);

                menuItem.appendChild(quantityWrapper);

                const addToCartButton = document.createElement('button');
                addToCartButton.className = 'add-to-cart-btn';
                addToCartButton.textContent = 'Add to Cart';
                addToCartButton.onclick = () => addToCart(item.id);
                menuItem.appendChild(addToCartButton);

                menuContainer.appendChild(menuItem);
            });
        }

        function filterByCategory() {
            const selectedCategory = document.getElementById('category-filter').value;

            if(selectedCategory==0) {
                renderMenuItems(menuItems);
            } else {
                const filteredItems = menuItems.filter(item => selectedCategory === '' || item.category == selectedCategory);
                renderMenuItems(filteredItems);
            }
        }

        function changeQuantity(itemId, delta) {
            const quantityInput = document.getElementById("item-"+ itemId +"-quantity");
            let currentQuantity = parseInt(quantityInput.value) || 0;
            currentQuantity = Math.max(0, currentQuantity + delta);
            quantityInput.value = currentQuantity;
        }

        function addToCart(itemId) {
            const item = menuItems.find(item => item.id === itemId);
            const quantityInput = document.getElementById("item-"+ itemId +"-quantity");
            const quantity = parseInt(quantityInput.value) || 0;
            if (quantity > 0) {
                const existingItemIndex = cart.findIndex(cartItem => cartItem.id === itemId);
                if (existingItemIndex > -1) {
                    cart[existingItemIndex].quantity += quantity;
                } else {
                    cart.push({
                        id: item.id,
                        name: item.name,
                        price: item.price,
                        quantity
                    });
                }
                cartTotal += item.price * quantity;
                updateCart();
            }
        }

        function updateCart() {
            const cartItemsContainer = document.getElementById('cart-items');
            const totalPriceElement = document.getElementById('total-price');
            cartItemsContainer.innerHTML = '';
            cart.forEach(item => {
                const cartItem = document.createElement('div');
                cartItem.className = 'cart-item';

                const nameElement = document.createElement('h5');
                nameElement.textContent = item.name;
                cartItem.appendChild(nameElement);

                const quantityDiv = document.createElement('div');
                quantityDiv.className = 'quantity';
                quantityDiv.textContent = "Quantity: "+ item.quantity;
                cartItem.appendChild(quantityDiv);

                const priceDiv = document.createElement('div');
                priceDiv.className = 'price';
                priceDiv.textContent = "LKR "+ (item.price * item.quantity);
                cartItem.appendChild(priceDiv);

                const removeButton = document.createElement('button');
                removeButton.className = 'remove-btn';

                const trashIcon = document.createElement('i');
                trashIcon.className = 'fas fa-trash';
                removeButton.appendChild(trashIcon);

                removeButton.onclick = function() {
                    removeFromCart(item.id);
                };

                cartItem.appendChild(removeButton);

                cartItemsContainer.appendChild(cartItem);
            });
            totalPriceElement.textContent = "Total: LKR "+ cartTotal;
        }

        function removeFromCart(itemId) {
            const itemIndex = cart.findIndex(item => item.id === itemId);
            if (itemIndex > -1) {
                cartTotal -= cart[itemIndex].price * cart[itemIndex].quantity;
                cart.splice(itemIndex, 1);
                updateCart();
            }
        }

        document.getElementById('place-order-btn').addEventListener('click', function() {
            // Retrieve the values from the form
            var orderType = document.querySelector('input[name="order-type"]:checked')?.value || '';
            var paymentMethod = document.querySelector('input[name="payment-method"]:checked')?.value || '';
            var line1 = document.getElementById("delivery-address-line1");
            var line2 = document.getElementById("delivery-address-line2");

            if(line1.value==="") {
                alert("Please enter your address.");
                return;
            } else if(cart.length==0) {
                alert("Please add foods to card");
                return;
            }

            // Generate food items array
            var foodItems = cart.map(item => ({
                foodItemId: item.id,
                quantity: item.quantity
            }));

            // Save user address
            var ajax = new XMLHttpRequest();
            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status!==200) {
                        alert(ajax.responseText);
                    }
                }
            };
            ajax.open("POST", "/user/update/address", true);
            ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            ajax.send("line1=" + encodeURIComponent(line1.value) + "&line2=" + encodeURIComponent(line2.value));

            // Convert arrays to JSON strings for display
            var foodItemsString = JSON.stringify({
                "orderType": orderType,
                "paymentMethod": paymentMethod,
                "foodItems": foodItems
            });

            var ajax2 = new XMLHttpRequest();
            ajax2.onreadystatechange = function () {
                if(ajax2.readyState === 4) {
                    if(ajax2.status===200) {
                        alert("Order placed successfully!");
                        cart.length = 0;
                        cartTotal = 0;
                    } else {
                        alert(ajax2.responseText);
                    }
                }
            };
            ajax2.open("POST", "/order/add", true);
            ajax2.setRequestHeader("Content-Type", "application/json");
            ajax2.send(foodItemsString);
        });

        loadCategories();
        loadMenuItems();
    </script>
    <script src="js/script.js"></script>
</body>
</html>
