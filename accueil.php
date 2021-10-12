<?php 
include './bd.php';

        $req = $conn->query('SELECT * FROM personnages');
?>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Squadfree Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <?php include './link.php'; ?>
</head>
<body>
<?php include './header.php'; ?>

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container" data-aos="fade-up">
      <h1> Bienvenue dans le monde du numerique </h1>
      <h2> Le numérique est notre avenir. Que ce soit dans le domaine de l'économie, de l'emploi ou de l'éducation, le numérique est un facteur indispensable à l'évolution, au progrès et à la pérennité de notre société. </h2>
      <a href="#about" class="btn-get-started scrollto"><i class="bx bx-chevrons-down"></i></a>
    </div>
  </section><!-- End Hero -->

  <main id="main">



    <!-- ======= Team Section ======= -->
    <section id="team" class="team">
      <div class="container">

        <div class="section-title" data-aos="fade-in" data-aos-delay="100">
          <h2>Personnages</h2>
          <p>Quelques grandes personnalités qui ont su faire leur place dans le domaine du numérique </p>
        </div>

        <div class="row">
            <?php
                while($data = $req->fetch()){
            ?>

          <div class="col-lg-4 col-md-6">
            <div class="member" data-aos="fade-up">
              <div class="pic">
                <a href="detailPersonnage.php?id=<?= $data['id']?>">
                  <img src="./upload/<?= $data['nom_image']?>"  class="img-fluid" alt="" style="width:300px;height:300px;">
                </a>
                </div>
              <div class="member-info">
                <h4><?= $data['nom_complet'] ?></h4>
                <span><?= $data['titre'] ?></span>
               
              </div>
            </div>
          </div>
          
          <?php
            } 
          ?>

        </div>

      </div>
    </section><!-- End Team Section -->


  </main><!-- End #main -->

  <?php include './js.php'; ?>


















<?php
     while($data = $req->fetch()){
?>

        <h2><?= $data['nom_complet'] ?></h2>
        <a href="detailPersonnage.php?id=<?= $data['id']?>"> 
            <img src="./upload/<?= $data['nom_image']?>" width="300px"><br>
        </a>
<?php
} 
?>

</body>
</html>


