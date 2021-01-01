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
        <title>accueil/G-emp/Aj-User</title>
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
                String Valideu = null;
                if(request.getAttribute("ajouteuser") != null){
                    Valideu = request.getAttribute("ajouteuser").toString();
                }
        %>
        <div class="container-scroller">
          <!-- partial:partials/_navbar.html -->
          <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                <!--<img src="images/logo.svg" class="mr-2" alt="logo"/>-->
            <a href="menuAdmin.jsp" ><img src="<%=request.getContextPath()%>/images/Capture.png" alt="Capture"/> </a>
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
                          <p class="font-weight-bold mb-0"><a href="menuAdmin.jsp" type="button" class="btn btn-sm btn-inverse-warning  btn-rounded btn-fw">accueil</a> | <a href="gestionEmployer.jsp" type="button" class="btn btn-sm btn-inverse-warning  btn-rounded btn-fw">Gestion employer</a> | ajouter employer</p>
                      </div>
                    </div>
                  </div>
                </div>
              <div class="col-12 grid-margin">
              <div class="card">
                <% if(Valideu!=null){ %>
                      <div class="card-header bold bg-success">
                          <%=Valideu%>
                      </div>
                <%}
                %>
                <div class="card-body">    
                    <form class="form-sample" id="form" action="ajouterUser" method="post">
                    <p class="card-description">
                      information User
                    </p>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">CIN*</label>
                          <div class="col-sm-9">
                              <input type="text" name="cin" id="cin" class="form-control" required>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div id="parent" class="">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Prenom*</label>
                          <div class="col-sm-9">
                            <input type="text" name="prenomu" class="form-control" required>
                          </div>
                        </div>
                      </div> <br/>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Nom*</label>
                          <div class="col-sm-9">
                            <input type="text" name="nomu" id="nom" class="form-control" required>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Mail*</label>
                          <div class="col-sm-9">
                            <input type="email" id="mail" name="mailu" class="form-control" required>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Type employe*</label>
                          <div class="col-sm-3">
                            <select class="form-control" name="typeu" required> 
                              <option value="employe" disabled="" selected="">secretariat</option>
                            </select>
                          </div>
                        </div>
                      </div>
                    </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">mot de passe*</label>
                          <div class="col-sm-9">
                            <input type="text" name="mdpu" id="pass" class="form-control" required>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">confirmer le mot de passe*</label>
                          <div class="col-sm-9">
                            <input type="text" name="mdpc" id="passc" class="form-control" required>
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
         $(document).ready(function (){
            
           
            
            $("#cin").keyup(function (){
                 
                $("#pass").val($("#cin").val());
                $("#passc").val($("#cin").val());
            });
            
            
            
            $("#form").submit( function (){
                var test = false;
                
                if ($("#pass").val() === $("#passc").val()) {
                    test = true;
                }
                return  test;
            });
         });
            

              
            
    </script><!---->
 
  <!-- End custom js for this page-->
        <!-- End custom js for this page-->
    </body>
</html>
