<?php


// Configuración de conexión a la base de datos
$servername = "nue.domcloud.co";  // O "89.58.31.246" si prefieres usar la IP
$username = "garage-parrot";      // Usuario de la base de datos
$password = "cl2s3vCRZ)-By16S1-"; // Contraseña de la base de datos 
$dbname = "garage_parrot";         // Asegúrate de reemplazar esto con el nombre real de tu base de datos

// Crear la conexión
$db = mysqli_connect($servername, $username, $password, $dbname);

// Verificar la conexión
if (!$db) {
    die("Pas connecté: " . mysqli_connect_error());
}


// function conectBD() : mysqli {
//     $db = mysqli_connect('localhost', 'root', '', 'garage_parrot');

//     if(!$db) {
//         echo "Pas connecté";
//         exit;
//     }

//     return $db;
// }