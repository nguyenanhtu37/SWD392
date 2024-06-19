/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.EmailUtil;
import model.Enterprise;
import model.EnterpriseDB;
import model.Job;
import model.JobDB;

/**
 *
 * @author ASUS
 */
public class AcceptJob extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AcceptJob</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AcceptJob at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String jobId = request.getParameter("id");
        ArrayList<Job> jobs = (ArrayList<Job>) request.getAttribute("jobs");


        Job jobaccept = new Job(jobId, "Accept");
        jobaccept.acceptJob();
        String eId = request.getParameter("eId");
        Enterprise e = EnterpriseDB.getEnterAccforjob(eId);
        String acc  = e.getEnterpriseAccount();
        System.out.println(acc);
        EmailUtil.SendMailAccep(acc);
        ArrayList<Job> jobsNotAccepted = (ArrayList<Job>) JobDB.getListJobdonaccept();
        request.setAttribute("jobs", jobsNotAccepted);
        request.getRequestDispatcher("mainAdmin.jsp").forward(request, response);
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
//        int isAccept = 1;
//        String i = request.getParameter("id");
//        HttpSession session = request.getSession();
////        Job jobs = (ArrayList<Job>) request.getAttribute("jobs");
//////        String jobJD = jobs.;
////        
////        int id = -1;      
////        Job jobaccept = new Job(jobID, isAccept);
////        id = jobaccept.acceptJob();
//
//        request.getRequestDispatcher("mainAdmin.jsp").forward(request, response);
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
