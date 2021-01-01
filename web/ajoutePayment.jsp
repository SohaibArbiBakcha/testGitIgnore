<%-- 
    Document   : ajoutePayment
    Created on : Dec 24, 2020, 2:14:08 PM
    Author     : SpyECho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <title>accueil / G-paiement</title>
        <script src="js/jquery.js" type="text/javascript"></script>
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
        <%@include file="valide.jsp" %>
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
                                        <p class="font-weight-bold mb-0">
                                            <a
                                                href="menu.jsp"
                                                type="button"
                                                class="btn btn-sm btn-inverse-warning btn-rounded btn-fw"
                                                >accueil</a
                                            > 
                                            | <a
                                                href="gestionPayment.jsp"
                                                type="button"
                                                class="btn btn-sm btn-inverse-warning btn-rounded btn-fw"
                                                >Gestion Paiement</a
                                            > | Ajoute Paiement
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 grid-margin">
                            <div class="card">
                                <div class="card-body">
                                    <p class="card-description">
                                        Recherche Etudiant
                                    </p>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">identfient</label>
                                                <div class="col-sm-9">
                                                    <input type="text" name="nom" id="ide" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Prenom</label>
                                                <div class="col-sm-9">
                                                    <input type="text" name="prenom" id="pre" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div  class="col-md-4">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Nom</label>
                                                <div class="col-sm-9">
                                                    <input type="text" name="nom" id="nom" class="form-control">
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <button type="submit" id="rech" class="btn btn-primary mr-2">
                                        Submit
                                    </button>
                                    <div id="err" class="row justify-content-center text-danger h5 d-none">
                                        Inserer Id Etudiant ou Nom et Prenom 
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="div_Payment" class="col-lg-12 grid-margin stretch-card d-none">

                        </div>

                        <!-- main-panel ends -->
                    </div>

                    <!-- page-body-wrapper ends -->
                </div>
                <!-- container-scroller -->
                <!-- plugins:js -->
                <script src="js/Sawl.js" type="text/javascript"></script>


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

                <script>
                    $(document).ready(function () {
                        $("#rech").click(function () {
                            if ($('#ide').val() !== "" || ($('#nom').val() !== "" && $('#pre').val() !== "")) {
                                $.ajax({
                                    url: 'ajax/getPayments.jsp',
                                    data: {'id': $('#ide').val(), 'nom': $('#nom').val(), 'prenom': $('#pre').val()},
                                    success: function (res) {
                                        $("#div_Payment").html(res);
                                        //$("#Valider_Payment").removeClass("d-none");
                                        $("#div_Payment").removeClass("d-none");

                                        $("#err").addClass("d-none");

                                    }
                                }).done(function () {
                                    var test = 1;
                                    $("#S_Matiere").change(function () {
                                        $(this).removeClass("border-danger");
                                        $(this).addClass("border-success");
                                        test = 1;
                                    });
                                    $("#S_Mois").change(function () {
                                        $(this).removeClass("border-danger");
                                        $(this).addClass("border-success");
                                        test = 1;
                                    });
                                    $("#mont").change(function () {
                                        $(this).removeClass("border-danger");
                                        $(this).addClass("border-success");
                                        test = 1;
                                    });
                                    $("#Executer").click(function () {

                                        if ($("#S_Mois").val() == null) {
                                            $("#S_Mois").removeClass("border-success");
                                            $("#S_Mois").addClass("border-danger");
                                            test = -1;
                                        }
                                        if ($("#S_Matiere").val() == null) {
                                            $("#S_Matiere").removeClass("border-success");
                                            $("#S_Matiere").addClass("border-danger");
                                            test = -1;
                                        }
                                        if ($("#mont").val().length == 0 || $("#mont").val() == 0 || $("#mont").val() > 1000) {
                                            $("#mont").removeClass("border-success");
                                            $("#mont").addClass("border-danger");
                                            test = -1;
                                        }
                                        // Sweet alert

                                        //    alert("are u sure you wanna delete eleve " + nom + " " + prenom);
                                        if (test == 1) {
                                            Swal.fire({
                                                title: "Confirmer l'enregistrement",
                                                text: "Valider",
                                                icon: 'warning',
                                                showCancelButton: true,
                                                confirmButtonColor: '#3085d6',
                                                cancelButtonColor: '#d33',
                                                confirmButtonText: 'Yes, delete it!'
                                            }).then((result) => {
                                                if (result.value) {
                                                  window.location.replace("http://localhost:8080/2sbplus/Save_paiement?ide=?&Nom");                                                    
                                                }
                                            })
                                        }
                                    });
                                });
                            } else if ($('#ide').val() == "" || ($('#nom').val() == "" && $('#pre').val() == "")) {
                                ;
                                $("#div_Payment").addClass("d-none");
                                $("#err").removeClass("d-none");

                            }


                        });

                    });


                </script>

                <!-- End custom js for this page-->
                <!-- End custom js for this page-->



                </body>
                </html>
