// User
const flashPenerima = $(".flash-penerima").data("flashdata");
if (flashPenerima) {
	Swal.fire({
		icon: "success",
		title: "Selamat",
		text: "Data Penerima Zakat Berhasil " + flashPenerima,
	});
}

const flashValdasi = $(".flash-validasi").data("flashdata");
if (flashValdasi) {
	Swal.fire({
		icon: "success",
		title: "Selamat",
		text: "Bantuan Zakat Berhasil " + flashValdasi,
	});
}

const flashStatusPenerima = $(".flash-status_penerima").data("flashdata");
if (flashStatusPenerima) {
	Swal.fire({
		icon: "success",
		title: "Selamat",
		text: "Status Data Penerima Berhasil " + flashStatusPenerima,
	});
}

const flashDataValidation = $(".flash-data-validation").data("flashdata");
if (flashDataValidation) {
	Swal.fire({
		icon: "success",
		title: "Selamat",
		text: " Data Berhasil " + flashDataValidation,
	});
}


$(".hapus-penerima").on("click", function (e) {
	// hentikan aksi default
	e.preventDefault();
	// jqueri cariin tombol hapus yang lagi saya click, lalu ambil atributnya
	const href = $(this).attr("href");

	Swal.fire({
		title: "Are You Sure for Delete Data?",
		text: "Data Penerima Zakat will be deleted!",
		icon: "warning",
		showCancelButton: true,
		confirmButtonColor: "#3085d6",
		cancelButtonColor: "#d33",
		confirmButtonText: "Yes, Delete Data!",
		// Jika hasilya true (tombol di pencet) jalankan fungsi dibawah
	}).then((result) => {
		if (result.value == true) {
			document.location.href = href;
		}
	});
});

