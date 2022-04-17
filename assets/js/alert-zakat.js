// User
const flashFitrah = $(".flash-fitrah").data("flashdata");
if (flashFitrah) {
	Swal.fire({
		icon: "success",
		title: "Selamat",
		text: "Data Zakat Fitrah Berhasil " + flashFitrah,
	});
}

const flashMaal = $(".flash-maal").data("flashdata");
if (flashMaal) {
	Swal.fire({
		icon: "success",
		title: "Selamat",
		text: "Data Zakat Maal Berhasil " + flashMaal,
	});
}

$(".hapus-fitrah").on("click", function (e) {
	// hentikan aksi default
	e.preventDefault();
	// jqueri cariin tombol hapus yang lagi saya click, lalu ambil atributnya
	const href = $(this).attr("href");

	Swal.fire({
		title: "Are You Sure for Delete Data?",
		text: "Zakat Fitrah data will be deleted!",
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

$(".hapus-maal").on("click", function (e) {
	// hentikan aksi default
	e.preventDefault();
	// jqueri cariin tombol hapus yang lagi saya click, lalu ambil atributnya
	const href = $(this).attr("href");

	Swal.fire({
		title: "Are You Sure for Delete Data?",
		text: "Zakat Maal data will be deleted!",
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
// End User