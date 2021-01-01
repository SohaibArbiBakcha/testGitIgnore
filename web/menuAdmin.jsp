<%-- Document : menu Created on : Dec 8, 2020, 6:42:33 PM Author : ChiHab --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <title>accueil</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css" />
    <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css" />
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="css/style.css" />
    <!-- endinject -->
    <link rel="shortcut icon" href="images/favicon.png" />
  </head>

  <body>
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
      <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div
          class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center"
        >
          <!--<img src="images/logo.svg" class="mr-2" alt="logo"/>-->
          <a href="#"
            ><img
              src="<%=request.getContextPath()%>/images/Capture.png"
              alt="Capture"
            />
          </a>
        </div>
        <div
          class="navbar-menu-wrapper d-flex align-items-center justify-content-end"
        >
          <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                data-toggle="dropdown"
                id="profileDropdown"
              >
                <img src="images/faces/user.png" alt="profile" />
              </a>
              <div
                class="dropdown-menu dropdown-menu-right navbar-dropdown"
                aria-labelledby="profileDropdown"
              >
                <a href="deconnection" class="dropdown-item">
                  <i class="ti-power-off text-primary"></i>
                  se deconnecter
                </a>
              </div>
            </li>
          </ul>
          <button
            class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
            type="button"
            data-toggle="offcanvas"
          >
            <span class="ti-view-list"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->

        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row">
              <div class="col-md-12 grid-margin">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <h4 class="font-weight-bold mb-0">Accueil</h4>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-3 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <a href="tableHistorique.jsp" style="text-decoration: none">
                      <p class="card-title text-md-center text-xl-left">
                        Historique
                      </p>
                      <div
                        class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center"
                      >
                        <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0">
                          de paiement
                        </h3>
                        <i
                          class="ti-plus icon-md text-muted mb-0 mb-md-3 mb-xl-0"
                        ></i>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
              <div class="col-md-3 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <a href="gestionEmployer.jsp" style="text-decoration: none">
                      <p class="card-title text-md-center text-xl-left">
                        gestion
                      </p>
                      <div
                        class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center"
                      >
                        <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0">
                          Employer
                        </h3>
                        <i
                          class="ti-user icon-md text-muted mb-0 mb-md-3 mb-xl-0"
                        ></i>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
              <div class="col-md-3 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                      <a href="#" style="text-decoration: none">
                      <p class="card-title text-md-center text-xl-left">
                        list
                      </p>
                      <div
                        class="d-flex flex-wrap justify-content-between justify-content-md-center justify-content-xl-between align-items-center"
                      >
                        <h3 class="mb-0 mb-md-2 mb-xl-0 order-md-1 order-xl-0">
                          des éléve
                        </h3>
                        <i
                          class="ti-money icon-md text-muted mb-0 mb-md-3 mb-xl-0"
                        ></i>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->

          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="vendors/base/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <script src="vendors/chart.js/Chart.min.js"></script>
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="js/off-canvas.js"></script>
    <script src="js/hoverable-collapse.js"></script>
    <script src="js/template.js"></script>
    <script src="js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="js/dashboard.js"></script>
    <!-- End custom js for this page-->
    <!-- End custom js for this page-->
  </body>
</html>
