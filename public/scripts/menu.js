(function () {

	const tabButtons = document.querySelectorAll(".tabs-button");
	const productsContainer = document.querySelector(".products-grid-container");

	tabButtons.forEach(function (button) {

		const buttonFilterKeyword = button.getAttribute("data-filter-keyword");

		button.addEventListener("click", function () {

			const allProducts = productsContainer.querySelectorAll(".product-item");
			const visibleProducts = [];

			tabButtons.forEach(btn => btn.classList.remove("active"));

			if (!button.classList.contains("active"))
				button.classList.add("active");

			allProducts.forEach(function (product) {

				if (buttonFilterKeyword.length === 0)
					return product.classList.contains("hidden") && product.classList.remove("hidden");

				const productTagsDataAttribute = product.getAttribute("data-type");

				if (productTagsDataAttribute === null) return;

				const productTags = [];

				productTagsDataAttribute.split(",").forEach(tag => productTags.push(tag.trim()));

				if (productTags.includes(buttonFilterKeyword)) {

					if (product.classList.contains("hidden"))
						product.classList.remove("hidden");
				} else {

					if (!product.classList.contains("hidden"))
						product.classList.add("hidden");
				}

			});
		});
	});
})();