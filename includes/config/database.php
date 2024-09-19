<?php


// Configuración de conexión a la base de datos
$servername = "nue.domcloud.co";  // O "89.58.31.246" si prefieres usar la IP
$username = "garage-parrot";      // Usuario de la base de datos
$password = "cl2s3vCRZ)-By16S1-"; // Contraseña de la base de datos 
$dbname = "garage_parrot";         // Asegúrate de reemplazar esto con el nombre real de tu base de datos



function conectBD() : mysqli {
    $db = mysqli_connect($servername, $username, $password, $dbname);

    if(!$db) {
        echo "Pas connecté";
        exit;
    }

    return $db;
}
?>