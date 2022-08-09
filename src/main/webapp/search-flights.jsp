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
                    Search Flights
                </div>
                <form action="#">
                    <div class="form-control">
                        <label class="required" for="date">Date</label>
                        <input type="date" id="date" placeholder="Select Date" name="date">
                    </div>
                    <div class="form-control">
                        <label class="required" for="source">Source</label>
                        <select name="source" id="source">
                            <option value="Mumbai">Mumbai</option>
                            <option value="Bengaluru">Bengaluru</option>
                            <option value="Delhi">Delhi</option>
                            <option value="New York">New York</option>
                            <option value="Paris">Paris</option>
                        </select>
                    </div>
                    <div class="form-control">
                        <label class="required" for="destination">Destination</label>
                        <select name="destination" id="destination">
                            <option value="Mumbai">Mumbai</option>
                            <option value="Bengaluru">Bengaluru</option>
                            <option value="Delhi">Delhi</option>
                            <option value="New York">New York</option>
                            <option value="Paris">Paris</option>
                        </select>
                    </div>
                    <div class="form-control">
                        <label class="required" for="passengers">No. of Passengers</label>
                        <select name="passengers" id="passengers">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                        </select>
                    </div>
                    <div class="form-btns" style="margin-top: 2rem;">
                        <button class="btn w-100" type="submit">Submit</button>
                    </div>
                </form>
            </div>
        </main>
    </div>

    <script src="assets/scripts/init-main.js"></script>
    <script>
        const form = document.querySelector('form');
        const dateInput = form.querySelector('#date');
        const submitBtn = form.querySelector('.btn[type="submit"]');
        submitBtn.classList.add('disabled');

        dateInput.addEventListener('change', () => {
            if(dateInput.value) {
                submitBtn.classList.remove('disabled');
            } else {
                submitBtn.classList.add('disabled');
            }
        });


    </script>
</body>

</html>