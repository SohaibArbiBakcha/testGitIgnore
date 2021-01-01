<%-- 
    Document   : menu
    Created on : Dec 8, 2020, 6:42:33 PM
    Author     : ChiHab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>accueil / G-eleve</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
        <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- endinject -->
        <link rel="shortcut icon" href="images/favicon.png" />
        <script src="js/jquery.js" type="text/javascript"></script>
    </head>

    <body>
        <%@include file="valide.jsp" %>
        <!--
        <%
            String Valide = null;
            if (request.getAttribute("supUser") != null) {
                Valide = request.getAttribute("supUser").toString();
            }
        %>-->
        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <!--<img src="images/logo.svg" class="mr-2" alt="logo"/>-->
                    <a href="menu.jsp" ><img src="<%=request.getContextPath()%>/images/Capture.png" alt="Capture"/> </a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item nav-profile dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                                <img src="images/faces/user.png" alt="profile"/>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                                <a href="deconnection" class="dropdown-item">
                                    <i class="ti-power-off text-primary"></i>
                                    se deconnecter
                                </a>
                            </div>
                        </li>
                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
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
                                        <p class="font-weight-bold "><a href="menuAdmin.jsp" type="button" class="btn btn-sm btn-inverse-warning  btn-rounded btn-fw">accueil</a> | Table Historique</p>
                                    </div>
                                </div>
                            </div>

                            <!-- table -->
                            <div class="col-lg-12 grid-margin stretch-card">
                                <div class="card">
                                  <!--<%
                                        if (Valide != null) {
                                    %>
                                    <div class="card-header bold bg-danger">
                                        <%=Valide%>
                                    </div>
                                    <%
                                        }
                                    %>-->  
                                    <div class="card-body">
                                       <!-- <form class="form-inline">
                                            <label class="col-sm-3 col-form-label">Nom employer</label>
                                            <input type="text" class="form-control mb-2 mr-sm-2" id="idnu" placeholder="Nom"> 
                                        </form>-->
                                        <h4 class="card-title">Liste d'historique</h4>
                                        <div class="table-responsive pt-3">
                                            <table class="table table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            nom d'employer
                                                        </th>
                                                        <th>
                                                            date d'opperation
                                                        </th>
                                                        <th>
                                                            type d'opperation
                                                        </th>
                                                        <th>
                                                            note
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tbu">

                                                </tbody>
                                            </table>
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
                <!--<script>
                    $(document).ready(function () {

                        $.ajax({
                            url: 'getUser.jsp',
                            success: function (res) {
                                $("#tbu").html(res);
                            }
                        });

                        $("#idnu").keyup(function () {
                            $.ajax({
                                url: 'getUser.jsp',
                                data: {idnu: $("#idnu").val()},
                                success: function (res) {
                                    $("#tbu").html(res);
                                }
                            });
                        });




                    });

                </script> -->

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
