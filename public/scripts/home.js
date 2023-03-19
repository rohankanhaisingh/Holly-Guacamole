(function () {

	const app = document.querySelector(".app"),
		loader = app.querySelector(".app-loader");

	window.addEventListener("DOMContentLoaded", async function () {

		await waitFor(1000);

		loader.classList.add("fadeout");

		await waitFor(400);

		loader.classList.remove("fadeout");
		loader.classList.add("hidden");

	});
})();