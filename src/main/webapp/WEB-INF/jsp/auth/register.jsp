<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">--%>
    <link rel="stylesheet" href="css/style.css" />
    <title>Sign Up</title>
    <style>
        button, select {
            text-transform: none;
        }
        select {
            word-wrap: normal;
            border: none;
        }
        select:focus{
            border:none;
        }
        .form-select {
           display: block;
            width: 100%;

            font-size: 1rem;
            font-weight: 400;
            color: #333;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;

            background:none;
            transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }
        .form-select::after {
            content: '\25BC'; /* Unicode character for a down arrow */
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            pointer-events: none;
        }
        .form-select::-ms-expand {
            display: none;
        }
        .alert {
            padding: 1rem;
            border-radius: 5px;
            color: white;
            margin: 1rem 0;
            font-weight: 500;
            width: 65%;
        }

        .alert-success {
            background-color: #42ba96;
        }

        .alert-danger {
            background-color: #fc5555;
        }

        .alert-info {
            background-color: #2E9AFE;
        }

        .alert-warning {
            background-color: #ff9966;
        }
    </style>
</head>

<body>
    <div class="container sign-up-mode">
        <div class="forms-container">
            <div class="signin-signup">
                <c:if test="${requestScope.passwordMisMatch != null}">
                    <div class="alert alert-danger text-center border border-danger">
                        <b>${requestScope.passwordMisMatch}</b>
                    </div>
                </c:if>
                <c:if test="${requestScope.SUCCESS != null}">
                    <div class="alert alert-success text-center border border-success">
                        <b>${requestScope.SUCCESS}</b>
                    </div>
                </c:if>
                <c:if test="${requestScope.error != null}">
                    <div class="alert alert-danger text-center border border-danger">
                        <b>${requestScope.error}</b>
                    </div>
                </c:if>
                <form:form action="/register" method="POST" class="sign-up-form" modelAttribute="registerUser">
                    <h2 class="title">Sign up</h2>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" name="first_name" placeholder="FirstName" value="" required/>
                    </div>
                    <div class="input-field">
                        <i class="fas fa-envelope"></i>
                        <input type="email" name="email" placeholder="Email" value="" required/>
                        <form:errors path="email" class="text-white bg-danger"/>
                    </div>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <select class="form-select" name="role" aria-label="user label" required>
                            <option selected>Select Role</option>
                            <option value="Student">Student</option>
                            <option value="Teacher">Teacher</option>
                        </select>
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="password" placeholder="Password" required/>
                        <form:errors path="password" class="text-white bg-danger"/>
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="confirm_password" placeholder="Confirm Password" required/>
                    </div>

                    <input type="submit" name="submit" class="btn" value="Sign up" />
                    <p class="social-text">Or Sign up with social platforms</p>
                    <div class="social-media">
                        <a href="#" class="social-icon">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-google"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                    </div>
                </form:form>
            </div>
        </div>
        <div class="panels-container">
            <div class="panel left-panel">
            </div>
            <div class="panel right-panel">
                <div class="content">
                    <h3>One of us ?</h3>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum
                        laboriosam ad deleniti.
                    </p>
                    <a href="/login" class="btn transparent" id="sign-in-btn" style="padding:10px 20px;text-decoration:none">
                        Sign in
                                                                                </a>
                </div>
                <img src="img/register.svg" class="image" alt="" />
            </div>
        </div>
    </div>
    </div>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>--%>

</body>

</html>
