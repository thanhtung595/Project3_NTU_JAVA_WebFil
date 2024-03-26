$(document).ready(function() {
    $('#loginForm').submit(function(event) {
        event.preventDefault();
        var formData = {
            'username': $('#username').val(),
            'password': $('#password').val()
        };
        
        $.ajax({
            type: 'POST',
            url: 'login', // URL should match the servlet mapping
            contentType: 'application/json',
            data: JSON.stringify(formData),
            success: function(data, textStatus, xhr) {
                 location.reload();
            },
            error: function(xhr, textStatus, errorThrown) {
                $('#errorlogin').text("Error: Tài khoản hoặc mật khẩu không chính xác");
            }
        });
    });
});



