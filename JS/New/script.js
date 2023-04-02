function compromised() {
    alert("Your device has been compromised!");
}

function credentials() {
    let user_email = document.getElementById("email").value;
    let user_password = document.getElementById("pass").value;
    let user_credentials = user_email + ":" + user_password;
    alert(user_credentials);
}


function show_date() {
    document.getElementById("date").innerHTML = Date();
}


function calculate_pl() {

    let cost_price = parseFloat(document.getElementById('cp').value);
    let selling_price = parseFloat(document.getElementById('sp').value);


    if (isNaN(cost_price) || isNaN(selling_price)) {
        document.getElementById("pl").innerHTML = "Please enter valid numbers";
    }
    else if (cost_price < selling_price) {
        let profit_percent = ((selling_price - cost_price) / cost_price) * 100;
        document.getElementById("pl").innerHTML = "Profit percentage: " + profit_percent.toFixed(2) + "%";
    }
    else if (selling_price == cost_price) {
        document.getElementById("pl").innerHTML = "No Profit No Loss";
    }
    else {
        let loss_percent = ((cost_price - selling_price) / cost_price) * 100;
        document.getElementById("pl").innerHTML = "Loss percentage: " + loss_percent.toFixed(2) + "%";
    }
}


