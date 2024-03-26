function getCookie(cookieName) {
	var name = cookieName + "=";
	var decodedCookie = decodeURIComponent(document.cookie);
	var cookieArray = decodedCookie.split(';');
	for (var i = 0; i < cookieArray.length; i++) {
		var cookie = cookieArray[i];
		while (cookie.charAt(0) == ' ') {
			cookie = cookie.substring(1);
		}
		if (cookie.indexOf(name) == 0) {
			return cookie.substring(name.length, cookie.length);
		}
	}
	return "";
}
var yourCookie = getCookie('username');
if (yourCookie === "") {
	$('#profile').hide();
	$('#naptien').hide();
	$('#priceaccount').hide();
	$('#logoutbtn').hide();
	$('#loginbtn').show();
	$('#signupbtn').show();
} else {
	$('#profile').show();
	$('#naptien').show();
	$('#priceaccount').show();
	var priceAccount = getCookie('priceAccount');
	$('#txtpriceaccount').text('$' + priceAccount);
	$('#logoutbtn').show();
	$('#loginbtn').hide();
	$('#signupbtn').hide();
}
$(document).ready(function() {
    // Xử lý sự kiện khi click vào phần tử có id là 'logoutbtn'
    $('#logoutbtn').click(function(event) {
		deleteCookie('username');
		location.reload();
		window.location.href = "/Project3_WebFlim/home"; 
    });
});
function deleteCookie(cookieName) {
    document.cookie = cookieName + "=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/Project3_WebFlim;";
}

