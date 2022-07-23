package Controller;

import Aplicacao.Produto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.ProdutoDAO;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;

public class ProdutoControllerAdm extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProdutoDAO produtoDAO = new ProdutoDAO();
        String acao = (String) request.getParameter("acao");
        int id;
        ArrayList<Produto> meusProdutos;

        Produto produto = new Produto();
        switch (acao) {
            case "mostrar":
                meusProdutos = produtoDAO.getListaProduto();
                request.setAttribute("meusProdutos", meusProdutos);
                RequestDispatcher mostrar = getServletContext().getRequestDispatcher("/viewListaProdAdm.jsp");
                mostrar.forward(request, response);
                break;
        }
    }
}
