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
        <title>accueil / R-paiement</title>
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
                        href="gestionPayment.jsp"
                        type="button"
                        class="btn btn-sm btn-inverse-warning btn-rounded btn-fw"
                        >Gestion Paiement</a
                      > | chercher paiement
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
                                        <div class="col-md-4">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Nom</label>
                                                <div class="col-sm-9">
                                                    <input type="text" name="nom" id="nom" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                    </div>
                                    <div>
                                        <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">statue</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="pay" required>
                                                        <option value="" disabled="" selected="">---</option>  
                                                        <option value="paye">paye</option>
                                                        <option value="unpaye">pas encore</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Mois</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="pay" required>
                 
                                                        <option value="-1"selected="" disabled="">---</option>
                                                            <option value="9">Septembre</option>
                                                            <option value="10">Octobre</option>
                                                            <option value="11">Novembre</option>                                                                                                            
                                                            <option value="12">Décembre</option>
                                                            <option value="1">Janvier</option>
                                                            <option value="2">Février</option>
                                                            <option value="3">Mars</option>
                                                            <option value="4">Avril</option>
                                                            <option value="5">Mai</option>
                                                            <option value="6">Juin</option>
                                                            <option value="7">Juillet</option>
                                                            <option value="08">Août</option>                                              
                                                         </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Matiere</label>
                                                <div class="col-sm-9">
                                                    <select class="form-control" name="pay" required>
                                                            <option value="" disabled="" selected="">---</option>  
                                                            <option value="1erC">7ème année (1ème année du collège)</option>
                                                            <option value="2emC">8ème année (2ème année du collège)</option>
                                                            <option value="3emC">9ème année (3ème année du collège)</option>
                                                            <option value="1erBSE">1ère année Bac sciences économiques</option>
                                                            <option value="2emBSE">2ème année sciences économiques</option>
                                                            <option value="1erBPCSVT">1ère année sciences physiques et svt</option>
                                                            <option value="2emBPCSVT">2ème année sciences physiques et svt</option>
                                                            <option value="1erBSM">1ère année Bac sciences maths</option>
                                                            <option value="2emBSM">2ème année Bac sciences physiques et svt</option>
                                                            <option value="BL">Bac libre</option>

                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        </div>
                                    </div>
                                    
                                    <button type="submit" id="rech" class="btn btn-primary mr-2">
                                        Submit
                                    </button>
                                    <div id="err" class="row justify-content-center text-danger h5 d-none">
                                        tout les input est vide verife votre donneé
                                    </div>
                                </div>
                            </div>
                        </div>
                  <!-- table -->
                  <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Liste des élèves</h4>
                  <div class="table-responsive pt-3">
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th>
                            IDpaiement
                          </th>
                          <th>
                            Nom d'élève
                          </th>
                          <th>
                            Matier
                          </th>
                          <th>
                            mois
                          </th>
                          <th> 
                            Detail
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        
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
        <script>
            $(document).ready(function (){
                   
                $.ajax({
                    url:'getEleve.jsp',
                    success: function (res){
                        $("#tb").html(res);
                    }
                });
                console.log($("#sellvl").val())
                $("#idn").keyup(function (){
                $.ajax({
                    url:'getEleve.jsp',
                    data :{idn : $("#idn").val()},
                    success: function (res){
                        $("#tb").html(res);
                    }
                });
            
                });
                $("#sellvl").change(function (){
                $.ajax({
                    url:'getEleve.jsp',
                    data :{sellvl : $("#sellvl").val()},
                    success: function (res){
                        $("#tb").html(res);
                    }
                });
            
                });
                
                
                   
            });
               
        </script>
  
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
