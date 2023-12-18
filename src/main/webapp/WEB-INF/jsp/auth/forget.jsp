<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>--%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="css/style.css" />
    <title>Forgot</title>
    <style>
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
        background-color: #2e9afe;
      }

      .alert-warning {
        background-color: #ff9966;
      }
    </style>
  </head>

  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup" style="left: 50%; z-index: 99">
          <form action="/forgot" method="POST" class="sign-in-form">
            <h2 class="title">Forget Password</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="email" placeholder="Email" />
            </div>
            <input type="submit" name="submit" value="Send" class="btn solid" />
            <p class="social-text">Or Sign in with social platforms</p>
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
          </form>
        </div>
      </div>
    </div>

    <script src="app.js"></script>
  </body>
</html>
