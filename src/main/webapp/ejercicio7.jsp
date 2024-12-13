<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Ejercicio 7 - Ivan Luque</title>
  <link rel="stylesheet" href="styles/main.css" />
</head>
<body>
  <% request.setCharacterEncoding("UTF-8"); %>

  <form method="POST">
    <div style="display: flex">
      <input type="number" min="1" max="12" name="month" placeholder="Introduce un mes..." required />
      <input type="number" name="year" placeholder="Introduce un año..." required />
    </div>
    <button>Enviar</button>
  </form>

  <% if (request.getMethod().equals("POST")) { %>
    <%
      int month = Integer.parseInt(request.getParameter("month"));
      int year = Integer.parseInt(request.getParameter("year"));

      Calendar calendar = Calendar.getInstance();
      calendar.set(Calendar.YEAR, year);
      calendar.set(Calendar.MONTH, month);

      int maxDays = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
    %>

    <table>
      <thead>
        <tr>
          <th>L</th>
          <th>M</th>
          <th>X</th>
          <th>J</th>
          <th>V</th>
          <th>S</th>
          <th>D</th>
        </tr>
      </thead>
      <tbody>
        <% for (int i = 0; i <= maxDays; i++) {%>
          <% if (i % 7 == 0) {
            out.println("</tr><tr>");
          } %>
          <% out.println("<td>" + i + "</td>"); %>
        <%}%>
      </tbody>
    </table>
  <%}%>
</body>
</html>
