
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/registro.css" rel="stylesheet" type="text/css">
        <style>
            body {
                background-color: #474e5d;
            }
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
            body {
            font-family: Arial, Helvetica, sans-serif;
          }

          * {
            box-sizing: border-box;
          }

          /* style the container */
          .container {
            position: relative;
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px 0 30px 0;
          } 

          /* style inputs and link buttons */
          input,
          .btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 4px;
            margin: 5px 0;
            opacity: 0.85;
            display: inline-block;
            font-size: 17px;
            line-height: 20px;
            text-decoration: none; /* remove underline from anchors */
          }

          input:hover,
          .btn:hover {
            opacity: 1;
          }

          /* add appropriate colors to fb, twitter and google buttons */
          .fb {
            background-color: #3B5998;
            color: white;
          }

          .twitter {
            background-color: #55ACEE;
            color: white;
          }

          .google {
            background-color: #dd4b39;
            color: white;
          }

          /* style the submit button */
          input[type=submit] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
          }

          input[type=submit]:hover {
            background-color: #45a049;
          }

          /* Two-column layout */
          .col {
            float: left;
            width: 50%;
            margin: auto;
            padding: 0 50px;
            margin-top: 6px;
          }

          /* Clear floats after the columns */
          .row:after {
            content: "";
            display: table;
            clear: both;
          }

          /* vertical line */
          .vl {
            position: absolute;
            left: 50%;
            transform: translate(-50%);
            border: 2px solid #ddd;
            height: 175px;
          }

          /* text inside the vertical line */
          .vl-innertext {
            position: absolute;
            top: 50%;
            transform: translate(-50%, -50%);
            background-color: #f1f1f1;
            border: 1px solid #ccc;
            border-radius: 50%;
            padding: 8px 10px;
          }

          /* hide some text on medium and large screens */
          .hide-md-lg {
            display: none;
          }

          /* bottom container */
          .bottom-container {
            text-align: center;
            background-color: #666;
            border-radius: 0px 0px 4px 4px;
          }

          /* Responsive layout - when the screen is less than 650px wide, make the two columns stack on top of each other instead of next to each other */
          @media screen and (max-width: 650px) {
            .col {
              width: 100%;
              margin-top: 0;
            }
            /* hide the vertical line */
            .vl {
              display: none;
            }
            /* show the hidden text on small screens */
            .hide-md-lg {
              display: block;
              text-align: center;
            }
          }
          /* Full-width input fields */
            input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
          }

          /* Add a background color when the inputs get focus */
          input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
          }

          /* Set a style for all buttons */
          button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
          }

          button:hover {
            opacity:1;
          }

          /* Extra styles for the cancel button */
          .cancelbtn {
            padding: 14px 20px;
            background-color: #f44336;
          }

          /* Float cancel and signup buttons and add an equal width */
          .cancelbtn, .signupbtn {
            float: left;
            width: 50%;
          }

          /* Add padding to container elements */
          .container {
            padding: 16px;
          }

          /* The Modal (background) */
          .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: #474e5d;
            padding-top: 50px;
          }

          /* Modal Content/Box */
          .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
          }

          /* Style the horizontal ruler */
          hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
          }

          /* The Close Button (x) */
          .close {
            position: absolute;
            right: 35px;
            top: 15px;
            font-size: 40px;
            font-weight: bold;
            color: #f1f1f1;
          }

          .close:hover,
          .close:focus {
            color: #f44336;
            cursor: pointer;
          }

          /* Clear floats */
          .clearfix::after {
            content: "";
            clear: both;
            display: table;
          }

          /* Change styles for cancel button and signup button on extra small screens */
          @media screen and (max-width: 300px) {
            .cancelbtn, .signupbtn {
              width: 100%;
            }
          }
          footer {
                width: 100%;
                height: 40px;
                background-color: #222;
                color: #cccccc;
                text-align: center;
                padding-top: 18px;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <a href="#" class="logo">D'Luxe Spa</a>
            <div class="header-right">
                <a href="/Santiago/">Inicio</a>
              <a href="Contacto">Contacto</a>
              <a class="active" href="Registro">Iniciar Sesión</a>
              <a href="Citas">Separar Cita</a>
            </div>
        </div>
        <br>
        <hr>
        <div class="container">
            <form action="/action_page.php">
              <div class="row">
                <h2 style="text-align:center">Iniciar sesión con redes sociales o manualmente</h2>
                <div class="vl">
                  <span class="vl-innertext">or</span>
                </div>

                <div class="col">
                  <a href="#" class="fb btn">
                    <i class="fa fa-facebook fa-fw"></i> Iniciar sesión con Facebook
                   </a>
                  <a href="#" class="twitter btn">
                    <i class="fa fa-twitter fa-fw"></i> Iniciar sesión con Twitter
                  </a>
                  <a href="#" class="google btn"><i class="fa fa-google fa-fw">
                    </i> Iniciar sesión con Google+
                  </a>
                </div>

                <div class="col">
                  <div class="hide-md-lg">
                    <p>O iniciar sesión manuelmente:</p>
                  </div>

                  <input type="text" name="username" placeholder="Username" required>
                  <input type="password" name="password" placeholder="Password" required>
                  <input type="submit" value="Login">
                </div>

              </div>
            </form>
          </div>

        <div class="bottom-container">
          <div class="row">
            <div class="col">
              <!-- Button to open the modal -->
                <button onclick="document.getElementById('id01').style.display='block'">Crear Cuenta</button>

                <!-- The Modal (contains the Sign Up form) -->
                <div id="id01" class="modal">
                  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">Cerrar</span>
                  <form class="modal-content" action="/action_page.php">
                    <div class="container">
                      <h1>Crear Cuenta</h1>
                      <p>Por favor llene este formulario para crear una cuenta.</p>
                      <hr>
                      <label for="email"><b>Email</b></label>
                      <input type="text" placeholder="Enter Email" name="email" required>

                      <label for="psw"><b>Contraseña</b></label>
                      <input type="password" placeholder="Enter Password" name="psw" required>

                      <label for="psw-repeat"><b>Repetir Contraseña</b></label>
                      <input type="password" placeholder="Repeat Password" name="psw-repeat" required>

                      <label>
                        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Recordarme
                      </label>

                      <p>Si crea una cuenta usted acepta nuestros <a href="#" style="color:dodgerblue">Terminos y Condiciones</a>.</p>

                      <div class="clearfix">
                        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancelar</button>
                        <button type="submit" class="signup">Crear Cuenta</button>
                      </div>
                    </div>
                  </form>
                </div>
            </div>
            <div class="col">
              <a href="#" style="color:white" class="btn">¿Olvidó su contraseña?</a>
            </div>
          </div>
        </div> 
        <footer>Development by - D'Luxe Spa</footer>
        <script>
            // Get the modal
        var modal = document.getElementById('id01');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target === modal) {
                modal.style.display = "none";
            }
        };
        </script>
    </body>
    
</html>
