/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.pedido;

import DAO.ContratadoDAO;
import DAO.PedidoDAO;
import DAO.GenericDAO;
import DAO.PessoaDAO;
import DAO.ProdutoDAO;
import DAO.RotaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Pedido;
import model.Pessoa;

/**
 *
 * @author fbrcmmelo
 */
@WebServlet(name = "DadosPedido", urlPatterns = {"/DadosPedido"})
public class DadosPedido extends HttpServlet {

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

        try{
            Pedido oPedido = new Pedido();
            Date dataPedido = oPedido.getDataPedido();
            request.setAttribute("datapedido", dataPedido);
            
            PessoaDAO daopessoa = new PessoaDAO();
            request.setAttribute("pessoas", daopessoa.listar());
            
            GenericDAO daorota = new RotaDAO();
            request.setAttribute("rotas", daorota.listar());
            
            GenericDAO daocontratado = new ContratadoDAO();
            request.setAttribute("contratados", daocontratado.listar());
            
            GenericDAO daoproduto = new ProdutoDAO();
            request.setAttribute("produtos", daoproduto.listar());
            
            request.getRequestDispatcher("cadastros/pedido/cadastrarPedido.jsp").forward(request, response);
            
        } catch (Exception ex){
            System.out.println("Problemas ao listar Pedido! Erro: " + ex.getMessage());
            ex.printStackTrace();
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
