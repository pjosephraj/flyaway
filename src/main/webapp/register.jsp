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
    <style>
      .form-control {
        width: 46%;
      }

      form {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
      }

      .box-container {
        width: 600px;
      }

      @media screen and (max-width:530px) {
        .form-control{
          width: 100%;
        }
      }
    </style>
</head>

<body>
<%@include file="parts/header.jsp"%>
    <div class="container">
        <main class="box-wrapper">
            <div class="box-container">
                <div class="box-title">
                    Register
                </div>
                <form action="#">
                    <div class="form-control">
                        <label class="required" for="fullname">Fullname</label>
                        <input type="text" id="fullname" name="fullname" placeholder="Enter Fullname" required>
                    </div>
                    <div class="form-control">
                        <label class="required" for="username">Email</label>
                        <input type="email" id="username" name="username" placeholder="Enter Email" required>
                    </div>
                    <div class="form-control">
                        <label class="required" for="password">Password</label>
                        <input type="password" id="password" name="password" placeholder="Enter Password" required>
                    </div>
                    <div class="form-control">
                        <label class="required" for="repeat-password">Email</label>
                        <input type="password" id="repeat-password" name="repeatPassword" placeholder="Enter Repeat Password" required>
                    </div>
                    <div class="form-control">
                        <label class="required" for="age">Age</label>
                        <input type="number" id="age" name="age" placeholder="Enter Age" required>
                    </div>
                    <div class="form-control">
                        <label class="required" for="mobile">Mobile</label>
                        <input type="text" id="mobile" name="mobile" placeholder="Enter Mobile Number" maxlength="10" required>
                    </div>
                    <div class="form-control">
                        <label class="required" for="identity-type">Identity Type</label>
                        <select name="identityType" id="identity-type">
                            <option value="aadhaar">Aadhaar</option>
                            <option value="ssn">SSN</option>
                            <option value="passport">Passport</option>
                            <option value="voterid">Voter Id</option>
                            <option value="driverlicence">Driving License</option>
                        </select>
                    </div>
                    <div class="form-control">
                        <label class="required" for="identity-value">Identity Detail</label>
                        <input type="text" id="identity-value" name="identityValue" placeholder="Enter Identity Detail" maxlength="10" required>
                    </div>
                    <div class="form-control w-100">
                        <label class="required" for="address">Address</label>
                        <textarea rows="2" id="address" name="address" placeholder="Enter Address" required></textarea>
                    </div>
                    <div class="form-control">
                        <label class="required" for="country">Country</label>
                        <select name="country" id="country">
                            <option value="India">India</option>
                            <option value="USA">USA</option>
                            <option value="Japan">Japan</option>
                            <option value="France">France</option>
                            <option value="Dubai">Dubai</option>
                            <option value="China">China</option>
                        </select>
                    </div>
                    <div class="form-message form-message--error">
                        Password & Repeat Password not matches!
                    </div>
                    <div class="form-btns w-100">
                        <button class="btn w-100" type="submit">Submit</button>
                    </div>
                </form>
            </div>
        </main>
    </div>
    <script src="assets/scripts/init-main.js"></script>
    <script>
        const form = document.querySelector('form');
        const submitBtn = form.querySelector('button');
        const formMsg = form.querySelector('.form-message');
        submitBtn.classList.add('disabled');
        form.addEventListener('change', () => {
          const password = form.elements.password.value;
          const repeatPassword = form.elements.repeatPassword.value;
          if(form.checkValidity() && (password === repeatPassword)) {
            submitBtn.classList.remove('disabled');
          } else {
            submitBtn.classList.add('disabled');
          }
          if(password && repeatPassword && (password !== repeatPassword)) {
            formMsg.classList.add('active');
          } else {
            formMsg.classList.remove('active');
          }
        });
    </script>
</body>

</html>