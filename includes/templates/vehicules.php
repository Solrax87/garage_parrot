<?php
// Importación de conexión
require __DIR__ . '/../config/database.php'; 
$db = conectBD();

// Definir límite (si no está definido)
$limite = isset($limite) ? $limite : 9; 

// Obtención de parámetros de filtro de precio
$minPrice = isset($_GET['prix_min']) && is_numeric($_GET['prix_min']) ? (int)$_GET['prix_min'] : 0;
$maxPrice = isset($_GET['prix_max']) && is_numeric($_GET['prix_max']) ? (int)$_GET['prix_max'] : 1000000;

// Construir la consulta filtrada
$query = "SELECT * FROM vehicules WHERE prix >= ? AND prix <= ? LIMIT ?";
$stmt = mysqli_prepare($db, $query);
mysqli_stmt_bind_param($stmt, "iii", $minPrice, $maxPrice, $limite);
mysqli_stmt_execute($stmt);
$resultat = mysqli_stmt_get_result($stmt);

// Verificar si hay resultados
if (mysqli_num_rows($resultat) > 0) {
    echo '<div class="all-publicite">';
    while($vehicule = mysqli_fetch_assoc($resultat)): ?>
        <div class="publicite">
            <img loading="lazy" src="/images/<?php echo $vehicule['image1']; ?>" alt="image voiture">
            <div class="container-publicite">
                <h3><?php echo $vehicule['titre']; ?></h3>
                <h4><?php echo number_format($vehicule['kilometrage'], 0, '', '.'); ?> km</h4>
                <h4><?php echo 'Mise en Circulation / ' . $vehicule['date_circulation']; ?></h4>
                <h4><?php echo 'Carburant / ' . $vehicule['energie']?></h4>
                <p class="prix"><?php echo number_format($vehicule['prix'], 2, ',', '.'); ?> €</p>
                <a href="voiture.php?id=<?php echo $vehicule['id']; ?>" class="btn-yellow">
                    Voir Véhicule
                </a>
            </div>
        </div>
    <?php endwhile;
    echo '</div>';
} else {
    echo "Aucun véhicule trouvé.";
}
?>
