<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Ejercicio 3 - Ivan Luque</title>
    <link rel="stylesheet" href="styles/main.css" />
  </head>
  <body>
  <%
    request.setCharacterEncoding("UTF-8");
    String method = request.getMethod();

    if (method.equals("POST")) {
  %>
    <%
      Double test1 = Double.valueOf(request.getParameter("test1"));
      Double test2 = Double.valueOf(request.getParameter("test2"));
      Double test3 = Double.valueOf(request.getParameter("test3"));

      Double median = (double) Math.round((test1 + test2 + test3) / 3 * 100) / 100;
    %>
    <p><b>Mediana:</b> <% out.print(median); %></p>
  <%} else {%>
    <form method="POST">
      <div style="display: flex">
        <input style="width: 100%" type="number" min="0" max="10" step="0.05" name="test1" value="5" placeholder="Primera nota..." required />
        <input style="width: 100%" type="number" min="0" max="10" step="0.05" name="test2" value="5" placeholder="Segunda nota..." required />
        <input style="width: 100%" type="number" min="0" max="10" step="0.05" name="test3" value="5" placeholder="Tercera nota..." required />
      </div>
      <button style="width: 100%">Enviar</button>
    </form>
  <%}%>
  </body>
</html>
