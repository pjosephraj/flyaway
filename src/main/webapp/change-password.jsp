<%@ page import="com.example.flyaway.classes.StaticTexts" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    StaticTexts sts = new StaticTexts();
    String username = (String) session.getAttribute(sts.username);
    session.setAttribute(sts.username, username);
    if (username == null) {
        response.sendRedirect( sts.jspLogin + "?errmsg=cp");
    } else if (!username.equalsIgnoreCase(sts.adminUsername)) {
        response.sendRedirect(sts.jspSearchFlights);
    }
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="parts/head.jsp"%>
    <title>FlyAway Booking</title>
</head>

<body>
<%@include file="parts/header.jsp" %>
<div class="container">
    <main class="box-wrapper">
        <div class="box-container">
            <div class="box-title">
                Change Password
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
<%@ include file="parts/footer.jsp" %>
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