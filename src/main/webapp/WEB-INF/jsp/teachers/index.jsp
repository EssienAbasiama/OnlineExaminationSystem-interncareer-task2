<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>--%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Teacher Dashboard</title>
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
          <a href="#" class="logo" style="color: #fff"> Online Exam </a>
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
                          <h4>Teacher</h4>
                          <p class="text-muted">teacher@example.com</p>
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
                      <a class="dropdown-item" href="/logout">Logout</a>
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
                    <span class="user-level">Teacher</span>
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
              <li class="nav-item active">
                <a href="../demo2/index.php">
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
                <a href="/courses">
                  <i class="fas fa-file-word"></i>
                  <p>Courses</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/students">
                  <i class="fas fa-users"></i>
                  <p>Manage Students</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/questionBbank">
                  <i class="fas fa-book"></i>
                  <p>Question Bank</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/createTest">
                  <i class="fas fa-pen-square"></i>
                  <p>Add Tests</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/results">
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
              <h2 class="text-white pb-2">Welcome back, Teacher!</h2>
              <h5 class="text-white op-7 mb-4">
                From here you can manage your tests.
              </h5>
            </div>
            <div class="row">
              <div class="col-md-4">
                <div class="card card-dark bg-primary-gradient">
                  <div class="card-body pb-0">
                    <h2 class="mb-2">20</h2>
                    <p>Total Students</p>
                    <div class="pull-in sparkline-fix chart-as-background">
                      <div id="lineChart">
                        <canvas
                          width="327"
                          height="70"
                          style="
                            display: inline-block;
                            width: 327px;
                            height: 70px;
                            vertical-align: top;
                          "
                        ></canvas>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card card-dark bg-secondary-gradient">
                  <div class="card-body pb-0">
                    <h2 class="mb-2">30</h2>
                    <p>Total Tests</p>
                    <div class="pull-in sparkline-fix chart-as-background">
                      <div id="lineChart2">
                        <canvas
                          width="327"
                          height="70"
                          style="
                            display: inline-block;
                            width: 327px;
                            height: 70px;
                            vertical-align: top;
                          "
                        ></canvas>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card card-dark bg-success2">
                  <div class="card-body pb-0">
                    <h2 class="mb-2">14</h2>
                    <p>Tests Running</p>
                    <div class="pull-in sparkline-fix chart-as-background">
                      <div id="lineChart3">
                        <canvas
                          width="327"
                          height="70"
                          style="
                            display: inline-block;
                            width: 327px;
                            height: 70px;
                            vertical-align: top;
                          "
                        ></canvas>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Tests</h3>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table
                    id="basic-datatables"
                    class="display table table-striped table-hover"
                  >
                    <thead>
                      <tr>
                        <th style="vertical-align: middle"><b>S.N.</b></th>
                        <th style="vertical-align: middle">
                          <b>Course Unit</b>
                        </th>
                        <th style="vertical-align: middle"><b>Test Name</b></th>
                        <th style="vertical-align: middle">
                          <b>Total question</b>
                        </th>
                        <th style="vertical-align: middle"><b>Marks</b></th>
                        <th style="vertical-align: middle">
                          <b>Time limit</b>
                        </th>
                        <th style="vertical-align: middle"><b>Status</b></th>
                        <th style="vertical-align: middle"><b>Action</b></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td style="vertical-align: middle">
                          <?php echo  $c++; ?>
                        </td>
                        <td style="vertical-align: middle">
                          <?php echo  $unit_name; ?>
                        </td>
                        <td style="vertical-align: middle">
                          <?php echo  $title; ?>
                        </td>
                        <td style="vertical-align: middle">
                          <?php echo  $total; ?>
                        </td>
                        <td style="vertical-align: middle">
                          <?php echo  $correct * $total; ?>
                        </td>
                        <td style="vertical-align: middle">
                          <?php echo  $time; ?>&nbsp;min
                        </td>
                        <td style="vertical-align: middle">Enabled</td>
                        <td style="vertical-align: middle">
                          <b
                            ><a
                              href="update.php?deidquiz=<?php echo $eid; ?>"
                              class="btn logb"
                              style="
                                color: #ffffff;
                                background: #ff0000;
                                font-size: 12px;
                                padding: 5px;
                              "
                              >&nbsp;<span><b>Disable</b></span></a
                            ></b
                          >
                        </td>
                      </tr>
                      <?php
									  	}else{
									  	?>
                      <tr style="color: red">
                        <td style="vertical-align: middle">
                          <?php echo $c++; ?>
                        </td>
                        <td style="vertical-align: middle">
                          <?php echo  $unit_name; ?>
                        </td>
                        <td style="vertical-align: middle">
                          <?php echo $title; ?>
                        </td>
                        <td style="vertical-align: middle">
                          <?php echo $total; ?>
                        </td>
                        <td style="vertical-align: middle">
                          <?php echo $correct * $total; ?>
                        </td>
                        <td style="vertical-align: middle">
                          <?php echo $time; ?>&nbsp;min
                        </td>
                        <td style="vertical-align: middle">Disabled</td>
                        <td style="vertical-align: middle">
                          <b
                            ><a
                              href="update.php?eeidquiz=<?php echo $eid; ?>"
                              class="btn logb"
                              style="
                                color: #ffffff;
                                background: darkgreen;
                                font-size: 12px;
                                padding: 5px;
                              "
                              >&nbsp;<span><b>Enable</b></span></a
                            ></b
                          >
                        </td>
                      </tr>
                      <?php
									  	}
									  }
									  	?>
                    </tbody>
                  </table>
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
              2023, made with<i class="fa fa-heart heart text-danger"></i> by
              <a href="https://www.facebook.com/keithorganisations"
                >Intern Career</a
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
    <script src="js/plugin/jqvmap/maps/jquery.vmap.world.js"></script>
    <script src="js/plugin/jqvmap/jquery.vmap.min.js"></script>

    <!-- Sweet Alert -->
    <script src="js/plugin/sweetalert/sweetalert.min.js"></script>

    <!-- Atlantis JS -->
    <script src="js/atlantis.min.js"></script>
  </body>
</html>
