<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="author" content="NoS1gnal"/>
  <link rel="icon" href="../VPH/img/Logo-T Doré Petit sans ombre.png" type="image/png">
  <link href="index.css" rel="stylesheet"/>
  <link rel="stylesheet" href="index2.css">
  <title>Inscription</title>
</head>
<body>
<div class="login-form">
        <?php 
                if(isset($_GET['reg_err']))
                {
                    $err = htmlspecialchars($_GET['reg_err']);

                    switch($err)
                    {
                        case 'success':
                    header('Location: connexion.php');
                    exit();

                        ?>
        <div class="alert alert-success">
            <strong>Succès</strong> inscription réussie !
            
        </div>
        <?php
                        break;

                        case 'password':
                        ?>
        <div class="alert alert-danger">
            <strong>Erreur</strong> mot de passe différent
        </div>
        <?php
                        break;

                        case 'email':
                        ?>
        <div class="alert alert-danger">
            <strong>Erreur</strong> email non valide
        </div>
        <?php
                        break;

                        case 'email_length':
                        ?>
        <div class="alert alert-danger">
            <strong>Erreur</strong> email trop long
        </div>
        <?php 
                        break;

                        case 'pseudo_length':
                        ?>
        <div class="alert alert-danger">
            <strong>Erreur</strong> pseudo trop long
        </div>
        <?php 
                        case 'already':
                        ?>
        <div class="alert alert-danger">
            <strong>Erreur</strong> compte deja existant
        </div>
        <?php 

                    }
                }
                ?>

<form action="inscription_traitement.php" method="post">
    <h2 class="text-center">Inscription</h2>
    <div class="form-group">
      <input type="text" name="pseudo" class="form-control" placeholder="Pseudo" required="required" autocomplete="off">
    </div>
    <div class="form-group">
      <input type="email" name="email" class="form-control" placeholder="Email" required="required" autocomplete="off">
    </div>
    <div class="form-group">
      <input type="password" name="password" id="myInput1" class="form-control" placeholder="Mot de passe" required="required" autocomplete="off">
      <img class="toggleImage" src="../VPH/img/MDPcache.svg" onclick="myFunction1()" id="toggleImage1">
    </div>
    <div class="form-group">
      <input type="password" name="password_retype" id="myInput2" class="form-control" placeholder="Re-tapez le mot de passe" required="required" autocomplete="off">
      <img class="toggleImage" src="../VPH/img/MDPcache.svg" onclick="myFunction2()" id="toggleImage2">
    </div>

    <div class="form-group">

   </div>

    <div class="form-group">
      <button type="submit" class="btn btn-primary btn-block">Inscription</button>
    </div>
  </form>
</div>
<script>
function myFunction1() {
  var x = document.getElementById("myInput1");
  var img = document.getElementById("toggleImage1");
  if (x.type === "password") {
    x.type = "text";
    img.src = "../VPH/img/MDPmontre.svg";
  } else {
    x.type = "password";
    img.src = "../VPH/img/MDPcache.svg";
  }
}

function myFunction2() {
  var x = document.getElementById("myInput2");
  var img = document.getElementById("toggleImage2");
  if (x.type === "password") {
    x.type = "text";
    img.src = "../VPH/img/MDPmontre.svg";
  } else {
    x.type = "password";
    img.src = "../VPH/img/MDPcache.svg";
  }
}
</script>
</body>
</html>