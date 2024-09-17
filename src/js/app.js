$(document).ready(function() {
    // Función para manejar el envío del formulario
    $("#filtre").submit(function(event) {
        event.preventDefault(); // Evitar la recarga de la página

        // Obtener valores de los controles deslizantes
        var minPrice = $("#prix").val();
        var maxPrice = $("#prix-max-value").text();
        var minKilometrage = $("#kilometrage-min-value").text();
        var maxKilometrage = $("#kilometrage-max-value").text();
        var minAnnees = $("#annees-min-value").text();
        var maxAnnees = $("#annees-max-value").text();

        // Petición AJAX para obtener vehículos filtrados
        $.ajax({
            url: 'vehicules_partial.php',
            method: 'GET',
            data: {
                prix_min: minPrice,
                prix_max: maxPrice,
                kilometrage_min: minKilometrage,
                kilometrage_max: maxKilometrage,
                annees_min: minAnnees,
                annees_max: maxAnnees
            },
            success: function(response) {
                // Actualizar el contenido de #vehiculesContainer
                $("#vehiculesContainer").html(response);
            }
        });
    });

    // Restablecer el filtro
    $("#reset-btn").click(function(event) {
        event.preventDefault(); // Evitar la recarga de la página

        // Restablecer los valores de los controles deslizantes
        $("#prix").val(0);
        $("#prix-min-value").text("0");
        $("#prix-max-value").text("150000");

        $("#kilometrage").val(0);
        $("#kilometrage-min-value").text("0");
        $("#kilometrage-max-value").text("250000");

        $("#annees").val(2001);
        $("#annees-min-value").text("2001");
        $("#annees-max-value").text("2025");

        // Volver a enviar el formulario
        $("#filtre").submit();
    });

    // Actualizar los valores de los labels de precio cuando cambia el rango de precio
    $("#prix").on("input", function() {
        $("#prix-min-value").text($(this).val());
    });

    // Actualizar los valores de los labels de kilometraje cuando cambia el rango de kilometraje
    $("#kilometrage").on("input", function() {
        $("#kilometrage-min-value").text($(this).val());
    });

    // Actualizar los valores de los labels de años cuando cambia el rango de años
    $("#annees").on("input", function() {
        $("#annees-min-value").text($(this).val());
    });
});



    const commentaireElement = document.getElementById("comentaire");
    if (commentaireElement) {
        maxLength(commentaireElement);
    }

    /** Allert buton témoignage */
    function confirmation() {
        var reponse = confirm('Souhaitez-vous envoyer les informations ?');
        return reponse === true;
    }

    function confirmation2() {
        var reponse = confirm('Êtes-vous sûr de vouloir supprimer les informations ?');
        return reponse === true;
    }

    // Imagenes
    // Seleccionar la imagen grande
    const largeImage = document.getElementById('largeImage');
    
    // Seleccionar todas las imágenes pequeñas
    const smallImages = document.querySelectorAll('.smallImage');

    // Añadir un evento de clic a cada imagen pequeña
    if (largeImage) {
        smallImages.forEach(function(image) {
            image.addEventListener('click', function() {
                // Cambiar el src y el alt de la imagen grande
                largeImage.src = this.src;
                largeImage.alt = this.alt;
            });
        });
    }
    
