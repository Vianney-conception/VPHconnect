<?php
session_start();
require_once 'config.php';

if (!isset($_SESSION['user'])) {
    header('Location:index.php');
    die();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];

    $req = $bdd->prepare('DELETE FROM utilisateur WHERE id = ?');
    $req->execute([$id]);
}
