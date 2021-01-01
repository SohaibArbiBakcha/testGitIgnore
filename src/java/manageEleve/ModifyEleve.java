/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package manageEleve;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tools.cnx;

/**
 *
 * @author SpyECho
 */
public class ModifyEleve extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String ide, nome, Prenome, naissane, Adresse, Villee, Codepse, maile, telee, nive, matiere[];

            ide = request.getParameter("ide");
            nome = request.getParameter("enom");
            Prenome = request.getParameter("eprenom");
            naissane = request.getParameter("edaten");
            Adresse = request.getParameter("eadresse");
            Villee = request.getParameter("ville");
            Codepse = request.getParameter("ecodepostal");
            maile = request.getParameter("eemail");
            telee = request.getParameter("etelephone");
            nive = request.getParameter("eniveau");
            matiere = request.getParameter("matieres").split(",");

            String update = "update Eleve set nom = '" + nome + "', prenom = '" + Prenome + "',  DATENAISSANCE = to_date('" + naissane + "','yyyy-mm-dd'), Adresse = '" + Adresse + "', ville =  '" + Villee + "', CODEPOSTAL =" + Codepse + ", TELEPHONE = '" + telee + "', Email = '" + maile + "', idnv = '" + nive + "' where idEleve = '" + ide + "'   ";
            System.out.println(update);

            try {
                int ok = cnx.getConnexion().createStatement().executeUpdate(update);
                int del = cnx.getConnexion().createStatement().executeUpdate("delete from MATIERE_ETUDIANT where ID_ELEVE = '"+ide+"'");
                System.out.println("del "+del);
                if (ok > 0) {
                    if (matiere.length > 0) {
                        
                        System.out.println("matiere" + matiere.length);
                        for (int j = 0; j < matiere.length; j++) {
                            
                            String reqMatiere_Etudiant = "insert into MATIERE_ETUDIANT values ('"+ide+"','" + matiere[j] + "') ";
                            System.out.println(reqMatiere_Etudiant);
                            cnx.getConnexion().createStatement().executeQuery(reqMatiere_Etudiant);
                        }

                    }
                }
                request.setAttribute("update", "l'élève " + nome + " " + Prenome + " est bien modifier ");
                request.getRequestDispatcher("gestionEleve.jsp").forward(request, response);
            } catch (Exception e) {
                System.out.println(e.fillInStackTrace());
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
