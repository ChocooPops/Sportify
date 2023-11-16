<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="Views/css/style2.css">
  <style>


  </style>
</head>

<body>
  <div class="div1">
    <img src="Views/images/logo.png"alt="running">
  </div>
  <div class="slideshow-container">

    <div class="mySlides fade">

      <label>Nom d'utilisateur</label>
      <input type="text">

    </div>

    <div class="mySlides fade">

      <label> Adresse mail</label>
      <input type="email">

    </div>

    <div class="mySlides fade">

      <label>Mot de passe</label>
      <input type="text">

    </div>

    <p><a class="prev" onclick="plusSlides(-1)">Precedent</a></p>
    <p><a class="next" onclick="plusSlides(1)">Avancer</a></p>

  </div>
  <br>
<div class="arrow">
  
</div>
  <!-- <div style="text-align:center">
    <span class="dot" onclick="currentSlide(1)"></span>
    <span class="dot" onclick="currentSlide(2)"></span>
    <span class="dot" onclick="currentSlide(3)"></span>
  </div> -->

  <script src="Views/js/index.js"></script>

</body>

</html>