// greeting line 
var statement;
var d = new Date();
var hr = d.getHours();
if (hr < 11 && hr > 4) {
    statement = "Good Morning, start your day with your favorite scent.";
} else if (hr < 16) {
    statement = "Good Afternoon, choose a fragrance for going out or staying in.";
} else if (hr < 21) {
    statement = "Good evening, pick a fragrance to sleep soundly.";
} else {
    statement = "Fill your day with scents you love!";
}
document.getElementById("greetings").innerHTML = statement;

// upload fragrance greeting function

function showProducts() {
    var x = document.getElementById("products");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }

    var y = document.getElementById("mainhome");

    if (y.style.display === "none") {
        y.style.display = "block";
    } else {
        y.style.display = "none";
    }
}