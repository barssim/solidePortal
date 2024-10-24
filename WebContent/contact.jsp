<!DOCTYPE html>
<html lang="de">
<head>
<!--common core-->
<%@include file="commonHead.jsp"%>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Website Title</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        .footer-content {
            background-color: #2c3e50;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        .footer-content nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
        }
        .footer-content nav a:hover {
            text-decoration: underline;
        }
        .contact-info {
            margin-top: 15px;
        }
        .contact-info h4 {
            margin: 0 0 10px;
        }
    </style>
</head>
<body>

<h1>Welcome to Solide Portal</h1>

<footer>
    <div class="footer-content">
        <p>&copy; 2024 Solide. All rights reserved.</p>
        <nav>
            <a href="privacy-policy.html">Privacy Policy</a> |
            <a href="terms-of-service.html">Terms of Service</a> |
            <a href="contact.html">Contact Us</a>
        </nav>
        <div class="contact-info">
            <h4>Contact Us</h4>
            <p><strong>Email:</strong> <a href="mailto:info@yourcompany.com">info@yourcompany.com</a></p>
            <p><strong>Phone:</strong> <a href="tel:+1234567890">+1 (234) 567-890</a></p>
            <p><strong>Address:</strong> 123 Your Street, Your City, Your State, 12345</p>
        </div>
    </div>
</footer>

</body>
</html>
