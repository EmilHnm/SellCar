window.onscroll = function() { scrollFunction() }

function scrollFunction() {
    if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
        document.getElementById("back-to-top").style.display = "block";
        document.getElementById("navbar").style.position = "fixed";
    } else {
        document.getElementById("back-to-top").style.display = "none";
        document.getElementById("navbar").style.position = "";
    }
}

function backToTop() {
    window.window.scroll({
        top: 0,
        left: 0,
        behavior: 'smooth'
    });
}