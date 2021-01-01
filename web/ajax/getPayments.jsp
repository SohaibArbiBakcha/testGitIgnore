<%@page import="tools.cnx"%>
<%@page import="java.sql.ResultSet"%>
<div class="card">
    <div class="card-body">
        <h4 class="card-title">Liste des élèves</h4>
        <div class="table-responsive pt-3">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>
                            IDeleve
                        </th>
                        <th>
                            Matiere
                        </th>
                        <th>
                            Mois Payé
                        </th>
                        <th>
                            Niveau de scolarité
                        </th>
                        <th>
                            Date de tretement 
                        </th>
                        <th>
                            Montant
                        </th>
                    </tr>
                </thead>
                <tbody >
                    <%
                        String ide = request.getParameter("id");
                        String nom = request.getParameter("nom");
                        String prenom = request.getParameter("prenom");
                        String Query = "select p.ID_ELEVE, m.MATIERE, p.MOIS_PAIEMENT, n.NV_SCOLAIRE, to_char(p.DATE_TRAITEMENT,'dd/mm/yyyy') , p.MONTANT"
                                + " from PAIEMENT_ETUDIANT p , MATIERE m , ELEVE e, NIVEAU_SCOLAIRE n"
                                + " where p.ID_MATIERE=m.IDM and p.ID_ELEVE = e.IDELEVE and e.IDNV = n.IDNV and p.ID_ELEVE = '" + ide + "'";
                        String Verficiation_Eleve = "select  e.ideleve , e.prenom ,e.nom , to_char(sysdate,'yyyy-mm-dd') , e.cinp , e.idnv from eleve e where e.ideleve like '" + ide + "' or (e.nom like '" + nom + "' and e.prenom like '" + prenom + "')";

                        try {
                            ResultSet rs_Verification = cnx.getConnexion().createStatement().executeQuery(Verficiation_Eleve);
                            if (rs_Verification.next()) {
                                ResultSet rs = cnx.getConnexion().createStatement().executeQuery(Query);
                                System.out.println("req \n" + Verficiation_Eleve + "\n" + Query);
                                if (rs.next()) {%>

                    <tr>
                        <td>
                            <%=rs.getString(1)%>
                        </td>
                        <td>
                            <%=rs.getString(2)%>
                        </td>
                        <td>
                            <%=rs.getString(3)%>
                        </td>
                        <td>
                            <%=rs.getString(4)%>
                        </td>
                        <td>
                            <%=rs.getString(5)%>
                        </td>
                        <td>
                            <%=rs.getString(6)%>
                        </td>
                    </tr>
                    <%
                    } else {
                        // if(Msg == "")    Msg = "L'etudiant n'as effectuer aucun Payment";
                    %>
                    <tr><td colspan="6"><h4 id="TEST" class="text-center ">Aucun paiement n'a été effectué </h4></td></tr>
                    <% }
                    %>
                </tbody>
            </table>
        </div>

        <!-- Button to Open the Modal -->
        <button id="Valider_Payment" type="button" class="btn btn-primary mt-2 " data-toggle="modal" data-target="#myModal">
            Passer au Payment
        </button>
        <!-- The Modal -->
        <div class="modal fade" id="myModal"
             data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true"
             >
            <div class="modal-dialog modal-dialog-centered modal-xl">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Valider Le Payment</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="col-12 grid-margin">

                            <div class="card-body">

                                <form class="form-sample" id="form" action="insertClient">


                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Prenom</label>
                                                <div class="col-sm-9">
                                                    <input type="text" value="<%=rs_Verification.getString(2)%>" name="prenom" class="form-control" disabled="">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Nom</label>
                                                <div class="col-sm-9">
                                                    <input type="text" value="<%=rs_Verification.getString(3)%>" name="nom" id="nom" class="form-control" disabled="">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Date</label>
                                                <div class="col-sm-9">
                                                    <input type="Date" value="<%=rs_Verification.getString(4)%>" id="d-system" name="ville" class="form-control" disabled="">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Matier</label>
                                                <div class="col-sm-9">
                                                    <select id="S_Matiere" name="eniveau" class="form-control">
                                                        <option value="" disabled="" selected="">---</option>
                                                        <%
                                                            String Matiere_Eleve = "select * from matiere where idm in (select id_matiere from matiere_etudiant where id_eleve like '" + rs_Verification.getString(1) + "' )";
                                                            ResultSet rs_Mat = cnx.getConnexion().createStatement().executeQuery(Matiere_Eleve);
                                                            while (rs_Mat.next()) {%>
                                                        <option value="<%=rs_Mat.getString(1)%>"><%=rs_Mat.getString(2)%></option> 
                                                        <%   }

                                                        %>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Mois a Payé</label>
                                                <div class="col-sm-9">
                                                    <select id="S_Mois" name="MoisPaye" class="form-control">
                                                        <option value="" disabled="" selected="">---</option>
                                                        <option value="1">Janvier</option>
                                                        <option value="2">Fevrier</option>
                                                        <option value="3">Mars</option>
                                                        <option value="4">Avril</option>
                                                        <option value="5">Mai</option>
                                                        <option value="6">Juin</option>
                                                        <option value="7">Juillet</option>
                                                        <option value="8">Août</option>
                                                        <option value="9">Septembre</option>
                                                        <option value="10">Octobre</option>
                                                        <option value="11">Novembre</option>
                                                        <option value="12">Decembre</option>                                            
                                                    </select>
                                                </div>
                                            </div>   
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Montant</label>
                                                <div class="col-sm-9">
                                                    <input type="number" id="mont"  class="form-control">
                                                </div>
                                            </div>
                                        </div> <br/>
                                        <div class="col-md-6 card">
                                            <!-- Recue  --> 
                                            <div class="card-body logo">
                                                <div class="row mb-4"> 
                                                    <div class="col-md-6"> 
                                                        <img src="<%=request.getContextPath()%>/images/Logo-nouvedddddau.png" />

                                                    </div>
                                                    <div class="col-md-6 "> 
                                                        <h6>Reçue pour paiement</h6> 
                                                        <h5>N Attestation du paiment : XXXXXX</h5>
                                                    </div>
                                                </div>
                                                <div class="row mb-2">
                                                    <h6>Bénéficiaire du paiement </h6>                                                   
                                                </div>

                                                
                                                    <div class="row">    <div class="col-md-5"><label>Nom</label> </div><div class="col-md-1">:</div><div class="col-md-6"><label id="l-Nom"><%=rs_Verification.getString(3)%></label></div>    </div>  
                                                    <div class="row">    <div class="col-md-5"><label>Prenom</label> </div><div class="col-md-1">:</div><div class="col-md-6"><label id="l-Prenom"><%=rs_Verification.getString(2)%></label></div>  </div>
                                                    <div class="row">    <div class="col-md-5"><label>Date</label> </div><div class="col-md-1">:</div><div class="col-md-6"><label id="l-Date"></label><%=rs_Verification.getString(4)%></div> </div>
                                                    <div class="row">    <div class="col-md-5"><label>Matiere</label> </div><div class="col-md-1">:</div><div class="col-md-6"><label id="l-Matiere">__________</label></div>  </div>
                                                    <div class="row">    <div class="col-md-5"><label>Mois a payé</label> </div><div class="col-md-1">:</div><div class="col-md-6"><label id="l-Mois">__________</label></div> </div>
                                                    <div class="row mb-xl-4">    <div class="col-md-5"><label>Montant</label> </div><div class="col-md-1">:</div><div class="col-md-6"><label id="l-Montant">__________ dh</label></div> </div>
                                                    <br><br>
                                                <div class="row row-footer">
                                                    <div class="col-md-9"></div>
                                                    <div class="col-md-3">Signature</div>
                                                </div>
                                                    

                                            </div>


                                            <div class="row justify-content-center">
                                                <input type="text" name="matieres" id="matieres" hidden="" value="" />

                                            </div>
                                            </form>
                                        </div>

                                        <!-- content-wrapper ends -->
                                        <!-- partial:partials/_footer.html -->

                                        <!-- partial -->
                                    </div>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                <button id="Executer" type="button" class="btn btn-primary">Executer</button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>



        <%  } else { %>
        <h1 class="text-center text-danger">L'eleve n'existe Pas</h1>
        <% }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>


