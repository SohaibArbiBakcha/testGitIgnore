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
        <title>accueil / Inscription</title>
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
        <%
                String Valide = null;
                if(request.getAttribute("ajoute") != null){
                    Valide = request.getAttribute("ajoute").toString();
                }
        %>
        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <%  request.setAttribute("ide",request.getParameter("ide"));  %>
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
                                        <p class="font-weight-bold mb-0"><a href="menu.jsp" type="button" class="btn btn-sm btn-inverse-warning  btn-rounded btn-fw">accueil</a> | Inscription</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 grid-margin">
                            <div class="card">
                                <%
                                    if (Valide!=null) {
                                %>
                                <div class="card-header bold bg-success">
                                    <%=Valide%>
                                </div>
                                <%
                                    }
                                %>
                                <div class="card-body">
                                    <form class="form-sample" id="form" action="insertClient" method="post">
                                        <p class="card-description font-weight-bold">
                                            information Parent
                                        </p>
                                        <div class="row" id="parentt">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Civilité</label>
                                                    <div class="col-sm-3">
                                                        <select class="form-control" name="civi">
                                                            <option value="" disabled="" selected="">---</option>  
                                                            <option>Mme</option>
                                                            <option>M</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">CIN</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" placeholder="AExxx" name="cin" class="form-control" required="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="checkbox" class="form-check-input" id="exist" >
                                                        Parent au élève deja existé
                                                        <i class="input-helper"></i></label>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="parent" class="">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Prenom</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" name="prenom" class="form-control">
                                                        </div>
                                                    </div>
                                                </div> <br/>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Nom</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" name="nom" id="nom" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Adresse</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" placeholder="21 xxx xxxx" id="adresse" name="adresse" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6" >
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Code Postal</label>
                                                        <div class="col-sm-9">
                                                            <input type="number" placeholder="10090" id="code" name="codepostal" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Ville</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="ville" name="ville" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Telephone</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" placeholder="06 xx xx xx xx" id="tele" name="telephone" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Mail</label>
                                                        <div class="col-sm-9">
                                                            <input type="mail" placeholder="sb2plus@gmail.com" id="mail" name="email" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="card-description font-weight-bold">
                                            information élève
                                        </p>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label"  >Nom élève</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" name="enom"  id="nome" class="form-control" required="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Prenom élève</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" name="eprenom" class="form-control" required="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Date Naissance</label>
                                                    <div class="col-sm-9">
                                                        <input type="date" name="edaten" class="form-control" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Adresse</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" id="adressee" name="eadresse"  class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Ville</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" id="villee" name="eville" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Code Postal</label>
                                                    <div class="col-sm-9">
                                                        <input type="number" id="codee" name="ecodepostal" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">mail</label>
                                                    <div class="col-sm-9">
                                                        <input type="email" id="maile" name="eemail" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Telephone</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" id="telee" name="etelephone" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Niveau de scolarité</label>
                                                    <div class="col-sm-9">
                                                        <select name="eniveau" class="form-control" required="">
                                                            <option value="" disabled="" selected="">---</option>
                                                            <option class="niv" value="1erC">7ème année (1ème année du collège)</option>
                                                            <option class="niv" value="2emC">8ème année (2ème année du collège)</option>
                                                            <option class="niv" value="3emC">9ème année (3ème année du collège)</option>
                                                            <option class="niv" value="1erBSE">1ère année Bac sciences économiques</option>
                                                            <option class="niv" value="2emBSE">2ème année Bac sciences économiques</option>
                                                            <option class="niv" value="1erBPCSVT">1ère année Bac sciences physiques et svt</option>
                                                            <option class="niv" value="2emBPCSVT">2ème année Bac sciences physiques et svt</option>
                                                            <option class="niv" value="1erBSM">1ère année Bac sciences maths</option>
                                                            <option class="niv" value="2emBSM">2ème année Bac sciences maths</option>
                                                            <option class="niv" value="BL">Bac libre</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="card-description">
                                            COURS ET OPTION CHOISIS
                                        </p>
                                        <div class="row">
                                            <div class="col">
                                                <div class="form-group row">  
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="radio" class="form-check-input choix" name="math" id="membershipRadios1" value="M1erBSE"  >
                                                                Mathématiques 1ère année Bac sciences économiques
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="radio" class="form-check-input choix" name="math" id="membershipRadios1" value="M2emBSE"  >
                                                                Mathématiques 2ème année Bac sciences économiques
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="radio" class="form-check-input choix" name="math" id="membershipRadios1" value="M1erBPCSVT"  >
                                                                Mathématiques 1ère année Bac sciences physiques et svt
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="radio" class="form-check-input choix" name="math" id="membershipRadios1" value="M2emBPCSVT"  >
                                                                Mathématiques 2ème année Bac sciences physiques et svt
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="radio" class="form-check-input choix" name="math" id="membershipRadios1" value="M1erBSM"  >
                                                                Mathématiques 1ère année Bac sciences maths
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="radio" class="form-check-input choix" name="math" id="membershipRadios1" value="M2emBSM"  >
                                                                Mathématiques 2ème année Bac sciences maths
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix" id="membershipRadios1" value="FR"  >
                                                                Français
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix" id="membershipRadios1" value="AR"  >
                                                                Arabe
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix" id="membershipRadios1" value="AN"  >
                                                                Anglais
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix"  id="membershipRadios1" value="PC"  >
                                                                Physique-chimie
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix" id="membershipRadios1" value="ECO"  >
                                                                Economie
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix" id="membershipRadios1" value="MaDNB"  >
                                                                Mathématiques DNB (diplôme National du Brevet)
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix" id="membershipRadios1" value="BL"  >
                                                                Bac libre
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Autre</label>
                                                    <div class="col-sm-9">
                                                        <input value=""  id="choixsp" type="text" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row justify-content-center">
                                            <input type="text" name="matieres" id="matieres" hidden="" value="" />
                                            <div class="form-group col ">
                                                <button type="submit" id="sub" class="btn btn-primary mr-2">Envoyer</button>
                                                <button class="btn btn-light" type="reset">annuler</button>
                                            </div>
                                        </div>
                                    </form>
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



                    $("#nom").blur(function () {

                        $("#nome").val($("#nom").val());
                    });

                    $("#adresse").blur(function () {

                        $("#adressee").val($("#adresse").val());
                    });

                    $("#ville").blur(function () {

                        $("#villee").val($("#ville").val());
                    });

                    $("#mail").blur(function () {

                        $("#maile").val($("#mail").val());
                    });

                    $("#tele").blur(function () {

                        $("#telee").val($("#tele").val());
                    });

                    $("#code").blur(function () {

                        $("#codee").val($("#code").val());
                    });

                    $("#exist").click(function () {
                        if ($("#exist:checkbox")) {
                            $("#parent").toggleClass('d-none');
                            $("#parentt").toggleClass('d-none');
                        }
                    });
                    $("#form").submit(function () {
                        let choix = document.querySelectorAll('.choix:checked');
                        let name = '';

                        choix.forEach((ch, i) => {
                            if (i < choix.length - 1) {
                                name += ch.value + ",";
                            } else {
                                name += ch.value;
                            }
                        });


                        let choixsp = document.querySelector('#choixsp');
                        if (choixsp.value) {
                            name += "," + choixsp.value;
                        }
                        if (name[0] == ',') {
                            name = name.replace(',', '');
                        }


                        document.querySelector("#matieres").setAttribute("value", name);

                    });

                });
            </script>

            <!-- End custom js for this page-->
            <!-- End custom js for this page-->


    </body>
</html>
