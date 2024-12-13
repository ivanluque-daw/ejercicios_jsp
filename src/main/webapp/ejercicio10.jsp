<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Ejercicio 10 - Ivan Luque</title>
  </head>
  <body>
    <h1 style="text-align: center; margin-top: 25px">Máquina de helados</h1>
    <form method="POST">
      <section style="max-width: 1000px; margin: 0 auto; display: flex; gap: 15px;">
        <article style="width: 100%">
          <img style="width: 100%" height="200" src="https://chocolatestorras.com/wp-content/uploads/2021/08/Chocolate-bitter.jpg" />
          <div style="display: flex; align-items: center; justify-content: center; gap: 5px; margin-top: 5px">
            <label>Chocolate</label>
            <input type="text" name="chocolate" required />
            <span>%</span>
          </div>
        </article>
        <article style="width: 100%">
          <img style="width: 100%" height="200" src="https://idescubre.fundaciondescubre.es/files/2020/04/Foto-recurso-1-scaled.jpg" />
          <div style="display: flex; align-items: center; justify-content: center; gap: 5px; margin-top: 5px">
            <label>Fresa</label>
            <input type="text" name="fresa" required />
            <span>%</span>
          </div>
        </article>
        <article style="width: 100%">
          <img style="width: 100%" height="200" src="https://s3.ppllstatics.com/diariovasco/www/multimedia/202003/31/media/cortadas/gastronomia-vainilla-k89E-RAVzEeFdQPnrqbfrfjN882O-1248x770@Diario%20Vasco.jpg" />
          <div style="display: flex; align-items: center; justify-content: center; gap: 5px; margin-top: 5px">
            <label>Vainilla</label>
            <input type="text" name="vainilla" required />
            <span>%</span>
          </div>
        </article>
      </section>
      <button style="margin: 0 auto; display: block; margin-top: 25px">Preparar helado</button>
    </form>

    <section style="max-width: 1000px; margin: 0 auto;">
      <% if (request.getMethod().equals("POST")) { %>
        <%
          int chocolate = Integer.parseInt(request.getParameter("chocolate"));
          int fresa = Integer.parseInt(request.getParameter("fresa"));
          int vainilla = Integer.parseInt(request.getParameter("vainilla"));

          int rest = 100 - (chocolate + fresa + vainilla);
        %>

        <h2>Aquí tiene su tarrina de helado</h2>
        <div style="border: 4px solid red; height: 250px; overflow: hidden">
          <div style="background: white; height: <% out.print(rest); %>%"></div>
          <div style="background: brown; height: <% out.print(chocolate); %>%"></div>
          <div style="background: rosybrown; height: <% out.print(fresa); %>%"></div>
          <div style="background: yellow; height: <% out.print(vainilla); %>%"></div>
        </div>
      <%}%>
    </section>
  </body>
</html>
