<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FlyAway Booking</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <header>
        <a class="logo" href="index.jsp">
            <img src="assets/images/logo.svg" alt="FlyAway Logo">
            <span>FlyAway</span>
        </a>
    </header>
    <div class="container">
        <main class="box-wrapper">
            <div class="box-container">
                <div class="box-title">
                    Admin Login
                </div>
                <form action="login" method="post">
                    <div class="form-control">
                        <label class="required" for="username">Email</label>
                        <input type="email" id="username" name="username" placeholder="Enter Email">
                    </div>
                    <div class="form-control">
                        <label class="required" for="password">Password</label>
                        <input type="password" id="password" name="password" placeholder="Enter Password">
                    </div>
                    <div class="form-message form-message--error">
                        Email/Password is invalid!
                    </div>
                    <div class="form-btns">
                        <button class="btn w-100" type="submit">Login</button>
                    </div>
                </form>
            </div>
        </main>
    </div>
    <script src="assets/scripts/init-main.js"></script>
    <script>
        const form = document.querySelector('form');
        const loginBtn = form.querySelector('.btn[type="submit"]');
        const emailInput = form.querySelector('#username');
        const passwordInput = form.querySelector('#password');
        loginBtn.classList.add('disabled');

        emailInput.addEventListener('input', validation);
        passwordInput.addEventListener('input', validation);

        function validation() {
            if(emailInput.value && passwordInput.value) {
                loginBtn.classList.remove('disabled');
            } else {
                loginBtn.classList.add('disabled');
            }
        }

    </script>
</body>

</html>