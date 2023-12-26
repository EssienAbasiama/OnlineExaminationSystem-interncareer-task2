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
    <title>Reset Password</title>
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
    <div class="container sign-up-mode">
      <div class="forms-container">
        <div class="signin-signup" style="left: 50%; z-index: 99">
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
          <form:form method="POST" class="sign-up-form">
            <h2 class="title">Reset Password</h2>

            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="password" placeholder="Password" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>

              <input
                type="password"
                name="confirm_password"
                placeholder="Confirm Password"
              />
            </div>
            <input type="submit" name="submit" class="btn" value="Save" />
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
    </div>
  </body>
</html>
