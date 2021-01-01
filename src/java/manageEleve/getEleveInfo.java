/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package manageEleve;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tools.cnx;

/**
 *
 * @author SpyECho
 */
public class getEleveInfo extends HttpServlet {

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
            String ide = request.getParameter("ide");
            String req = "select nom , prenom, to_char(DATENAISSANCE, 'yyyy-mm-dd'),adresse,ville,CODEPOSTAL,EMAIL,TELEPHONE,IDNV  from Eleve e where idEleve = '" + ide + "'";
            try {

                ResultSet rs = cnx.getConnexion().createStatement().executeQuery(req);
                if (rs.next()) {
                    
                    request.setAttribute("nom", rs.getString(1));
                    request.setAttribute("prenom", rs.getString(2));
                    request.setAttribute("date", rs.getString(3));
                    request.setAttribute("adresse", rs.getString(4));
                    request.setAttribute("ville", rs.getString(5));
                    request.setAttribute("code", rs.getString(6));
                    request.setAttribute("mail", rs.getString(7));
                    request.setAttribute("tele", rs.getString(8));
                    request.setAttribute("niv", rs.getString(9));
                    String mat = "";                    
                    try {
                        Statement st = cnx.getConnexion().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
                        ResultSet rm = st.executeQuery("Select f.ID_MATIERE from MATIERE_ETUDIANT f where  ID_ELEVE = '"+ide+"'");
                        int i =0;
                        while (rm.next()) {
                            
                            mat+=rm.getString(1);
                            if (!rm.isLast()) {
                                mat+=",";
                            }
                            i++;
                        }
                        
                        
                    } catch (Exception e) {
                        System.out.println(e.fillInStackTrace()); 
                    }
                    mat += "";
                   // System.out.println(mat);
                        request.setAttribute("mati", mat);
                    
                    
                    request.getRequestDispatcher("modifieEleve.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("gestionEleve.jsp").forward(request, response);
                }
            } catch (Exception e) {
                e.fillInStackTrace();
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
