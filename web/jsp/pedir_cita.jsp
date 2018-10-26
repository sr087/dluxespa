
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            /* Style the header with a grey background and some padding */
            .header {
              overflow: hidden;
              background-color: #f1f1f1;
              padding: 20px 10px;
            }

            /* Style the header links */
            .header a {
              float: left;
              color: black;
              text-align: center;
              padding: 12px;
              text-decoration: none;
              font-size: 18px; 
              line-height: 25px;
              border-radius: 4px;
            }

            /* Style the logo link (notice that we set the same value of line-height and font-size to prevent the header to increase when the font gets bigger */
            .header a.logo {
              font-size: 25px;
              font-weight: bold;
            }

            /* Change the background color on mouse-over */
            .header a:hover {
              background-color: #ddd;
              color: black;
            }

            /* Style the active/current link*/
            .header a.active {
              background-color: dodgerblue;
              color: white;
            }

            /* Float the link section to the right */
            .header-right {
              float: right;
            }

            /* Add media queries for responsiveness - when the screen is 500px wide or less, stack the links on top of each other */ 
            @media screen and (max-width: 500px) {
              .header a {
                float: none;
                display: block;
                text-align: left;
              }
              .header-right {
                float: none;
              }
            }
        </style>
    </head>
    <body>
        <div class="header">
            <a href="#" class="logo">D'Luxe Spa</a>
            <div class="header-right">
              <a href="/Santiago/">Inicio</a>
              <a href="Contacto">Contacto</a>
              <a href="Registro">Iniciar Sesión</a>
              <a class="active" href="Citas">Separar Cita</a>
            </div>
        </div>
        <div class="form">
            <h1>Formulario para pedir una cita</h1>
            <form action="/" method="post">
                <div class="nombre">
                    <label>
                        Nombre<span class="req">*</span>
                    </label>
                    <input name="nombre" type="text" required autocomplete="off"/>
                </div>
                <div class="fecha">
                    <label>
                        fecha<span class="req">*</span>
                    </label>
                    <input name="fecha" type="date" required autocomplete="off"/>
                </div>
                <div class="hora">
                    <label>
                        selecciona la hora para la cita<span class="req">*</span>
                    </label>
                    <input name="hora" type="time" required autocomplete="off"/>
                </div>
            </form>
        </div>
    </body>
</html>
