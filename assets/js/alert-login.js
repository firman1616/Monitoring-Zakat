// cek login form
const flashData = $(".flash-data").data("flashdata");
if (flashData) {
	Swal.fire({
		icon: "error",
		title: "Oops...",
		text: flashData + " Username or Password",
	});
}