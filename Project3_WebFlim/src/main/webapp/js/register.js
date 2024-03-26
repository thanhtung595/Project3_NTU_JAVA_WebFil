$(document).ready(function() {
	$('#singupForm').submit(function(event) {
		event.preventDefault();
		var formData = {
			'username': $('#username-2').val(),
			'password': $('#password-2').val(),
			'repassword': $('#repassword-2').val(),
			'lastname': $('#lastname').val(),
			'fistname': $('#fistname').val(),
			'email': $('#email-2').val()
		};
		if (formData.password !== formData.repassword) {
			$('#errorSignup').text("Error: Mật khẩu không giống nhau");
			return;
		}
		$.ajax({
			type: 'POST',
			url: 'signup', // URL should match the servlet mapping
			contentType: 'application/json',
			data: JSON.stringify(formData),
			success: function(data, textStatus, xhr) {
				//location.reload(); // Tải lại trang nếu cần
				$('#errorSignup').text("Đăng ký thành công");
			},
			error: function(xhr, textStatus, errorThrown) {
				var responseObj = JSON.parse(xhr.responseText);
				if (responseObj && responseObj.message) {
					$('#errorSignup').text("Error: " + responseObj.message); // Hiển thị lỗi từ JSON response
				}
			}
		});
	});
});
