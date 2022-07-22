package Controlador;

import Aplicacao.Venda;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.VendaDAO;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;

public class VendaControllerAdm extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        VendaDAO vendaDAO = new VendaDAO();
        String acao = (String) request.getParameter("acao");
        int id;
        ArrayList<Venda> meusVendas;

        Venda venda = new Venda();
        switch (acao) {
            case "mostrar":
                meusVendas = vendaDAO.getListaVenda();
                request.setAttribute("meusVendas", meusVendas);
                RequestDispatcher mostrar = getServletContext().getRequestDispatcher("/viewListaVendAdm.jsp");
                mostrar.forward(request, response);
                break;

        }
    }
    
}