// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import Choices from "choices.js";

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


document.addEventListener("turbolinks:load", () => {
    const elements = document.querySelectorAll('.js-multiple');
    if (elements.length > 0) {
        elements.forEach((el) => {
            new Choices(el, {
                placeholder: true,
                removeItemButton: true,
                noResultsText: "Sin resultados",
                loadingText: "Cargando...",
                noChoicesText: "No hay elementos disponibles",
                itemSelectText: "Click para seleccionar",
                placeholderValue: "Categorías",
                searchPlaceholderValue: "Categorías",
                classNames: {
                    containerInner: 'px-3 py-3 rounded cursor-pointer mt-4 bg-main-gray',
                    input: "main-input"
                }
            });
        })
    }
})
