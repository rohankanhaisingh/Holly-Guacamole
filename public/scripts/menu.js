(function () {

	const tabButtons = document.querySelectorAll(".tabs-button"),
		productsContainer = document.querySelector(".products-grid-container"),
		productItems = document.querySelectorAll(".product-item"),
		currentUrl = new URL(location.href),
		navbarTitle = document.querySelector(".navbar-description span");

	const searchParams = currentUrl.search.replace("?", "").split("&"),
		parsedParams = {};

	searchParams.forEach(function (param) {

		const seperator = param.split("=");

		parsedParams[seperator[0]] = seperator[1];
	});

	function postData(url, data) {

		const xhr = new XMLHttpRequest();

		xhr.addEventListener("readystatechange", function (e) {

			if (this.readyState === 4) {

				if (this.status === 200) {

					console.log("POST event is succesvol gelukt.");
					console.log(this.responseText);
				}
			}
		});

		xhr.open("POST", url);
		xhr.send(JSON.stringify(data));
	}

	postData("../server/register-table.php", {
		tableNumber: parsedParams["tafel"],
		timestamp: Date.now()
	});

	if (typeof parsedParams["tafel"] === "undefined") return alert(`Tafel is niet geregistreerd.`);
	navbarTitle.innerText = `Tafel ${parsedParams.tafel}`;

	productItems.forEach(function (product) {

		const addButton = product.querySelector(".product-item-buttons-button[data-action='add-item']");

		addButton.addEventListener("click", async function () {

			postData("../server/add-item.php", {
				timestamp: Date.now(),
				productName: product.getAttribute("data-name"),
				productId: product.getAttribute("data-id"),
				productType: product.getAttribute("data-type")
			});
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
(function callAddTo() {
	
})();