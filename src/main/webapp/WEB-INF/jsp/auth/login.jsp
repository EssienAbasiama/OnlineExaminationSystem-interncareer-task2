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
    <title>Sign In</title>
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
      .Forget-Pass {
        display: flex;
        width: 65%;
      }
      .Forget {
        color: #2e9afe;
        font-weight: 500;
        text-decoration: none;
        margin-left: auto;
      }
    </style>
  </head>

  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <%--Display Message--%>
          <c:if test="${requestScope.SUCCESS != null}">
            <div class="alert alert-success text-center border border-success">
              <b>${requestScope.SUCCESS}</b>
            </div>
          </c:if>
          <%--Display Message--%>
          <c:if test="${requestScope.error != null}">
            <div class="alert alert-danger text-center border border-danger">
              <b>${requestScope.error}</b>
            </div>
          </c:if>
          <%--            Display Message--%>
          <c:if test="${requestScope.logged_out != null}">
            <div class="alert alert-info text-center border border-info">
              <b>${requestScope.logged_out}</b>
            </div>
          </c:if>
          <form:form action="/login" method="POST" class="sign-in-form">
            <h2 class="title">Sign in</h2>

            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="email" placeholder="Email" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="Password" placeholder="Password" />
            </div>
            <div class="Forget-Pass">
              <a href="/forgot" class="Forget">Forget Password ?</a>
            </div>
            <input
              type="submit"
              name="submit"
              value="Login"
              class="btn solid"
            />
            <!--End form Group -->
            <input type="hidden" class="form-control form-control-lg" name="_token" value="${token}" />

            <!-- <a
              class="btn solid"
              style="
                display: flex;
                text-decoration: none;
                justify-content: center;
                align-items: center;
              "
              href="./admin/index.jsp"
              >Login</a
            > -->
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
          </form:form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>New here ?</h3>
            <p>
              Lorem ipsum, dolor sit amet consectetur adipisicing elit. Debitis,
              ex ratione. Aliquid!
            </p>
            <a
              href="/register"
              class="btn transparent"
              id="sign-in-btn"
              style="padding: 10px 20px; text-decoration: none"
            >
              Sign up
            </a>
          </div>
          <img src="img/log.svg" class="image" alt="" />
        </div>
      </div>
    </div>

    <!-- <script src="app.js"></script> -->
  </body>
</html>
