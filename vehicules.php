<?php 
    require 'includes/functions.php';
    incluTemplates('header');
?>

<section class="container container-section">
        <h1>Véhicules d'occasion</h1>

            <!-- Formulaire filtre par voiture -->


        <?php  $limite = 12; include 'includes/templates/vehicules.php'; ?>
    </div>

</section>
<!-- Footer -->
<?php 
        incluTemplates('footer'); 
?>
