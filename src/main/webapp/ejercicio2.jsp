<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 2 - Ivan Luque</title>
    <link rel="stylesheet" href="styles/main.css" />
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String method = request.getMethod();

        if (method.equals("POST")) {
    %>
        <%
            Map languageMap = Map.of(
                "es", "Hola",
                "pt", "Olá",
                "en", "Hello"
            );
            String name = request.getParameter("name");
            String language = request.getParameter("language");

            if (name != null && !name.isEmpty()) {
        %>
            <p><% out.print(languageMap.get(language)); %> <% out.print(name); %></p>
        <%} else {%>
            <p>Introduce un nombre correctamente</p>
        <%}%>
    <%} else {%>
        <form method="POST">
            <div style="display: flex">
                <input type="text" name="name" placeholder="Introduce un nombre..." required />
                <select name="language" value="es" required>
                    <option value="es">Español</option>
                    <option value="pt">Portugués</option>
                    <option value="en">Inglés</option>
                </select>
            </div>
            <button>Enviar</button>
        </form>
    <%}%>
</body>
</html>
