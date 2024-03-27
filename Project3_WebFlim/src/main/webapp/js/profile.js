$(document).ready(function() {
    $('#frofile_save').submit(function(event) {
        event.preventDefault();
        var formData = {
            'username': $('#username_frofile').val(),
            'email': $('#email_frofile').val(),
            'fistName': $('#fistName_frofile').val(),
            'lastName': $('#lastName_frofile').val(),
            'username': $('#username_frofile').val(),
            'passOld': $('#passOld').val(),
            'passNew': $('#passNew').val(),
            'passNewConfig': $('#passNewConfig').val(),
            'frofile_save': 1,
        };
        $.ajax({
			type: 'POST',
			url: 'profile', // URL should match the servlet mapping
			contentType: 'application/json',
			data: JSON.stringify(formData),
			success: function(data, textStatus, xhr) {
				//alert('Ok');
				alert('Cập nhật profile thành công');
				location.reload(); // Tải lại trang nếu cần
			},
			error: function(xhr, textStatus, errorThrown) {
				alert('error');
				//location.reload();
			}
		});
    });
});

$(document).ready(function() {
    $('#password_change').submit(function(event) {
        event.preventDefault();
        var formData = {
            'username': $('#username_frofile').val(),
            'email': $('#email_frofile').val(),
            'fistName': $('#fistName_frofile').val(),
            'lastName': $('#lastName_frofile').val(),
            'username': $('#username_frofile').val(),
            'passOld': $('#passOld').val(),
            'passNew': $('#passNew').val(),
            'passNewConfig': $('#passNewConfig').val(),
            'frofile_save': 2,
        };
        
        if(formData.passNew !== formData.passNewConfig){
			alert('Mật khẩu mới không giống nhau')
			return;
		}
        $.ajax({
			type: 'POST',
			url: 'profile', // URL should match the servlet mapping
			contentType: 'application/json',
			data: JSON.stringify(formData),
			success: function(data, textStatus, xhr) {
				alert('Cập nhật password thành công');
				location.reload(); // Tải lại trang nếu cần
			},
			error: function(xhr, textStatus, errorThrown) {
				var responseObj = JSON.parse(xhr.responseText);
				if (responseObj && responseObj.message) {
					 // Hiển thị lỗi từ JSON response
					 alert(responseObj.message);
				}
				
				//location.reload();
			}
		});
    });
});
