
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <style>
            body {
                background-color: #474e5d;
            }
            .padre {
                background-color: white; opacity: 0.2;
                color: #222;
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
            /* Position the image container (needed to position the left and right arrows) */
            .container {
              position: relative;
              width: 90%;
              
            }

            /* Hide the images by default */
            .mySlides {
              display: none;
            }

            /* Add a pointer when hovering over the thumbnail images */
            .cursor {
              cursor: pointer;
            }

            /* Next & previous buttons */
            .prev,
            .next {
              cursor: pointer;
              position: absolute;
              top: 40%;
              width: auto;
              padding: 16px;
              margin-top: -50px;
              color: white;
              font-weight: bold;
              font-size: 20px;
              border-radius: 0 3px 3px 0;
              user-select: none;
              -webkit-user-select: none;
            }

            /* Position the "next button" to the right */
            .next {
              right: 0;
              border-radius: 3px 0 0 3px;
            }

            /* On hover, add a black background color with a little bit see-through */
            .prev:hover,
            .next:hover {
              background-color: rgba(0, 0, 0, 0.8);
            }

            /* Number text (1/3 etc) */
            .numbertext {
              color: #f2f2f2;
              font-size: 12px;
              padding: 8px 12px;
              position: absolute;
              top: 0;
            }

            /* Container for image text */
            .caption-container {
              text-align: center;
              background-color: #222;
              padding: 2px 16px;
              color: white;
            }

            .row:after {
              content: "";
              display: table;
              clear: both;
            }

            /* Six columns side by side */
            .column {
              float: left;
              width: 16.66%;
            }

            /* Add a transparency effect for thumnbail images */
            .demo {
              opacity: 0.6;
            }

            .active,
            .demo:hover {
              opacity: 1;
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
              <a class="active" href="/Santiago/">Inicio</a>
              <a href="Contacto">Contacto</a>
              <a href="Registro">Iniciar Sesión</a>
              <a href="Citas">Separar Cita</a>
            </div>
        </div>
        <center>
            <div class="padre">
                <div class="titulo">
                    <h1>¡Bienvenido a D'Luxe Spa!</h1>
                </div>
                <div class="descripcion">
                    <p>D'Luxe Spa es el nombre de un lavadero de vehículos. La plataforma web le permite al usuario 
                        registrarse y separar su cita con anteioridad</p>
                    <p>¡Anímate y sé parte de nuestro lavadero! y podrás disfrutar de la experiencia única de 
                        nuestra plataforma.</p>
                </div>
            </div>
            <!-- Container for the image gallery -->
        <div class="container">

          <!-- Full-width images with number text -->
          <div class="mySlides">
            <div class="numbertext">1 / 6</div>
              <img src="https://www.bardahl.com.mx/wp-content/uploads/2016/11/Lavar-Encerar-Auto.jpg" style="width:100%">
          </div>

          <div class="mySlides">
            <div class="numbertext">2 / 6</div>
              <img src="https://ideasdenegocios.net/wp-content/uploads/2018/04/negocio-lavado-auto.png" style="width:100%">
          </div>

          <div class="mySlides">
            <div class="numbertext">3 / 6</div>
              <img src="https://cuponassets.cuponatic-latam.com/backendPe/uploads/imagenes_descuentos/51736/ef00c65e225fe008bd477968ddebf49ac189ab13.S.jpg" 
                   style="width:100%">
          </div>

          <div class="mySlides">
            <div class="numbertext">4 / 6</div>
              <img src="https://src.soymotero.net/images/45799.jpg" style="width:100%">
          </div>

          <div class="mySlides">
            <div class="numbertext">5 / 6</div>
              <img src="https://diagnostiya.com/wp-content/uploads/2017/09/limpiezamoto.jpg" style="width:100%">
          </div>

          <div class="mySlides">
            <div class="numbertext">6 / 6</div>
              <img src="https://noticias.amv.es/wp-content/uploads/consejos-amv-limpieza-moto.jpg" style="width:100%">
          </div>

          <!-- Next and previous buttons -->
          <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
          <a class="next" onclick="plusSlides(1)">&#10095;</a>

          <!-- Image text -->
          <div class="caption-container">
            <p id="caption"></p>
          </div>

          <!-- Thumbnail images -->
          <div class="row">
            <div class="column">
              <img class="demo cursor" src="https://www.bardahl.com.mx/wp-content/uploads/2016/11/Lavar-Encerar-Auto.jpg" 
                   style="width:100%" onclick="currentSlide(1)" alt="Calidad">
            </div>
            <div class="column"> 
              <img class="demo cursor" src="https://ideasdenegocios.net/wp-content/uploads/2018/04/negocio-lavado-auto.png" 
                   style="width:100%" onclick="currentSlide(2)" alt="Buen_servicio">
            </div>
            <div class="column">
              <img class="demo cursor" src="https://cuponassets.cuponatic-latam.com/backendPe/uploads/imagenes_descuentos/51736/ef00c65e225fe008bd477968ddebf49ac189ab13.S.jpg" 
                   style="width:100%" 
                   onclick="currentSlide(3)" alt="Limpieza">
            </div>
            <div class="column">
              <img class="demo cursor" src="https://src.soymotero.net/images/45799.jpg" style="width:100%" onclick="currentSlide(4)" alt="Northern Lights">
            </div>
            <div class="column">
              <img class="demo cursor" src="https://diagnostiya.com/wp-content/uploads/2017/09/limpiezamoto.jpg" style="width:100%" onclick="currentSlide(5)" alt="Nature and sunrise">
            </div> 
            <div class="column">
              <img class="demo cursor" src="https://noticias.amv.es/wp-content/uploads/consejos-amv-limpieza-moto.jpg" style="width:100%" onclick="currentSlide(6)" alt="Snowy Mountains">
            </div>
          </div>
        </div>
        </center>
        <footer>Development by - D'Luxe Spa</footer>
        <script>
            var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}
        </script>
    </body>
</html>
