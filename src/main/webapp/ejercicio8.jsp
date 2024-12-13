<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Ejercicio 8 - Ivan Luque</title>
    <link rel="stylesheet" href="styles/main.css" />
  </head>
  <body>
  <form method="POST">
    <div style="display: flex">
      <select name="tapiceria" required>
        <option value="blanco">Blanco</option>
        <option value="negro">Negro</option>
        <option value="berenjena">Berenjena</option>
      </select>
      <select name="molduras">
        <option value="madera">Madera</option>
        <option value="carbono">Carbono</option>
      </select>
    </div>
    <button>Mostrar configuración</button>
  </form>

  <% if (request.getMethod().equals("POST")) { %>
    <%
      String tapiceria = request.getParameter("tapiceria");
      String molduras = request.getParameter("molduras");
    %>

    <p>Color de la tapicería: <%= tapiceria %></p>
    <p>Material de las molduras: <%= molduras %></p>
  <%}%>
  </body>
</html>
