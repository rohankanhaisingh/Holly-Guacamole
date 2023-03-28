<?php
	function generateProductItem(itemName, itemThumbnail, itemPrice, itemDescription, itemOptionalDescription) {
	productsGridContainer.innerHTML += 
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
                <button class="product-item-buttons-button">
                    <img src="./resources/icons/icon-add.png" alt="Voeg product toe aan winkelmand" />
                    
                </button>
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
	;
}
?>