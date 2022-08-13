<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    StaticTexts sts = new StaticTexts();
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="parts/head.jsp"%>
    <title>FlyAway | Register</title>
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

      @media screen and (max-width: 530px) {
        .form-control {
          width: 100%;
        }
      }
    </style>
</head>

<body>
<%@include file="parts/header.jsp" %>
<div class="container">
    <main class="box-wrapper">
        <div class="box-container">
            <div class="box-title">
                Register
            </div>
            <form action="invoice.jsp" method="post">
                <div class="form-control">
                    <label class="required" for="fullname">Fullname</label>
                    <input type="text" id="fullname" name="fullname" placeholder="Enter Fullname" required>
                </div>
                <div class="form-control">
                    <label class="required" for="username">Email</label>
                    <input type="email" id="username" name="username" placeholder="Enter Email" required>
                </div>
                <div class="form-control">
                    <label class="required" for="age">Age</label>
                    <input type="number" id="age" name="age" placeholder="Enter Age" required>
                </div>
                <div class="form-control">
                    <label class="required" for="mobile">Mobile</label>
                    <input type="text" id="mobile" name="mobile" placeholder="Enter Mobile Number" maxlength="10"
                           required>
                </div>
                <div class="form-control">
                    <label class="required" for="identity-type">Identity Type</label>
                    <select name="identityType" id="identity-type">
                        <option value="Aadhaar">Aadhaar</option>
                        <option value="SSN">SSN</option>
                        <option value="Passport">Passport</option>
                        <option value="Voter Id">Voter Id</option>
                        <option value="Driving License">Driving License</option>
                    </select>
                </div>
                <div class="form-control">
                    <label class="required" for="identity-value">Identity Detail</label>
                    <input type="text" id="identity-value" name="identityValue" placeholder="Enter Aadhaar Detail"
                           maxlength="10" required>
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
                <div class="d-none">
                    <input type="text" name="<%= sts.flightId %>" value="<%= request.getParameter(sts.flightId) %>">
                    <input type="text" name="<%= sts.flightDate %>" value="<%= request.getParameter(sts.flightDate) %>">
                    <input type="text" name="<%= sts.passengers %>" value="<%= request.getParameter(sts.passengers) %>">
                </div>
                <div class="form-btns w-100">
                    <button class="btn w-100" type="submit">Submit</button>
                </div>
            </form>
        </div>
    </main>
</div>
<%@ include file="parts/footer.jsp" %>
<script>
  const form = document.querySelector('form');
  const identityType = form.querySelector('#identity-type');
  const identityValue = form.querySelector('#identity-value');
  const submitBtn = form.querySelector('button');
  const formMsg = form.querySelector('.form-message');
  submitBtn.classList.add('disabled');
  form.elements.fullname.value = "Joseph Pushpa Raj";
  form.elements.username.value = "user1@g.com";
  form.elements.age.value = "33";
  form.elements.mobile.value = "0987654321";
  form.elements.identityValue.value = "ADH456787654";
  form.elements.address.value = "Bengaluru";

  form.addEventListener('change', () => {
    if(form.checkValidity()) {
      submitBtn.classList.remove('disabled');
    } else {
      submitBtn.classList.add('disabled');
    }
  });
  identityType.addEventListener('change', () => {
    identityValue.setAttribute('placeholder', 'Enter '+ identityType.value +' Detail');
    identityValue.value = "";
  });
</script>
</body>

</html>