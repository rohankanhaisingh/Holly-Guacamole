const productsGridContainer = document.querySelector(".products-grid-container")

function generateProductItem(itemName, itemThumbnail, itemPrice, itemDescription, itemOptionalDescription) {
	productsGridContainer.innerHTML += `
		<div class="product-container product-item">
            <div class="product-item-thumbnail">
                <img src="${itemThumbnail}" alt="Zoetzure kip" />
            </div>
            <div class="product-item-title">
                <span class="title">${itemName}</span>
                <div class="price">€${itemPrice}</div>
            </div>
            <div class="product-item-description">
                <span>${itemDescription}</span>
            </div>
            <div class="product-item-horizontal-line"></div>
            <div class="product-item-optional-description">
                <span>${itemOptionalDescription}</span>
            </div>
            <div class="product-item-buttons">
                <div class="product-item-buttons-button">
                    <img src="./resources/icons/icon-add.png" alt="Voeg product toe aan winkelmand" />
                </div>
                <div class="product-item-buttons-button">
                    <img src="./resources/icons/icon-compare.png" alt="Vergelijk product met een ander" />
                </div>
                <div class="product-item-buttons-button">
                    <img src="./resources/icons/icon-slider.png" alt="Product samenstellen" />
                </div>
                <div class="product-item-buttons-button">
                    <img src="./resources/icons/icon-info.png" alt="Product informatie" />
                </div>
            </div>
        </div>
	`;
}

window.addEventListener("load", function () {

    return;

    for (let i = 0; i < 24; i++) {
        generateProductItem("Zoetzure kip", "https://www.eefkooktzo.nl/wp-content/uploads/2021/01/Zoetzure-kip.jpg", "5,25", "Krokante kip in zoetzure saus, Koe lo kai. Het smaakt naar rijst, want er zit rijst in. Je kunt hier ook varkensvlees bij toevoegen.", "Je kunt een keuze maken uit: bruine rijst, gele rijst, witte rijst, extra saus, extra vlees (kip of varken)");
    }
});