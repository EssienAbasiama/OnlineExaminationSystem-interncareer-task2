<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>--%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Tests</title>
    <meta
      content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
      name="viewport"
    />
    <link rel="icon" href="img/icon.ico" type="image/x-icon" />

    <!-- Fonts and icons -->
    <script src="js/webfont.min.js"></script>
    <script>
      WebFont.load({
        google: { families: ["Lato:300,400,700,900"] },
        custom: {
          families: [
            "Flaticon",
            "Font Awesome 5 Solid",
            "Font Awesome 5 Regular",
            "Font Awesome 5 Brands",
            "simple-line-icons",
          ],
          urls: ["css/fonts.min.css"],
        },
        active: function () {
          sessionStorage.fonts = true;
        },
      });
    </script>

    <!-- CSS Files -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/atlantis.min.css" />

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link rel="stylesheet" href="css/demo.css" />
  </head>
  <body data-background-color="dark">
    <div class="wrapper">
      <div class="main-header">
        <!-- Logo Header -->
        <div class="logo-header" data-background-color="dark2">
          <a href="index.html" class="logo" style="color: #fff">
            Online Exam
          </a>
          <button
            class="navbar-toggler sidenav-toggler ml-auto"
            type="button"
            data-toggle="collapse"
            data-target="collapse"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon">
              <i class="icon-menu"></i>
            </span>
          </button>
          <button class="topbar-toggler more">
            <i class="icon-choices-vertical"></i>
          </button>
          <div class="nav-toggle">
            <button class="btn btn-toggle toggle-sidebar">
              <i class="icon-menu"></i>
            </button>
          </div>
        </div>
        <!-- End Logo Header -->

        <!-- Navbar Header -->
        <nav
          class="navbar navbar-header navbar-expand-lg"
          data-background-color="dark"
        >
          <div class="container-fluid">
            <div class="collapse" id="search-nav">
              <form class="navbar-left navbar-form nav-search mr-md-3">
                <div class="input-group">
                  <div class="input-group-prepend">
                    <button type="submit" class="btn btn-search pr-1">
                      <i class="fa fa-search search-icon"></i>
                    </button>
                  </div>
                  <input
                    type="text"
                    placeholder="Search ..."
                    class="form-control"
                  />
                </div>
              </form>
            </div>
            <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
              <li class="nav-item toggle-nav-search hidden-caret">
                <a
                  class="nav-link"
                  data-toggle="collapse"
                  href="#search-nav"
                  role="button"
                  aria-expanded="false"
                  aria-controls="search-nav"
                >
                  <i class="fa fa-search"></i>
                </a>
              </li>
              <li class="nav-item dropdown hidden-caret">
                <a
                  class="dropdown-toggle profile-pic"
                  data-toggle="dropdown"
                  href="#"
                  aria-expanded="false"
                >
                  <div class="avatar-sm">
                    <img
                      src="img/avatar.png"
                      alt="..."
                      class="avatar-img rounded-circle"
                    />
                  </div>
                </a>
                <ul class="dropdown-menu dropdown-user animated fadeIn">
                  <div class="dropdown-user-scroll scrollbar-outer">
                    <li>
                      <div class="user-box">
                        <div class="avatar-lg">
                          <img
                            src="img/avatar.png"
                            alt="image profile"
                            class="avatar-img rounded"
                          />
                        </div>
                        <div class="u-text">
                          <h4>Administrator</h4>
                          <p class="text-muted">admin@example.com</p>
                          <a
                            href="profile.html"
                            class="btn btn-xs btn-secondary btn-sm"
                            >View Profile</a
                          >
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">My Profile</a>
                      <a class="dropdown-item" href="#">My Balance</a>
                      <a class="dropdown-item" href="#">Inbox</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Account Setting</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Logout</a>
                    </li>
                  </div>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
        <!-- End Navbar -->
      </div>

      <!-- Sidebar -->
      <div class="sidebar sidebar-style-2" data-background-color="dark2">
        <div class="sidebar-wrapper scrollbar scrollbar-inner">
          <div class="sidebar-content">
            <div class="user">
              <div class="avatar-sm float-left mr-2">
                <img
                  src="img/avatar.png"
                  alt="..."
                  class="avatar-img rounded-circle"
                />
              </div>
              <div class="info">
                <a
                  data-toggle="collapse"
                  href="#collapseExample"
                  aria-expanded="true"
                >
                  <span>
                    <span class="user-level">Administrator</span>
                    <span class="caret"></span>
                  </span>
                </a>
                <div class="clearfix"></div>

                <div class="collapse in" id="collapseExample">
                  <ul class="nav">
                    <li>
                      <a href="#profile">
                        <span class="link-collapse">My Profile</span>
                      </a>
                    </li>
                    <li>
                      <a href="#edit">
                        <span class="link-collapse">Edit Profile</span>
                      </a>
                    </li>
                    <li>
                      <a href="#settings">
                        <span class="link-collapse">Settings</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <ul class="nav nav-primary">
              <li class="nav-item">
                <a href="./index.html">
                  <i class="fas fa-home"></i>
                  <p>Dashboard</p>
                </a>
              </li>
              <li class="nav-section">
                <span class="sidebar-mini-icon">
                  <i class="fa fa-ellipsis-h"></i>
                </span>
                <h4 class="text-section">Actions</h4>
              </li>
              <li class="nav-item">
                <a href="courses.html">
                  <i class="fas fa-file-word"></i>
                  <p>Courses</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="students.html">
                  <i class="fas fa-users"></i>
                  <p>Manage Students</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="question_bank.html">
                  <i class="fas fa-book"></i>
                  <p>Question Bank</p>
                </a>
              </li>
              <li class="nav-item active">
                <a href="add_questions.html">
                  <i class="fas fa-pen-square"></i>
                  <p>Add Test</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="results.html">
                  <i class="fas fa-file-word"></i>
                  <p>View Results</p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <!-- End Sidebar -->

      <div class="main-panel">
        <div class="content">
          <div class="page-inner">
            <div class="mt-2 mb-4">
              <h2 class="text-white pb-2">Manage Test</h2>
            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="card">
                  <div class="card-header">
                    <div class="card-head-row">
                      <div class="card-title">
                        <h5 class="text-white op-7 mb-4">Add new Test.</h5>
                      </div>
                      <div class="card-tools">
                        <a
                          href="#"
                          class="btn btn-info btn-border btn-round btn-sm mr-2"
                        >
                          <span class="btn-label">
                            <i class="fa fa-pencil"></i>
                          </span>
                          Export
                        </a>
                        <a
                          href="#"
                          class="btn btn-info btn-border btn-round btn-sm"
                        >
                          <span class="btn-label">
                            <i class="fa fa-print"></i>
                          </span>
                          Print
                        </a>
                      </div>
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="row">
                      <span style="margin-left: 30%; font-size: 30px"
                        ><b>Enter Test Details</b></span
                      ><br /><br />
                      <div class="col-md-6" style="margin-left: 23%">
                        <form:form class="form-horizontal title1" action="/createTest" method="POST" modelAttribute="createTest">
                          <fieldset>
                            <div class="form-group">
                              <label
                                class="col-md-12 control-label"
                                for="test_course_title"
                              ></label>
                              <div class="col-md-12">
                                <input
                                  id="test_course_title"
                                  name="test_course_title"
                                  placeholder="Enter Test title"
                                  class="form-control input-md"
                                  type="text"
                                  required="true"
                                 path="test_course_title"/>
                              </div>
                            </div>
                            <div class="form-group">
                              <label
                                class="col-md-12 control-label"
                                for="cunit"
                              ></label>
                              <div class="col-md-12">
                                <select
                                  name="cunit"
                                  id="cunit"
                                  class="form-control"
                                  required="true"
                                  path="cunit"
                                >
                                  <option value="">--Course Unit--</option>
                                  <c:forEach var="cunit" items="${cunitValues}">
                                    <option value="${cunit}">${cunit}</option>
                                  </c:forEach>
                                </select>
                              </div>
                            </div>
                            <div class="form-group">
                              <label
                                class="col-md-12 control-label"
                                for="numberOfQuestions"
                              ></label>
                              <div class="col-md-12">
                                <input
                                  id="numberOfQuestions"
                                  name="numberOfQuestions"
                                  path="numberOfQuestions"
                                  placeholder="Enter total number of questions"
                                  class="form-control input-md"
                                  type="number"
                                  required="true"
                                />
                              </div>
                            </div>
                            <div class="form-group">
                              <label
                                class="col-md-12 control-label"
                                for="markPerQuestion"
                              ></label>
                              <div class="col-md-12">
                                <input
                                  id="markPerQuestion"
                                  name="markPerQuestion"
                                  path="markPerQuestion"
                                  placeholder="Marks Per Question"
                                  class="form-control input-md"
                                  min="1"
                                  type="number"
                                  required="true"
                                />
                              </div>
                            </div>
                            <div class="form-group">
                              <label
                                class="col-md-12 control-label"
                                for="time_duration"
                              ></label>
                              <div class="col-md-12">
                                <input
                                        path="time_duration"
                                  id="time_duration"
                                  name="time_duration"
                                  placeholder="Enter Test Time Limit in Minutes"
                                  class="form-control input-md"
                                  min="5"
                                  type="number"
                                  required="true"
                                />
                              </div>
                            </div>

                            <div class="form-group">
                              <div class="col-md-12">
                                <input
                                        path="submit"
                                  type="submit"
                                  style="margin-left: 45%"
                                  class="btn btn-primary"
                                  value="Submit"
                                  name="add_test"
                                />
                              </div>
                            </div>
                          </fieldset>
                        </form:form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <footer class="footer">
          <div class="container-fluid">
            <nav class="pull-left">
              <ul class="nav">
                <li class="nav-item">
                  <a class="nav-link" href=""> Online Exam </a>
                </li>
                <li class="nav-item">
                  <a
                    class="nav-link"
                    href="https://www.facebook.com/keithorganisations"
                  >
                    Help
                  </a>
                </li>
              </ul>
            </nav>
            <div class="copyright ml-auto">
              2019, made with <i class="fa fa-heart heart text-danger"></i> by
              <a href="https://www.facebook.com/keithorganisations"
                >Keith Tusiime</a
              >
            </div>
          </div>
        </footer>
      </div>

      <!-- Custom template | don't include it in your project! -->
      <div class="custom-template">
        <div class="title">Settings</div>
        <div class="custom-content">
          <div class="switcher">
            <div class="switch-block">
              <h4>Logo Header</h4>
              <div class="btnSwitch">
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="dark"
                ></button>
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="blue"
                ></button>
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="purple"
                ></button>
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="light-blue"
                ></button>
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="green"
                ></button>
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="orange"
                ></button>
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="red"
                ></button>
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="white"
                ></button>
                <br />
                <button
                  type="button"
                  class="selected changeLogoHeaderColor"
                  data-color="dark2"
                ></button>
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="blue2"
                ></button>
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="purple2"
                ></button>
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="light-blue2"
                ></button>
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="green2"
                ></button>
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="orange2"
                ></button>
                <button
                  type="button"
                  class="changeLogoHeaderColor"
                  data-color="red2"
                ></button>
              </div>
            </div>
            <div class="switch-block">
              <h4>Navbar Header</h4>
              <div class="btnSwitch">
                <button
                  type="button"
                  class="selected changeTopBarColor"
                  data-color="dark"
                ></button>
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="blue"
                ></button>
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="purple"
                ></button>
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="light-blue"
                ></button>
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="green"
                ></button>
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="orange"
                ></button>
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="red"
                ></button>
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="white"
                ></button>
                <br />
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="dark2"
                ></button>
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="blue2"
                ></button>
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="purple2"
                ></button>
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="light-blue2"
                ></button>
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="green2"
                ></button>
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="orange2"
                ></button>
                <button
                  type="button"
                  class="changeTopBarColor"
                  data-color="red2"
                ></button>
              </div>
            </div>
            <div class="switch-block">
              <h4>Sidebar</h4>
              <div class="btnSwitch">
                <button
                  type="button"
                  class="changeSideBarColor"
                  data-color="white"
                ></button>
                <button
                  type="button"
                  class="changeSideBarColor"
                  data-color="dark"
                ></button>
                <button
                  type="button"
                  class="selected changeSideBarColor"
                  data-color="dark2"
                ></button>
              </div>
            </div>
            <div class="switch-block">
              <h4>Background</h4>
              <div class="btnSwitch">
                <button
                  type="button"
                  class="changeBackgroundColor"
                  data-color="bg2"
                ></button>
                <button
                  type="button"
                  class="changeBackgroundColor selected"
                  data-color="bg1"
                ></button>
                <button
                  type="button"
                  class="changeBackgroundColor"
                  data-color="bg3"
                ></button>
                <button
                  type="button"
                  class="selected changeBackgroundColor"
                  data-color="dark"
                ></button>
              </div>
            </div>
          </div>
        </div>
        <div class="custom-toggle">
          <i class="flaticon-settings"></i>
        </div>
      </div>
      <!-- End Custom template -->
    </div>
    <!--   Core JS Files   -->
    <script src="js/core/jquery.3.2.1.min.js"></script>
    <script src="js/core/popper.min.js"></script>
    <script src="js/core/bootstrap.min.js"></script>

    <!-- jQuery UI -->
    <script src="js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
    <script src="js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>

    <!-- jQuery Scrollbar -->
    <script src="js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>

    <!-- Chart JS -->
    <script src="js/plugin/chart.js/chart.min.js"></script>

    <!-- jQuery Sparkline -->
    <script src="js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

    <!-- Chart Circle -->
    <script src="js/plugin/chart-circle/circles.min.js"></script>

    <!-- Datatables -->
    <script src="js/plugin/datatables/datatables.min.js"></script>

    <!-- Bootstrap Notify -->
    <script src="js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

    <!-- jQuery Vector Maps -->
    <script src="js/plugin/jqvmap/jquery.vmap.min.js"></script>
    <script src="js/plugin/jqvmap/maps/jquery.vmap.world.js"></script>

    <!-- Sweet Alert -->
    <script src="js/plugin/sweetalert/sweetalert.min.js"></script>

    <!-- Atlantis JS -->
    <script src="js/atlantis.min.js"></script>

    <!-- Atlantis DEMO methods, don't include it in your project! -->
    <script src="js/setting-demo.js"></script>
  </body>
</html>
