<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Canadian Burguer</title>
    <!-- Importando estilo de background e título do arquivo CSS-->
    <link rel="stylesheet" href="css/css/BodyPage1.css">
    <link rel="stylesheet" href="css/css/Headerbutao.css">
    <link rel="stylesheet" href="css/css/Header.css">
</head>
<!--Criando o corpo do site-->
<body>
    <header class='inicio'>
        <% if (session.getAttribute("usuario") != null) { %>
            <jsp:forward page="Identificacao.jsp" />
        <%}%>
        <div class="container mt-2">
            <jsp:include page="header.jsp" /><p></p> 
        </div> 
            <jsp:include page="header.html" />
        </header>
    <div>
        <img class='image'  src="assets/header.jpg"/>
    </div>

    <main class='body'>
        <!--descrição-->
        <section class='summary'>
          <h2>Hamburgueres Deliciosos, Entregues para você</h2>
          <p>
            Escolha qual é o seu hamburguer favorito da nossa vasta seleção,
            eles servem para te satisfazerem tanto no almoço quanto no jantar.
          </p>
          <p>
            Produzido com alta qualidade de ingredientes, chega rapidinho e é claro,
            feito com chefes profissionais!!
          </p>
        </section>
    </main>
             
    </body>
    <jsp:include page="scripts.html" />  
    <br><footer>
        <br><center>Juliana Scapim e Jonathan Silva 15/05/2022</center>
    </footer>

</body>
</html>