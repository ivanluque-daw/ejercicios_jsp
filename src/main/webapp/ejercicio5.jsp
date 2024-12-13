<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.math.MathContext" %>
<%@ page import="java.math.RoundingMode" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Ejercicio 5 - Ivan Luque</title>
  <link rel="stylesheet" href="styles/main.css" />
</head>
<body>
  <% request.setCharacterEncoding("UTF-8"); %>

  <form method="POST">
    <div style="display: flex">
      <input type="number" name="a" placeholder="a" required />
      <input type="number" name="b" placeholder="b" required />
      <input type="number" name="c" placeholder="c" required />
    </div>

    <button>Enviar</button>
  </form>

  <% if (request.getMethod().equals("POST")) { %>
  <%
    // Me he guiado de aqui: https://www.ivanalbizu.eu/blog/ecuacion-de-segundo-grado-en-java/

    BigDecimal x1 = BigDecimal.ZERO;
    BigDecimal x2 = BigDecimal.ZERO;

    BigDecimal a = new BigDecimal(request.getParameter("a"));
    BigDecimal b = new BigDecimal(request.getParameter("b"));
    BigDecimal c = new BigDecimal(request.getParameter("c"));

    MathContext mc = new MathContext(10, RoundingMode.HALF_UP);

    BigDecimal discriminante = b.pow(2).subtract(new BigDecimal(4).multiply(a).multiply(c));

    if (discriminante.compareTo(BigDecimal.ZERO) >= 0) {
      BigDecimal raiz = discriminante.sqrt(mc);

      x1 = b.negate().add(raiz).divide(new BigDecimal(2).multiply(a), mc);
      x2 = b.negate().subtract(raiz).divide(new BigDecimal(2).multiply(a), mc);
    }
  %>

  <p>Resultado de x1: <%= x1 %></p>
  <p>Resultado de x2: <%= x2 %></p>
  <%}%>
</body>
</html>
