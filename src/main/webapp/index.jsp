<%@ page import="com.cm.trip_app.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!-- Bootstrap CSS -->
    <link
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-9aIt2nRpC12Yz7HX3k5Knujs4e3LgR6ekf8EzPEPZyJfV/J8B10VnxPbA5jzmR9p"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./resources/css/style.css" />
</head>

<body>
<!-- Navbar -->
<%
    // Check if the user is logged in
    User username = (User)session.getAttribute("user");
    boolean isLoggedIn = (username != null);
%>
<div id="nav">
    <div id="logo">
        <span>experience</span>
        <h4>MOUNT KAILASH</h4>
    </div>
    <div id="nav-home">
        <% if (isLoggedIn) { %>
        <h4><a href="./BookingPage.jsp">Trip Booking</a></h4>
        <h4><a href="./viewBookings">Your Bookings</a></h4>
        <h4><a href="./about-us.jsp">About Us</a></h4>
        <h4><a href="./contact-us.jsp">Contact Us</a></h4>
        <h4><a href="./logout">logout</a></h4>
        <% } else { %>
        <h4><a href="./about-us.jsp">About Us</a></h4>
        <h4><a href="./contact-us.jsp">Contact Us</a></h4>
        <h4><a href="./register.jsp">Register</a></h4>
        <h4><a href="./login.jsp">Login</a></h4>
        <% } %>
    </div>

    <div id="nav-search">
        <i class="fa-solid fa-magnifying-glass" id="search"></i>
        <i class="fa-solid fa-heart"></i>
        <i class="fa-solid fa-mountain-sun"></i>
    </div>
</div>
<video
        class="vid1"
        autoplay
        loop
        muted
        src="https://trekmunk.b-cdn.net/home.webm"
></video>
<div id="page1">
    <div id="navpage">
        <h4>27°59'17.0"N 86°55'29.9"E</h4>
        <h2>WELCOME TO HIMALAYAS</h2>
        <div id="btn">
            <button class="btn1">FIXED DEPARTURES</button>
            <button class="btn1">ADVENTURES</button>
            <button class="btn1">CONTACT US</button>
        </div>
    </div>
</div>

<%--<div id="page2">--%>
<%--    <h2>LIVE BY ADVENTURE</h2>--%>
<%--    <div id="page2-img">--%>
<%--        <div class="img">--%>
<%--            <h3 class="img1-h3">Treks</h3>--%>
<%--            <img--%>
<%--                    src="https://www.trekmunk.com/uploads/systemuploads/Fixed_Departures_2023_ver_1677156509055.jpg"--%>
<%--                    alt=""--%>
<%--            />--%>
<%--        </div>--%>
<%--        <div class="img">--%>
<%--            <h3 class="img1-h3">Expeditions</h3>--%>
<%--            <img--%>
<%--                    src="https://www.trekmunk.com/uploads/systemuploads/Expeditions%20(1)_1585228924799.jpg"--%>
<%--                    alt=""--%>
<%--            />--%>
<%--        </div>--%>
<%--        <div class="img">--%>
<%--            <h3 class="img3-h3">Backpacking Trips</h3>--%>
<%--            <img--%>
<%--                    src="https://www.trekmunk.com/uploads/systemuploads/backpacking-3_1585238672114.jpg"--%>
<%--                    alt=""--%>
<%--            />--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <button class="show">Show All Adventures</button>--%>
<%--</div>--%>

