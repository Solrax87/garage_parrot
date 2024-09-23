<?php 
    require 'includes/functions.php';
    incluTemplates('header');
?>

<section class="container container-section">
    <h1>Véhicules d'occasion</h1>

    <!-- Formulario de filtro por coche -->
    <form id="filterForm">
        <label for="marque">Marque</label>
        <input type="text" id="marque" name="marque">

        <label for="annee_min">Année Min</label>
        <input type="number" id="annee_min" name="annee_min">

        <label for="annee_max">Année Max</label>
        <input type="number" id="annee_max" name="annee_max">

        <label for="kilometrage_max">Kilométrage Max</label>
        <input type="number" id="kilometrage_max" name="kilometrage_max">

        <label for="prix_min">Prix Min</label>
        <input type="number" id="prix_min" name="prix_min">

        <label for="prix_max">Prix Max</label>
        <input type="number" id="prix_max" name="prix_max">

        <button type="submit">Chercher</button>
    </form>

    <!-- Aquí se mostrarán los resultados -->
    <div id="vehicule-results">
        <?php $limite = 12; include 'includes/templates/vehicules.php'; ?>
    </div>
</section>

<!-- FFiltre AJAX -->
<script>
    document.getElementById('filterForm').addEventListener('submit', function(e) {
        e.preventDefault(); // Pour Eviter que le formulaire s'envoi de maniere traditionel

        const formData = new FormData(this);

        // Solicitud AJAX
        fetch('includes/templates/vehicules.php', {
            method: 'POST',
            body: formData
        })
        .then(response => response.text())
        .then(data => {
            document.getElementById('vehicule-results').innerHTML = data;
        })
        .catch(error => console.log('Error:', error));
    });
</script>


<!-- Footer -->
<?php 
        incluTemplates('footer'); 
?>
