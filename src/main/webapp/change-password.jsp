<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String username = (String) request.getAttribute("username");

    if(username == null) {
        response.sendRedirect("login.jsp?errmsg=cp");
    }else if (!username.equalsIgnoreCase("admin@flyaway.com")) {
        response.sendRedirect("search-flights.jsp");
    }
%>
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
<%@include file="parts/header.jsp"%>
<div class="container">
    <main class="box-wrapper">
        <div class="box-container">
            <div class="box-title">
                Change Password <%= username %>
            </div>
            <form action="#">
                <div class="form-control">
                    <label class="required" for="new-password">New Password</label>
                    <input type="password" id="new-password" placeholder="Enter New Password">
                </div>
                <div class="form-control">
                    <label class="required" for="repeat-password">Repeat Password</label>
                    <input type="password" id="repeat-password" placeholder="Enter Repeat Password">
                </div>
                <div class="form-message form-message--error">
                    Password Mismatch!
                </div>
                <div class="form-btns">
                    <button class="btn w-100" type="submit">Submit</button>
                </div>
            </form>
        </div>
    </main>
</div>
<script src="assets/scripts/init-main.js"></script>
<script>
  const form = document.querySelector('form');
  const submitBtn = form.querySelector('.btn[type="submit"]');
  const newPassword = form.querySelector('#new-password');
  const repeatPassword = form.querySelector('#repeat-password');
  const formMsg = form.querySelector('.form-message');
  submitBtn.classList.add('disabled');

  newPassword.addEventListener('input', validationBtn);
  repeatPassword.addEventListener('input', validationBtn);

  newPassword.addEventListener('blur', validation);
  repeatPassword.addEventListener('blur', validation);

  function validationBtn() {
    if (newPassword.value && repeatPassword.value && (newPassword.value == repeatPassword.value)) {
      submitBtn.classList.remove('disabled');
      formMsg.classList.remove('active');
    } else {
      submitBtn.classList.add('disabled');
    }
  }

  function validation() {
    if (newPassword.value && repeatPassword.value && (newPassword.value == repeatPassword.value)) {
      formMsg.classList.remove('active');
    } else if (newPassword.value && repeatPassword.value) {
      formMsg.classList.add('active');
    }
  }

</script>
</body>

</html>