<%--<div id="page3">--%>
<%--    <h3 class="blogs">Blogs</h3>--%>
<%--    <div id="bigbox">--%>
<%--        <div class="box">--%>
<%--            <img--%>
<%--                    src="https://www.trekmunk.com/uploads/systemuploads/steps-to-make-trekking-safer_1596439830395.jpg"--%>
<%--                    alt=""--%>
<%--            />--%>
<%--            <h3>Steps to make Trekking safter during COVID 19</h3>--%>
<%--            <h4>--%>
<%--                Ben Huberman quoted- "The COVID-19 pandemic has brought entire...--%>
<%--            </h4>--%>
<%--        </div>--%>
<%--        <div class="box">--%>
<%--            <img--%>
<%--                    src="https://www.trekmunk.com/uploads/systemuploads/trekking-safest-form-of-travel-during-covid_1596440503533.jpg"--%>
<%--                    alt=""--%>
<%--            />--%>
<%--            <h3>Why Trekking is the Safest form of Travel...</h3>--%>
<%--            <h4>--%>
<%--                Now who would want to deny travelling to the ravishing beauty of--%>
<%--                the...--%>
<%--            </h4>--%>
<%--        </div>--%>
<%--        <div class="box">--%>
<%--            <img--%>
<%--                    src="https://www.trekmunk.com/uploads/systemuploads/best-beginner-treks-1_1596954122665.jpg"--%>
<%--                    alt=""--%>
<%--            />--%>
<%--            <h3>Travelling Safe 101: Opt for Offbeat and...</h3>--%>
<%--            <h4>--%>
<%--                COVID-19 has left us all weary. With the country shutting down...--%>
<%--            </h4>--%>
<%--        </div>--%>
<%--        <div class="box">--%>
<%--            <img--%>
<%--                    src="https://www.trekmunk.com/uploads/systemuploads/staying-healthy-1_1585537746967.jpg"--%>
<%--                    alt=""--%>
<%--            />--%>
<%--            <h3>The Guide To Staying Healthy At High Altitud...</h3>--%>
<%--            <h4>--%>
<%--                Excited about your upcoming Himalayan trek? Don't trek the thre...--%>
<%--            </h4>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div id="page4">--%>
<%--    <h3>REVIEW</h3>--%>
<%--    <div id="review">--%>
<%--        <div class="view">--%>
<%--            <video--%>
<%--                    class="vid"--%>
<%--                    autoplay--%>
<%--                    muted--%>
<%--                    loop--%>
<%--                    src="https://trekmunk.b-cdn.net/review_panel_one.mp4"--%>
<%--            ></video>--%>
<%--        </div>--%>
<%--        <div class="view">--%>
<%--            <h3>About</h3>--%>
<%--            <p>--%>
<%--                Gangs Rin-po-che is the Tibetan name of Mt. Kailash which is--%>
<%--                considered as a sacred place in four regions: Bon Religion,--%>
<%--                Buddhism, Hinduism and Jainism. Every year, thousands make a--%>
<%--                pilgrimage to Kailash for the faith they believed that--%>
<%--                circumambulating Kailash by foot will bring good luck and clear the--%>
<%--                sins. The trek begins and ends at Darchen which is at 4,575m--%>
<%--                elevation.Mount Kailash trekking is one of the most challenging and--%>
<%--                sacred treks in the world. The trek is widely known as Mt. Kailash--%>
<%--                kora which is scared in four religions, Bon Religion, Buddhism,--%>
<%--                Hinduism and Jainism. What’s more, this holy mountain is also the--%>
<%--                headstream of four famous rivers in Asia: Indus River (also called--%>
<%--                Shiquan River in China), Sutlej River (a major tributary of the--%>
<%--                Indus River), Yarlungzangpo River (also called Brahmaputra River)--%>
<%--                and Ganges River. Every year, thousands make a pilgrimage to Kailash--%>
<%--                for the faith they believed that circumambulating this holy mountain--%>
<%--                by foot will bring good luck.--%>
<%--            </p>--%>
<%--            <button class="show">Read more</button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div id="page5">--%>
<%--    <div id="page5-1">--%>
<%--        <button class="show1">See more</button>--%>
<%--    </div>--%>
<%--    <div id="page5-2">--%>
<%--        <p>--%>
<%--            Trekmunk is one of the best trekking companies in India, and firmly--%>
<%--            believes in the beauty of personalized and custom-made adventures.--%>
<%--            Primarily an adventure company, Trekmunk aims to discard the notion of--%>
<%--            packaged trips and is on the way to revolutionize trekking in India.--%>
<%--            With well-experienced trek leaders and expert guides, we offer you an--%>
<%--            extensive adventure platter, consisting of the best treks in India.--%>
<%--            Our travel experts also help you customize and frame your trip--%>
<%--            itineraries as per your preference. You also get a first-hand--%>
<%--            experience of planning your own trip instead of relying on a travel--%>
<%--            agent. Over the years, we have had the privilege of having led over--%>
<%--            thousands of trekkers across the country. Book trekking tours with us,--%>
<%--            and learn how to be a proper alpinist. If you’re sick of the same old--%>
<%--            trekking packages in India, contact us for an adventure that’ll remain--%>
<%--            etched in your memory forever. Amongst the best trek organizers in--%>
<%--            India, we also know how to pay back to the society - check our ‘Trek--%>
<%--            For A Cause’ page for more. Book your hiking tours and backpacking--%>
<%--            trips with Trekmunk, and rid yourselves of the monotony of packaged--%>
<%--            trips. Pick from a comprehensive list of treks in India, customize it--%>
<%--            as per your taste, and bingo!--%>
<%--        </p>--%>
<%--        <br />--%>
<%--        <p>--%>
<%--            if you’re sick of the same old trekking packages in India, contact us--%>
<%--            for an adventure that’ll remain etched in your memory forever. Amongst--%>
<%--            the best trek organizers in India, we also know how to pay back to the--%>
<%--            society - check our ‘Trek For A Cause’ page for more. Book your hiking--%>
<%--            tours and backpacking trips with Trekmunk, and rid yourselves of the--%>
<%--            monotony of packaged trips. Pick from a comprehensive list of treks in--%>
<%--            India, customize it as per your taste, and bingo!--%>
<%--        </p>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div id="page6">--%>
<%--    <div id="page6-1">--%>
<%--        <p>--%>
<%--            The popular trek are :<span>  Brahmatal Trek, Sandakphu Trek, Pin Bhaba Pass--%>
<%--          Trek, Har Ki Dun Trek, Buran Ghati Trek, Audens Col Trek, Pin Parvati--%>
<%--          Trek, Bhrigu Lake Trek, Markha Valley Trek, Snow Leopard Trek, Dayara--%>
<%--          Bugyal Trek, Bara Bhangal Trek, Pangarchulla Trek, Beas Kund Trek, Bali--%>
<%--          Pass Trek, Kang Yatse Trek, Kuari Pass Trek, Chandrashila Trek, Gaumukh--%>
<%--          Tapovan Trek, Deo Tibba Trek, Hampta Pass Trek, Sham Valley Trek,--%>
<%--          Kedartal Trek, Panpatia Col Trek, Stok Kangri Trek, Goechala Trek,--%>
<%--          Parang La Trek, Tarsar Marsar Trek, Mentok Kangri Expedition, Valley Of--%>
<%--          Flowers Trek</span>--%>
<%--        </p>--%>
<%--    </div>--%>
<%--    <div id="page6-2">--%>
<%--        <div id="foot">--%>
<%--            <h3>Company</h3>--%>
<%--            <h3>Legals</h3>--%>
<%--            <h3>Destination</h3>--%>
<%--            <h3>Treks by Month</h3>--%>
<%--            <h3>Contact</h3>--%>
<%--        </div>--%>
<%--        <div id="foot1">--%>
<%--            <p>Chandu Pvt Ltd. &copy; Copyright All Right Reserved. Developed and maintained by Chandu Softwares Pvt Ltd</p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <img src="https://trekmunk.b-cdn.net/Footer.webp" alt="">--%>
<%--</div>--%>

<!-- Bootstrap JS and jQuery -->
<script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha384-KyZXEJ6K2M7BWR3D9WZK7n8wpFt6ePRhrVxzV9OlQREeFhqcqVSKrfAkD3tkTSTy"
        crossorigin="anonymous"
></script>
<script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
        integrity="sha384-pzjw8f+ua7Kw1TIq0A4cmF8w2R1v8OAMw27l9i7de3dDLOJx6rE4CZ8hV4tR8m9a5"
        crossorigin="anonymous"
></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"
        integrity="sha512-16esztaSRplJROstbIIdwX3N97V1+pZvV33ABoG1H2OyTttBxEGkTsoIVsiP1iaTtM8b3+hu2kB6pQ4Clr5yug=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"
></script>
<script src="./resources/js/script.js"></script>
</body>
</html>
