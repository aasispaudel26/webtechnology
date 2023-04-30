var username = document.getElementById("username");
var password = document.getElementById("password");

function store() {
    localStorage.setItem("username", username.value);
    localStorage.setItem("password", password.value);
}

function check() {
    var storedUsername = localStorage.getItem("username");
    var storedPassword = localStorage.getItem("password");

    var username = document.getElementById("username");
    var password = document.getElementById("password");

    if (storedUsername == username.value && storedPassword == password.value) {
        alert("Congrats, you are loged successfully");
    } else {
        alert("Get out of here!");
    }
}
