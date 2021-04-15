function sum() {
	var val1 = document.getElementById("besaran_jiwa").value;
	var val2 = document.getElementById("satuan_beras").value;
	var result = parseFloat(val1) * parseFloat(val2).toFixed(1);
	//console.log(parseFloat(val1).toFixed(1));
	if (!isNaN(result)) {
		document.getElementById("total").value = parseFloat(result);
	}
}

// karen seng val 1 iku besaran jiwa , seng val 2 iku berat satuan beras, oh iyoo. wkwkkw

// parseFloat(val1) * parseFloat(val2)
