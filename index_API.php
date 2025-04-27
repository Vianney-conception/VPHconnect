<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="author" content="NoS1gnal"/>
  <link rel="icon" href="../VPH/img/Logo-T Doré Petit sans ombre.png" type="image/png">
  <link href="../VPHconect/index.css" rel="stylesheet"/>
  <link rel="stylesheet" href="../VPHconect/index2.css">
  <title>Connexion</title>
</head>
<body>
<div class="login-form">
        <?php 
                if(isset($_GET['login_err']))
                {
                    $err = htmlspecialchars($_GET['login_err']);

                    switch($err)
                    {
                        case 'password':
                        ?>
        <div class="alert alert-danger">
            <strong>Erreur</strong> mot de passe incorrect
        </div>
        <?php
                        break;

                        case 'email':
                        ?>
        <div class="alert alert-danger">
            <strong>Erreur</strong> email incorrect
        </div>
        <?php
                        break;

                        case 'already':
                        ?>
        <div class="alert alert-danger">
            <strong>Erreur</strong> compte non existant
        </div>
        <?php
                        break;
                    }
                }
                ?>

<form action="../VPHconect/connexionAPI.php" method="post">
    <h2 class="text-center">Connexion</h2>
    <div class="form-group">
      <input type="email" name="email" class="form-control" placeholder="Email" required="required" autocomplete="off">
    </div>
    <div class="form-group">
      <input type="password" name="password" id="myInput" class="form-control" placeholder="Mot de passe" required="required" autocomplete="off">
      <img class="toggleImage" src="../VPH/img/MDPcache.svg" onclick="myFunction()" id="toggleImage">
    </div>
    <div class="form-group">
      <button type="submit" class="btn btn-primary btn-block">Connexion</button>
    </div>
  </form>
  <p class="text-center"><a href="../VPHconect/inscription.php">Inscription </a>|<a href="../vph"> Powerd by VPHconnect<a></p>
</div>
<script>
function myFunction() {
  var x = document.getElementById("myInput");
  var img = document.getElementById("toggleImage");
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