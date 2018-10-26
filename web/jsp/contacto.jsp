<%-- 
    Document   : contacto
    Created on : 25/10/2018, 07:50:20 PM
    Author     : Daniela Morales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contacto</title>
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
            /* Style inputs with type="text", select elements and textareas */
            input[type=text], select, textarea {
                width: 100%; /* Full width */
                padding: 12px; /* Some padding */  
                border: 1px solid #ccc; /* Gray border */
                border-radius: 4px; /* Rounded borders */
                box-sizing: border-box; /* Make sure that padding and width stays in place */
                margin-top: 6px; /* Add a top margin */
                margin-bottom: 16px; /* Bottom margin */
                resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
            }

            /* Style the submit button with a specific background color etc */
            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            /* When moving the mouse over the submit button, add a darker green color */
            input[type=submit]:hover {
                background-color: #45a049;
            }

            /* Add a background color and some padding around the form */
            .container {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px;
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
            <a href="#default" class="logo">D'Luxe Spa</a>
            <div class="header-right">
              <a href="/Santiago/">Inicio</a>
              <a class="active" href="Contacto">Contacto</a>
              <a href="Registro">Iniciar Sesión</a>
              <a href="Citas">Separar Cita</a>
            </div>
        </div>
        
        <div class="container">
            <form action="action_page.php">

                <h1>Contáctanos</h1>
                
              <label for="fname">Nombre</label>
              <input type="text" id="fname" name="firstname" placeholder="Your name..">

              <label for="lname">Apellido   </label>
              <input type="text" id="lname" name="lastname" placeholder="Your last name..">

              <label for="country">País</label>
              <select id="country" name="country">
                <option value="australia">Colombia</option>
                <option value="canada">Canada</option>
                <option value="usa">USA</option>
              </select>

              <label for="subject">Mensaje</label>
              <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

              <input type="submit" value="Submit">

            </form>
        </div>
        <footer>Development by - D'Luxe Spa</footer>
    </body>
</html>
