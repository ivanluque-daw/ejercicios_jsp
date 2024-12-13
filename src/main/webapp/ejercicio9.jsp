<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Ejercicio 9 - Ivan Luque</title>
    <link rel="stylesheet" href="styles/main.css" />
    <style>
      td { width: 40px; height: 40px; }
      .white { background-color: #f0d9b5; }
      .black { background-color: #b58863; }
    </style>
  </head>
  <body>
    <table>
<%
    int alfilF = (int)(Math.random() * 8);
    int alfilC = (int)(Math.random() * 8);
    int caballoC, caballoF;

    do {
      caballoC = (int)(Math.random() * 8);
      caballoF = (int)(Math.random() * 8);
    } while (caballoC == alfilC && caballoF == alfilF);

    for (int i = 8; i >= 1; i--) {
      out.println("<tr>");
      for (int j = 0; j < 8; j++) {
        String clase = ((i + j) % 2 == 0) ? "white" : "black";
        out.println("<td class='" + clase + "'>");
        if (i - 1 == alfilF && j == alfilC) {
          out.println("&#9815;");
        } else if (i - 1 == caballoF && j == caballoC) {
          out.println("&#9816;");
        }
        out.println("</td>");
      }
      out.println("</tr>");
    }
    %>
    </table>
  </body>
</html>
