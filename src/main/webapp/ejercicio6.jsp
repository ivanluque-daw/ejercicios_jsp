<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 6 - Ivan Luque</title>
    <link rel="stylesheet" href="styles/main.css" />
</head>
<body>
    <% request.setCharacterEncoding("UTF-8"); %>

    <form method="POST">
        <div style="display: flex">
            <input type="number" min="1" value="1" name="n" placeholder="Introduce un numero..." required />
            <button>Enviar</button>
        </div>
    </form>

    <% if (request.getMethod().equals("POST")) { %>
        <table>
            <thead>
                <tr>Multiplicador</tr>
                <tr></tr>
            <thead>
            <tbody>
                <% int n = Integer.parseInt(request.getParameter("n")); %>
                <% for (int i = 0; i <= 10; i++) { %>
                    <tr>
                        <th><% out.print(i); %></th>
                        <th><% out.print(n * i); %></th>
                    </tr>
                <%}%>
            </tbody>
        </table>
    <%}%>
</body>
</html>
