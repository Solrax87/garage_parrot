<?php
// Configuración de conexión a la base de datos
$servername = "nue.domcloud.co";  
$username = "garage-parrot";      
$password = "cl2s3vCRZ)-By16S1-"; 
$dbname = "garage_parrot_db";         

function conectBD() : mysqli {
    global $servername, $username, $password, $dbname; // Declara las variables como globales

    $db = mysqli_connect($servername, $username, $password, $dbname);

    if (!$db) {
        echo "Pas connecté: " . mysqli_connect_error();
        exit;
    }

    return $db;
}
?>
