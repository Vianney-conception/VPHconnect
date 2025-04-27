<?php 
    session_start();
    session_destroy(); 
    if (isset($_GET['prov'])) {
        $prov = $_GET['prov'];

        if ($prov == 'Gervoflix') {
            
            header('Location: ../Gervociné/Acceuil.php');
            exit();
        }


        if ($prov == 'index') {
            
            header('Location: ../VPH/index.php');
            exit();
        }
    }else{
    header('Location:index.php'); 
    die();
    }