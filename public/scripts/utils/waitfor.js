(function () {

	const x = async function (ms) {
		return new Promise(function (resolve) {

			setTimeout(resolve, ms);
		});
	}

	window["waitFor"] = x;
})();