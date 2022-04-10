// User
const flashUser = $(".flash-user").data("flashdata");
if (flashUser) {
	Swal.fire({
		icon: "success",
		title: "Selamat",
		text: "Data user Berhasil " + flashUser,
	});
}

$(".hapus-user").on("click", function (e) {
	// hentikan aksi default
	e.preventDefault();
	// jqueri cariin tombol hapus yang lagi saya click, lalu ambil atributnya
	const href = $(this).attr("href");

	Swal.fire({
		title: "Are You Sure for Delete User?",
		text: "user data will be deleted!",
		icon: "warning",
		showCancelButton: true,
		confirmButtonColor: "#3085d6",
		cancelButtonColor: "#d33",
		confirmButtonText: "Yes, Delete User!",
		// Jika hasilya true (tombol di pencet) jalankan fungsi dibawah
	}).then((result) => {
		if (result.value == true) {
			document.location.href = href;
		}
	});
});
// End User