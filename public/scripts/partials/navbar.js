(function () {

	/**@type {HTMLDivElement}*/
	const navbar = document.querySelector(".app-navbar");

	/**@type {HTMLDivElement}*/
	const hamburger = navbar.querySelector(".navbar-hamburger")

	/**@type {HTMLDivElement}*/
	const links = navbar.querySelector(".navbar-links");

	hamburger.addEventListener("click", function () {

		if (window.innerWidth >= 1200) return;

		if (this.classList.contains("closed")) {

			this.classList.remove("closed");

			if (!links.classList.contains("hidden")) links.classList.add("hidden");
		} else {

			this.classList.add("closed");

			if (links.classList.contains("hidden")) links.classList.remove("hidden");
		}
	});

	window.addEventListener("resize", function () {

		if (window.innerWidth <= 1200) return;

		if (links.classList.contains("hidden"))
			links.classList.remove("hidden");
	});

})();