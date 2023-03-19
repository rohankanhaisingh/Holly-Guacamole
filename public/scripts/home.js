(function () {

	const app = document.querySelector(".app"),
		loader = app.querySelector(".app-loader"),
		animatingElements = document.querySelectorAll(".can-animate");

	async function animateElements() {

		for (let i = 0; i < animatingElements.length; i++) {

			const element = animatingElements[i];

			element.classList.add("fade-in");

			await waitFor(100);
		}

		await waitFor(1000);

		animatingElements.forEach(function (em) {

			em.classList.remove("fade-in");
			em.classList.remove("can-animate");
		});
	}

	window.addEventListener("DOMContentLoaded", async function () {

		await waitFor(1000);

		loader.classList.add("fadeout");

		await waitFor(400);

		loader.classList.remove("fadeout");
		loader.classList.add("hidden");

		animateElements();
	});
})();