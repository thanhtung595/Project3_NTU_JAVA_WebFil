document.getElementById("video-play").addEventListener("click", function() {
    // Thực hiện chuyển hướng đến URL "/video-play"
    window.location.href = "/Project3_WebFlim/video-play";
});

document.getElementById("buy-ticket").addEventListener("click", function() {
    document.getElementById("popup").style.display = "block";
});

document.getElementById("close-btn").addEventListener("click", function() {
    document.getElementById("popup").style.display = "none";
});
