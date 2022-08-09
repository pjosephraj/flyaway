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
                    Register Passenger
                </div>
                <form action="#">
                    <div class="form-control">
                        <label class="required" for="fullname">Fullname</label>
                        <input type="text" id="fullname" name="fullname" placeholder="Enter Fullname">
                    </div>
                    <div class="form-control">
                        <label class="required" for="email">Email</label>
                        <input type="email" id="email" name="email" placeholder="Enter Email">
                    </div>
                    <div class="form-control">
                        <label class="required" for="Address">Address</label>
                        <textarea rows="2" id="Address" name="Address" placeholder="Enter Address"></textarea>
                    </div>
                    <div class="form-control">
                        <label class="required" for="age">Age</label>
                        <input type="number" id="age" name="age" placeholder="Enter Age">
                    </div>
                    <div class="form-control">
                        <label class="required" for="mobile">Mobile</label>
                        <input type="text" id="mobile" name="mobile" placeholder="Enter Mobile Number" maxlength="10">
                    </div>
                    <div class="form-control">
                        <label class="required" for="identity-type">Identity Type</label>
                        <select name="identityType" id="identity-type">
                            <option value="Aadhaar Card">Aadhaar Card</option>
                            <option value="SSN">SSN</option>
                            <option value="Passport">Passport</option>
                            <option value="Voter Id">Voter Id</option>
                            <option value="Driving License">Driving License</option>
                        </select>
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
                        Email/Password is invalid!
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

    </script>
</body>

</html>