<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Ejercicio 4 - Ivan Luque</title>
    <link rel="stylesheet" href="styles/main.css" />
  </head>
  <body>
  <%
    request.setCharacterEncoding("UTF-8");
    String usd = request.getParameter("usd");
  %>
  <form method="POST">
    <div style="display: flex">
      <input type="number" min="0" step="0.01" name="usd" value="<% out.print(usd); %>" placeholder="Introduce dólares..." required />
      <button>Enviar</button>
    </div>
    <%
      Double eur = 0.0;

      if (usd != null) {
        eur = Double.valueOf(usd) * 0.95;
    %>
        <p>Euros: <% out.print(eur); %> €</p>
    <%}%>
  </form>
  </body>
</html>
