(function () {

	const tabButtons = document.querySelectorAll(".tabs-button"),
		productsContainer = document.querySelector(".products-grid-container"),
		productItems = document.querySelectorAll(".product-item");

	productItems.forEach(function (product) {

		const addButton = product.querySelector(".product-item-buttons-button[data-action='add-item']");

		addButton.addEventListener("click", async function () {

			const data = {
				timestamp: Date.now(),
				productName: product.getAttribute("data-name"),
				productId: product.getAttribute("data-id"),
				productType: product.getAttribute("data-type")
			};

			const xhr = new XMLHttpRequest();

			xhr.addEventListener("readystatechange", function () {

				if (this.readyState === 4) {

					if (this.status == 200) {

						console.log("Product toegevoegd");
					}
				}
			});

			xhr.open("POST", "/server/add-item.php");
			xhr.send(JSON.stringify(data));

		});
	});

	tabButtons.forEach(function (button) {

		const buttonFilterKeyword = button.getAttribute("data-filter-keyword");

		button.addEventListener("click", function () {

			const allProducts = productsContainer.querySelectorAll(".product-item");
			
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