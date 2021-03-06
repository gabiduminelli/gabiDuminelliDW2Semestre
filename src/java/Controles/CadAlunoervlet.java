/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controles;

import DAOs.DAOAluno;
import DAOs.DAOPessoa;
import Entidades.Aluno;
//import static Entidades.Aluno_.pessoaCpf;
import Entidades.Pessoa;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabi
 */
@WebServlet(name = "CadAlunoervlet", urlPatterns = {"/cadastroalunos"})
public class CadAlunoervlet extends HttpServlet {
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
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
            try {
            DAOAluno daoAluno = new DAOAluno();
            Aluno a = new Aluno();
            DAOPessoa daoPessoa = new DAOPessoa();
            Pessoa p = new Pessoa();
            int ra = Integer.parseInt(request.getParameter("ra"));
            Date data = sdf.parse(request.getParameter("data"));
            int cpf = Integer.parseInt(request.getParameter("pessoaCpf"));
            p = daoPessoa.listByCpf(cpf).get(0);
            a.setRaAluno(ra);
            a.setDataIngresso(data);
            a.setPessoaCpf(p);
            daoAluno.inserir(a);
            response.sendRedirect(request.getContextPath() + "/paginas/alunocad.jsp");

            
            } catch (ParseException ex) {
               
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
