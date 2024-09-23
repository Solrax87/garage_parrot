<?php
    // Importación de la conexión
    require __DIR__ . '/../config/database.php'; 
    $db = conectBD();

    // Variables de filtro (compatibles con GET y POST)
    $marque = isset($_POST['marque']) ? $_POST['marque'] : '';
    $annee_min = isset($_POST['annee_min']) ? $_POST['annee_min'] : 0;
    $annee_max = isset($_POST['annee_max']) ? $_POST['annee_max'] : date('Y');
    $kilometrage_max = isset($_POST['kilometrage_max']) ? $_POST['kilometrage_max'] : 1000000;
    $minPrice = isset($_POST['prix_min']) ? $_POST['prix_min'] : 0;
    $maxPrice = isset($_POST['prix_max']) ? $_POST['prix_max'] : 0;  // Cambiar 1000000 por 0 para mejor control

    // Construcción de la consulta
    $query = "SELECT * FROM vehicules WHERE 1=1";

    // Filtro por marque
    if ($marque) {
        $query .= " AND marque LIKE '%" . mysqli_real_escape_string($db, $marque) . "%'";
    }

    // Filtro por année_min
    if ($annee_min) {
        $query .= " AND YEAR(date_circulation) >= $annee_min";
    }

    // Filtro por année_max
    if ($annee_max) {
        $query .= " AND YEAR(date_circulation) <= $annee_max";
    }

    // Filtro por kilometrage_max
    if ($kilometrage_max) {
        $query .= " AND kilometrage <= $kilometrage_max";
    }

    // Lógica para Prix Min y Prix Max
    if ($minPrice && !$maxPrice) {
        // Si solo se ingresa Prix Min, mostrar todos los vehículos a partir del Prix Min
        $query .= " AND prix >= $minPrice";
    } elseif (!$minPrice && $maxPrice) {
        // Si solo se ingresa Prix Max, mostrar todos los vehículos hasta el Prix Max
        $query .= " AND prix <= $maxPrice";
    } elseif ($minPrice && $maxPrice) {
        // Si se ingresan ambos, aplicar el filtro actual entre Prix Min y Prix Max
        $query .= " AND prix BETWEEN $minPrice AND $maxPrice";
    }

     // Verificar si existe una variable de límite, si no existe, asignar un valor por defecto
     if (isset($limite)) {
        $query .= " LIMIT $limite";
    } else {
        // Si no se especifica límite, mostrar todos los vehículos
        $query .= " LIMIT 12"; // O cualquier número adecuado para tu caso
    }

    // Ejecución de la consulta y manejo de errores
    $resultat = mysqli_query($db, $query);

    if (!$resultat) {
        // Mostrar el error de MySQL si la consulta falla
        echo "<p>Error en la consulta: " . mysqli_error($db) . "</p>";
        exit; // Terminar la ejecución si hay un error
    }
?>
<div class="all-publicite">
    <?php while($vehicule = mysqli_fetch_assoc($resultat)): ?>
    <div class="publicite">
        <img loading="lazy" src="/images/<?php echo $vehicule['image1']; ?>" alt="image voiture">
        <div class="container-publicite">
            <h3><?php echo $vehicule['titre']; ?></h3>
            <h4><?php echo number_format($vehicule['kilometrage'], 0, '', '.'); ?> km</h4>
            <h4><?php echo 'Mise en Circulation / ' . $vehicule['date_circulation']; ?></h4>
            <h4><?php echo 'Carburant / ' . $vehicule['energie']?></h4>
            <p class="prix"><?php echo number_format($vehicule['prix'], 2, ',', '.'); ?> €</p>
            <a href="voiture.php?id=<?php echo $vehicule['id']; ?>" class="btn-yellow">Voir Véhicule</a>
        </div>
    </div>
    <?php endwhile; ?>
</div>
