/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package manageUser;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tools.cnx;

/**
 *
 * @author ChiHab
 */
public class ajouterUser extends HttpServlet {

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
            
           // out.print("hello");
            String cin, nomu, Prenomu, mail, typeU, mdp;
            
            cin = request.getParameter("cin");
            nomu = request.getParameter("nomu");
            Prenomu = request.getParameter("prenomu");
            mail = request.getParameter("mailu");
            typeU = request.getParameter("typeu");
            mdp = request.getParameter("mdpu");
            
            String reqUser = "insert into sbuser values('" + cin + "','" + nomu + "','" + Prenomu + "','" + mdp + "','" + mail + "','" + typeU + "','active')";
                        System.out.println(reqUser);
            try {
                
                int ok = cnx.getConnexion().createStatement().executeUpdate(reqUser);
                if (ok>0) {
                    request.setAttribute("ajouteuser", "L'employer " + nomu + " " +Prenomu  + " est ajouté !");
                }
                request.getRequestDispatcher("ajouterUser.jsp").forward(request, response);
                System.out.println("ok" + ok);
                
                

            }catch (IOException | SQLException | ServletException e) {
             e.fillInStackTrace();}
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
