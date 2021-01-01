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
        <title>acceuil / G-E / M-eleve</title>
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
                                                href="gestionEleve.jsp"
                                                type="button"
                                                class="btn btn-sm btn-inverse-warning btn-rounded btn-fw"
                                                >Gestion eleve</a
                                            > | Modifier eleve
                                        </p>
                                        </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 grid-margin">
                            <div class="card">
                                <div class="card-body">
                                    <form class="form-sample" id="form" action="ModifyEleve">
                                        <p class="card-description">
                                            information élève
                                        </p>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label"  >Nom élève</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" name="enom" value="<%=request.getAttribute("nom") != null ? request.getAttribute("nom").toString() : ""%>"  id="nome" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Prenom élève</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" name="eprenom" value="<%=request.getAttribute("prenom") != null ? request.getAttribute("prenom").toString() : ""%>" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Date Naissance</label>
                                                    <div class="col-sm-9">
                                                        <input type="date" name="edaten" value="<%=request.getAttribute("date") != null ? request.getAttribute("date").toString() : ""%>" class="form-control" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Adresse</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" id="adressee" name="eadresse" value="<%=request.getAttribute("adresse") != null ? request.getAttribute("adresse").toString() : ""%>"  class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Ville</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" id="villee" name="eville" value="<%=request.getAttribute("vile") != null ? request.getAttribute("vile").toString() : ""%>" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label" >Code Postal</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" id="codee" name="ecodepostal" value="<%=request.getAttribute("code") != null ? request.getAttribute("code").toString() : ""%>" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">mail</label>
                                                    <div class="col-sm-9">
                                                        <input type="mail" id="maile" name="eemail" value="<%=request.getAttribute("mail") != null ? request.getAttribute("mail").toString() : ""%>" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Telephone</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" id="telee" name="etelephone" value="<%=request.getAttribute("tele") != null ? request.getAttribute("tele").toString() : ""%>" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Niveau de scolarité</label>
                                                    <div class="col-sm-9">
                                                        <select name="eniveau" class="form-control">
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
                                                                <input type="checkbox" class="form-check-input choix math"   value="M1erBSE"  >
                                                                Mathématiques 1ère année Bac sciences économiques
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix  math"   value="M2emBSE"  >
                                                                Mathématiques 2ème année Bac sciences économiques
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix math "   value="M1erBPCSVT"  >
                                                                Mathématiques 1ère année Bac sciences physiques et svt
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix math"   value="M2emBPCSVT"  >
                                                                Mathématiques 2ème année Bac sciences physiques et svt
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix math"    value="M1erBSM"  >
                                                                Mathématiques 1ère année Bac sciences maths
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix math"   value="M2emBSM"  >
                                                                Mathématiques 2ème année Bac sciences maths
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix"  value="FR"  >
                                                                Français
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix"  value="AR"  >
                                                                Arabe
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix"  value="AN"  >
                                                                Anglais
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix"   value="PC"  >
                                                                Physique-chimie
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix"  value="ECO"  >
                                                                Economie
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix"  value="MaDNB"  >
                                                                Mathématiques DNB (diplôme National du Brevet)
                                                                <i class="input-helper"></i></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input choix"  value="BL"  >
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
                                            <input type="text" name="ide" id="ide" hidden="" value="" />
                                            
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
                <!--page-body-wrapper ends -->
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
                let lvl = document.querySelectorAll(".niv");
                
                lvl.forEach(item => {
                    if (item.value === '<%=request.getAttribute("niv") != null ? request.getAttribute("niv").toString() : ""%>') {
                        item.setAttribute("selected", true);
                    }
                });
                $(document).on('click', 'input[type="checkbox"].math', function () {      
                    $('input[type="checkbox"].math').not(this).prop('checked', false);      
                });
                
                
                let choix = document.querySelectorAll(".choix");
                let json = "<%=request.getAttribute("mati") != null ? request.getAttribute("mati").toString() : ""%>".split(',');
                
                choix.forEach(itemc =>{
                    json.forEach(itemj => {
                        if (itemc.value===itemj) {
                            itemc.setAttribute('checked',true);
                        }
                    });
                });
                    const queryString = window.location.search;
                    const urlParams = new URLSearchParams(queryString);
                    const ide = urlParams.get('ide');
                    
                    document.querySelector("#ide").setAttribute("value", ide);
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
                        if (name[0] === ',') {
                            name = name.replace(',', '');
                        }


                        document.querySelector("#matieres").setAttribute("value", name);

                    });
                
                
                
            </script>

            <!-- End custom js for this page-->
            <!-- End custom js for this page-->
    </body>
</html>