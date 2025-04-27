<?php
session_start();
require_once 'config.php';

if (!isset($_SESSION['user'])) {
    header('Location:index.php');
    die();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];
    $pseudo = $_POST['pseudo'];
    $email = $_POST['email'];

    
    if (isset($_POST['reset_password'])) {
        $password = '$2y$12$RziKfACFbHH38VpzPAAmj.a/21ovK./yAoWsZRA5p9MWrvfNTbCYq'; // Nouveau hachage de mot de passe
        $req = $bdd->prepare('UPDATE utilisateur SET password = ? WHERE id = ?');
        $req->execute(array($password, $id));
    } else {
        $req = $bdd->prepare('UPDATE utilisateur SET pseudo = ?, email = ? WHERE id = ?');
        $req->execute(array($pseudo, $email, $id));
    }

    header('Location: moderateur.php');

    if ($data['id'] == 1) {
        header('Location: moderateur.php');
    } else {
        header('Location: ../VPH/index.php');
    }
    die();
}
$req = $bdd->prepare('SELECT * FROM id');
if ($req !== 1){
    header('Location: deconnexion.php?prov=Gervoflix"');
}
$req = $bdd->prepare('SELECT * FROM utilisateur');
$req->execute();
$data = $req->fetchAll();
?>

<!doctype html>
<html lang="fr">

<head>
    <title>Espace Moderateur</title>
    <link rel="icon" href="../VPH/img/Logo-T Doré Petit sans ombre.png" type="image/png">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<style>
        :root {
            --doré: #daa520;
            --gris1: #3d3346;
            --gris1bis: #3e3b4e;
            --gris2: #4c4c57;
            --doré2: #fcb400;
            --text: #d2d2ff;
        }

        body {
            background-color: var(--gris2);
            color: var(--text);
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            margin: 50px auto;
            max-width: 600px;
            padding: 20px;
            background-color: var(--gris1);
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }

        h1 {
            color: var(--doré);
            margin: 0;
            padding: 10px 0;
            text-align: center;
        }

        .btn {
            background-color: var(--gris1bis);
            color: var(--text);
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: var(--gris1);
        }

        .text-center {
            text-align: center;
        }

        .trait {
            border: solid 2px white;
            border-radius: 2em;
            margin-bottom: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .btn-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            margin-top: 20px;
        }
    </style>
<body>
    <div class="container">
        <h1>Bonjour <?php echo isset($data[0]['pseudo']) ? $data[0]['pseudo'] : ''; ?> !</h1>
        <div class="trait"></div>
        <div class="btn-container">
            <div class="text-center">
                <a href="deconnexion.php" class="btn">Déconnexion</a>
            </div>
        </div>
    </div>
    <div class="container">
        <h2>Liste des utilisateurs:</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Pseudo</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($data as $user) { ?>
                    <tr>
                        <form method="POST" action="moderateur.php">
                            <td><?php echo $user['id']; ?></td>
                            <td><input type="text" name="pseudo" value="<?php echo $user['pseudo']; ?>"></td>
                            <td><input type="email" name="email" value="<?php echo $user['email']; ?>"></td>
                            <td>
                                <input type="hidden" name="id" value="<?php echo $user['id']; ?>">
                                <input type="submit" value="Modifier">
                                <input type="submit" name="reset_password" value="Réinitialiser MDP">
                                <button onclick="deleteUser(<?php echo $user['id']; ?>)">Supprimer</button>
                            </td>
                        </form>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>
<script>
    function deleteUser(userId) {
        if (confirm("Êtes-vous sûr de vouloir supprimer cet utilisateur ?")) {
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "delete_user.php", true);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    window.location.reload();
                }
            };
            xhr.send("id=" + userId);
        }
    }
</script>

</html>
