
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
