function sum() {
	var val1 = document.getElementById("besaran_jiwa").value;
	var val2 = document.getElementById("satuan_beras").value;
	var result = parseFloat(val1) * parseFloat(val2).toFixed(1);
	//console.log(parseFloat(val1).toFixed(1));
	if (!isNaN(result)) {
		document.getElementById("total").value = parseFloat(result);
	}
}

$(document).ready(function () {
	// $(window).load(function () {
	$("#judul").hide();
	$("#lainnya").hide();
	// $("#sn3").hide();

	$("#alamat").change(function () {
		console.log($(this).val());
		if ($(this).val() != 7) {
			$("#judul").hide();
			$("#lainnya").hide();
		} else {
			$("#judul").show();
			$("#lainnya").show();
		}
	});
});