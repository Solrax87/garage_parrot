// Espera a que el DOM esté completamente cargado
document.addEventListener('DOMContentLoaded', function () {

    // Define la función maxLength
    function maxLength(element) {
        const max = element.getAttribute('maxlength');
        element.addEventListener('input', function () {
            if (element.value.length > max) {
                element.value = element.value.slice(0, max); // Corta el texto al límite máximo permitido
            }
        });
    }

    // Asegúrate de que el elemento existe antes de llamar a maxLength
    const commentaireElement = document.getElementById("comentaire");
    if (commentaireElement) {
        maxLength(commentaireElement);
    }

    /** Alerta botón témoignage */
    function confirmation() {
        return confirm('Souhaitez-vous envoyer les informations ?');
    }

    function confirmation2() {
        return confirm('Êtes-vous sûr de vouloir supprimer les informations ?');
    }

    // Imagenes
    const largeImage = document.getElementById('largeImage');
    const smallImages = document.querySelectorAll('.smallImage');

    // Añadir un evento de clic a cada imagen pequeña si la imagen grande existe
    if (largeImage) {
        smallImages.forEach(function (image) {
            image.addEventListener('click', function () {
                largeImage.src = this.src;
                largeImage.alt = this.alt;
            });
        });
    }

});
