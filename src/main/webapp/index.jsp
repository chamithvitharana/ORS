<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="images/logoblack.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/style.css">
    <title>Crave Resturant</title>
</head>

<style>
    .btn1 {
        margin-top: 10px;
        background-color: green;
        margin-left: 10px;
        border-radius: 15px;
        border: none;
        color: white;
        border: none;
        padding: 15px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .btn1:hover {
        background-color: gold;
        cursor: pointer;
    }

    .review-section {
        background: url("images/offer-background.jpg") center center/cover no-repeat;
        padding: 40px;

        margin-top: 40px;
    }

    .review-header {
        text-align: center;
        margin-bottom: 30px;
    }

    .review-header h2 {
        font-size: 2em;
        margin-bottom: 10px;
    }

    .review-header p {
        font-size: 1.1em;
        color: #666;
    }

    .review-input-container {
        margin-bottom: 30px;
        background: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .input-group {
        margin-bottom: 20px;
    }

    .input-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .input-group input[type="text"],
    .input-group textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 1em;
    }

    .rating {
        display: flex;
        align-items: center;
    }

    .rating input[type="radio"] {
        display: none;
    }

    .rating label {
        font-size: 1.5em;
        margin-right: 5px;
        cursor: pointer;
    }

    .btn-submit {
        background-color: #28a745;
        color: white;
        padding: 15px 20px;
        border: none;
        border-radius: 5px;
        font-size: 1em;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .btn-submit:hover {
        background-color: #218838;
    }


    .review-list {
        list-style-type: none;
        padding: 0;
    }

    .review-item {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    .review-item .review-header {
        display: flex;
        justify-content: space-between;
        margin-bottom: 10px;
        align-items: center;
    }

    .review-item .reviewer-name {
        font-weight: bold;
    }

    .review-item .review-date {
        font-size: 0.9em;
        color: #888;
    }

    .review-item .review-rating {
        font-size: 1.2em;
        color: #f5c518;
    }

    .review-item .review-content {
        font-size: 1em;
        color: #333;
    }

    .review-item .review-rating {
        display: flex;
    }

    .review-item .review-rating .star {
        color: #f5c518;
        margin-right: 2px;
    }
</style>

<!-- JSMail  -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@4/dist/email.min.js"></script>
<script type="text/javascript">
    (function() {
        // change this public key
        emailjs.init({
            publicKey: "SXXvWGNto-clac9CW",
        });
    })();
</script>

<body>
    <!-- header -->
    <header>
        <div id="navbar">
            <img src="images/logo1.png" alt="logo" id="logo" style="margin-top: 20px;">
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="#about-content">About</a></li>
                    <li><a href="#menu-section">Menu</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li id="user-link"><a href="login.jsp">Login</a></li>
                </ul>
            </nav>
        </div>
        <div class="content">
            <h1>Welcome to
                <span class="primary-text"> Crave</span> Restaurant
            </h1>
            <p><span class="primary-text">Crave</span> the Flavor, Savor the Moment.</p>

            <div class="row">

                <a href="reservation.jsp" class="btn btn-secondary ">Make a Reservation</a>

                <a href="order.jsp" class="btn1" style="margin-top: 10px; margin-left: 10px;">Order Now</a>

            </div>
        </div>
    </header>

    <div id="main-content">
        <!-- About Us -->
        <div class="container about-us-section">
            <div id="about-content">
                <div class="title">
                    <h2>The Crave Journey</h2>
                    <p>Over 5 Years of Culinary Excellence</p>
                </div>
                <div class="row about-row">
                    <div class="left-content">
                        <p class="highlight-text">
                            At Crave, our passion for food is the heart of everything we do.
                        </p>
                        <p>
                            With over 25 years of culinary experience, we’ve crafted a dining experience that celebrates the art of flavor. Our journey began with a simple idea: to bring people together through the love of great food, and today, that idea has grown into a beloved dining destination.
                        </p>
                        <p>
                            We believe that every meal should be an occasion, every bite a moment to savor. Our chefs blend tradition with innovation, using the finest ingredients to create dishes that are both comforting and exciting. From our signature recipes to our warm, inviting atmosphere, Crave is where you can come to enjoy the flavors you love, and discover new favorites.
                        </p>
                        <a href="#menu-section" class="btn btn-secondary about-btn">Explore Our Menu</a>
                    </div>
                    <div class="offset-8">
                        <img src="images/about_img2.webp" alt="About Crave" class="about-img" style="margin-top: -80px;">
                    </div>
                </div>
            </div>
        </div>
        <!-- About Us End -->

        <!-- Offer Start -->
        <div class="offer-section">
            <div class="offer-title">
                <h2>Exclusive Offers at Crave</h2>
                <p>Experience Authentic Sri Lankan Flavors</p>
            </div>
            <div class="offer-items">
                <div>
                    <img src="images/dish1.jpg" alt="Kottu Roti">
                    <div>
                        <h3>Kottu Roti</h3>
                        <p>Enjoy a hearty serving of our famous Kottu Roti, a delicious mix of chopped roti, vegetables, and your choice of meat, all seasoned with spices that define Sri Lankan street food.</p>
                        <p><span style="text-decoration: line-through;">Rs. 800.00</span><span class="primary-text span"> Rs. 650.00</span></p>
                    </div>
                </div>

                <div>
                    <img src="images/dish2.jpg" alt="Sri Lankan Crab Curry">
                    <div>
                        <h3>Sri Lankan Crab Curry</h3>
                        <p>Dive into the rich and spicy flavors of our signature Sri Lankan Crab Curry, featuring fresh crabs cooked in a fragrant blend of spices and coconut milk.</p>
                        <p><span style="text-decoration: line-through;">Rs. 2500.00</span><span class="primary-text span"> Rs. 2200.00</span></p>
                    </div>
                </div>

                <div>
                    <img src="images/dish3.jpg" alt="Hoppers (Appa)">
                    <div>
                        <h3>Hoppers (Appa)</h3>
                        <p>Treat yourself to a classic Sri Lankan breakfast with our perfectly crispy Hoppers, served with a variety of accompaniments including sambols and curries.</p>
                        <p><span style="text-decoration: line-through;">Rs. 400.00</span><span class="primary-text span"> Rs. 300.00</span></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Offer End -->

        <!-- Menu Start -->
        <div class="menu-section">
            <div class="container" id="menu-section">
                <div class="menu-title">
                    <h2>Our Special Menu</h2>
                    <p>Buy two, get the third for free</p>
                </div>

                <div class="menu-items">
                    <div class="menu-item-left" id="menu-item-left">
                        <%-- Left menu items --%>
                    </div>

                    <div class="menu-item-right" id="menu-item-right">
                        <%-- Right menu items --%>
                    </div>
                </div>
                <a href="order.jsp" class="btn" style="width: 10%; margin-bottom: 20px;">Order Now</a>
            </div>
        </div>
        <!-- Menu End -->

        <!-- Review Section -->
        <div class="review-section">
            <div class="review-header">
                <h2 style="color: #f7b831;">Customer Reviews</h2>
                <p>See what our customers have to say about their experience.</p>
            </div>

            <!-- Review Input -->
            <div class="review-input-container">
                <div class="input-group">
                    <label for="input-name">Your Name</label>
                    <input type="text" id="input-name" value="" placeholder="John Doe">
                </div>
                <div class="input-group">
                    <label for="input-rating">Rating</label>
                    <div class="rating" id="rating-stars">
                        <input type="radio" id="rating-1" name="rating" value="1">
                        <label for="rating-1" title="1 stars">⭐</label>
                        <input type="radio" id="rating-2" name="rating" value="2">
                        <label for="rating-2" title="2 stars">⭐</label>
                        <input type="radio" id="rating-3" name="rating" value="3">
                        <label for="rating-3" title="3 stars">⭐</label>
                        <input type="radio" id="rating-4" name="rating" value="4">
                        <label for="rating-4" title="4 stars">⭐</label>
                        <input type="radio" id="rating-5" name="rating" value="5">
                        <label for="rating-5" title="5 star">⭐</label>
                    </div>
                    <p id="selected-rating">Selected Rating: None</p>
                </div>
                <div class="input-group">
                    <label for="input-review">Your Review</label>
                    <textarea id="input-review" placeholder="Write your review here..." rows="5"></textarea>
                </div>
                <button class="btn-submit" onclick="submitReview()">Submit Review</button>
            </div>

            <div>
                <h2 style="color: #f7b831; margin-bottom: 10px;">Recent Reviews</h2>
                <ul class="review-list" id="review-list">
                    <!-- Reviews will be populated here js function is below -->
                </ul>
            </div>
        </div>

        <!-- dayTIME-Start -->
        <section id="dayTime">
            <div class="container">
                <div class="dayTime-items">
                    <div class="daytiema-item">
                        <img src="images/breckfastIcon.png" alt="breakfastIcon">
                        <h3>Breakfast</h3>
                        <p>from 8.00 Am to 10.00 Am</p>
                    </div>

                    <div class="daytiema-item">
                        <img src="images/lunchIcon.png" alt="lunchIcon">
                        <h3>Lunch</h3>
                        <p>from 12.00 Am to 3.00 Pm</p>
                    </div>

                    <div class="daytiema-item">
                        <img src="images/dinnerIcon.png" alt="dinnerIcon">
                        <h3>Dinner</h3>
                        <p>from 9.00 Pm to 1.00 Am</p>
                    </div>

                    <div class="daytiema-item">
                        <img src="images/dessertIcon.png" alt="dessertIcon">
                        <h3>Dessert</h3>
                        <p>All the day</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- dayTime-End -->

        <!-- Gallary-start -->
        <section id="gallary">
            <div class="container">
                <h2>Our Food Gallary</h2>
                <div class="gallary-items">
                    <img src="images/gallery1.jpeg" alt="1">
                    <img src="images/gallery2.jpeg" alt="2">
                    <img src="images/gallery3.jpeg" alt="3">
                    <img src="images/gallery4.jpeg" alt="4">
                    <img src="images/gallery5.jpeg" alt="5">
                    <img src="images/gallery6.jpeg" alt="6">
                </div>
            </div>
        </section>
        <!-- Galary-End -->

        <!-- contact-start -->
        <section id="contact">
            <div class="container">
                <div class="concact-content">
                    <div class="content-left">
                        <div>
                            <h3>ADDRESS</h3>
                            <p><i class="fa-solid fa-location-dot"></i>123 Food Street, Colombo, Sri Lanka</p>
                            <p><i class="fa-solid fa-phone"></i>+94 112 345 678</p>
                            <p><i class="fa-solid fa-envelope"></i>info@craverestaurant.lk</p>
                        </div>

                        <div>
                            <h3>WORK HOURSE</h3>
                            <p>Monday - Friday <span> 10.00 - 22.00</span></p>
                            <p>Saturday - Sunday <span> 10.00 - 23.00</span></p>
                        </div>
                        <div>
                            <h3>FOLLOW US</h3>
                            <a><i class="fa-brands fa-facebook"></i></a>
                            <a><i class="fa-brands fa-twitter"></i></a>
                            <a><i class="fa-brands fa-instagram"></i></a>
                        </div>
                    </div>
                    <div class="content-right">
                        <form id="contact-form">
                            <input type="text" id="name" placeholder="Your Name" required>
                            <input type="email" id="email" placeholder="Your Email" required>
                            <input type="text" id="subject" placeholder="Subject" required>
                            <textarea id="message" cols="30" rows="5" placeholder="Your Message" required></textarea>
                            <button class="btn" type="submit">Send Message</button>
                        </form>
                        <div id="form-response"></div>
                    </div>
                </div>
            </div>
        </section>
        <!-- contact-end -->
    </div>

    <!-- Footer Start -->
    <footer id="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-logo">
                    <img src="images/logo1.png" alt="Crave Logo">
                    <p>&copy; 2024 Crave Restaurant. All rights reserved.</p>
                </div>
                <div class="footer-links">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="#about-content">About</a></li>
                        <li><a href="#menu-section">Menu</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-contact">
                    <h3>Contact Us</h3>
                    <p><i class="fa-solid fa-location-dot"></i> 123 Food Street, Colombo, Sri Lanka</p>
                    <p><i class="fa-solid fa-phone"></i> +94 112 345 678</p>
                    <p><i class="fa-solid fa-envelope"></i> info@craverestaurant.lk</p>
                </div>
                <div class="footer-social">
                    <h3>Follow Us</h3>
                    <a href="https://www.facebook.com/CraveRestaurant" target="_blank"><i class="fa-brands fa-facebook"></i></a>
                    <a href="https://twitter.com/CraveRestaurant" target="_blank"><i class="fa-brands fa-twitter"></i></a>
                    <a href="https://www.instagram.com/CraveRestaurant" target="_blank"><i class="fa-brands fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer End -->

    <script>
        //    email function
        document.addEventListener('DOMContentLoaded', () => {
            const form = document.getElementById('contact-form');
            const responseDiv = document.getElementById('form-response');

            form.addEventListener('submit', function(event) {
                event.preventDefault(); // Prevent the default form submission

                // Get form data
                const name = document.getElementById('name').value;
                const email = document.getElementById('email').value;
                const subject = document.getElementById('subject').value;
                const message = document.getElementById('message').value;

                // Use EmailJS to send email   // change this serviceID and template ID
                emailjs.send('service_ifdwppd', 'template_tdsvtc4', {
                    name: name,
                    email: email,
                    subject: subject,
                    message: message
                })
                    .then((response) => {
                        console.log('Success:', response);
                        responseDiv.innerHTML = '<p>Thank you for your message! We will get back to you soon.!</p>';
                        responseDiv.style.color = 'green';
                        form.reset();
                    })
                    .catch((error) => {
                        console.error('Error:', error);
                        responseDiv.innerHTML = '<p>There was a problem sending your message. Please try again later.</p>';
                        responseDiv.style.color = 'red';
                    });
            });
        });

        document.addEventListener('DOMContentLoaded', (event) => {
            const stars = document.querySelectorAll('#rating-stars input');
            const selectedRatingText = document.getElementById('selected-rating');

            stars.forEach(star => {
                star.addEventListener('change', (event) => {
                    const rating = event.target.value;
                    selectedRatingText.textContent = 'Selected Rating: ' + rating + ' ' + '⭐'.repeat(rating);
                });
            });
        });

        document.addEventListener('DOMContentLoaded', function() {
            // Load existing reviews from the database
            loadMenuItems();
            loadReviews();
        });

        function submitReview() {
            var name = document.getElementById("input-name").value;
            var starCount = document.querySelector('#rating-stars input[name="rating"]:checked').value;
            var comment = document.getElementById("input-review").value;

            var reviewJson = JSON.stringify({
                "starCount": starCount,
                "comment": comment,
                "name": name
            });

            var ajax = new XMLHttpRequest();
            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status===200) {
                        alert("Review submitted successfully!");
                        loadReviews();
                    } else {
                        alert(ajax.responseText);
                    }
                }
            };
            ajax.open("POST", "/review/add", true);
            ajax.setRequestHeader("Content-Type", "application/json");
            ajax.send(reviewJson);
        }

        function loadReviews() {
            var ajax = new XMLHttpRequest();

            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status===200) {
                        var reviews = JSON.parse(ajax.responseText);

                        const reviewList = document.getElementById('review-list');
                        reviewList.innerHTML = '';
                        reviews.forEach(review => {
                            const li = document.createElement('li');
                            li.className = 'review-item';

                            const reviewHeader = document.createElement('div');
                            reviewHeader.className = 'review-header';

                            const reviewerName = document.createElement('span');
                            reviewerName.className = 'reviewer-name';
                            reviewerName.textContent = review.name;

                            const reviewDate = document.createElement('span');
                            reviewDate.className = 'review-date';
                            reviewDate.textContent = review.datetime;

                            const reviewRating = document.createElement('span');
                            reviewRating.className = 'review-rating';
                            reviewRating.textContent = '★'.repeat(review.starCount);

                            const reviewContent = document.createElement('p');
                            reviewContent.className = 'review-content';
                            reviewContent.textContent = review.comment;

                            // Append elements to the header
                            reviewHeader.appendChild(reviewerName);
                            reviewHeader.appendChild(reviewDate);
                            reviewHeader.appendChild(reviewRating);

                            // Append header and content to the list item
                            li.appendChild(reviewHeader);
                            li.appendChild(reviewContent);

                            reviewList.appendChild(li);
                        });
                    }
                }
            };
            ajax.open("GET", "/review/all", true);
            ajax.send();
        }

        const menuItems = [];

        function loadMenuItems() {
            var ajax = new XMLHttpRequest();

            ajax.onreadystatechange = function () {
                if(ajax.readyState === 4) {
                    if(ajax.status===200) {
                        var foodArray = JSON.parse(ajax.responseText);
                        menuItems.length = 0;
                        foodArray.forEach((item) => {
                            menuItems.push({
                                name: item.name,
                                price: item.price,
                                image: 'images/foodItems/' + item.imagePath,
                                category: item.categoryName
                            });
                        });
                        renderMenuItems();
                    }
                }
            };
            ajax.open("GET", "/food/all?isActive=" + encodeURIComponent(false), true);
            ajax.send();
        }

        function renderMenuItems() {
            const menuLeft = document.getElementById('menu-item-left');
            const menuRight = document.getElementById('menu-item-right');

            menuLeft.innerHTML = '';
            menuRight.innerHTML = '';

            var nextItemSide = -1;

            menuItems.forEach(item => {
                const menuItem = document.createElement('div');
                menuItem.className = 'menu-item';

                const img = document.createElement('img');
                img.src = item.image;
                img.alt = item.name;
                menuItem.appendChild(img);

                const name = document.createElement('h3');
                name.textContent = item.name + " ";

                const price = document.createElement("span");
                price.classList.add("primary-text", "span");
                price.textContent = " Rs. " + item.price;
                name.appendChild(price);

                const category = document.createElement('p');
                category.textContent = item.category;
                menuItem.appendChild(category);

                const dataWrapper = document.createElement("div");
                dataWrapper.appendChild(name);
                dataWrapper.appendChild(category);
                menuItem.appendChild(dataWrapper);

                if (nextItemSide === -1) {
                    menuLeft.appendChild(menuItem);
                    nextItemSide = 1;
                } else if (nextItemSide === 1) {
                    menuRight.appendChild(menuItem);
                    nextItemSide = -1;
                }
            });
        }
    </script>
    <script src="js/script.js"></script>
</body>
</html>
