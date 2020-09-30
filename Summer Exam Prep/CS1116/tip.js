document.addEventListener("DOMContentLoaded", init, false);

var bill_num;
var tip_per;
var tip;
var check_valid;

function init() {
    document.addEventListener("submit", calculate(), false);
}

function calculate() {
    bill_num = document.getElementById("bill").value;
    check_valid = check_for_pos_int(bill_num)
    if (check_valid = "") {
        if (document.getElementById('small').checked) {
            tip_per = 0.10
        } else {
            tip_per = 0.15
        }
        tip = check_for_pos_int(bill_num).number
        tip = tip * tip_per
        tip = (Math.round(tip * 100) / 100).toFixed(2);
        document.getElementById("tip").innerHTML = tip;
    } else {
        document.getElementById("message").innerHTML = check_valid;
    }
}

function check_for_pos_int(text) {
    let trimmed_text = text.trim();
    if (trimmed_text === "") {
        return "The bill must be a whole number greater than 0";
    }
    let number = ~~Number(trimmed_text);
    if (String(number) !== trimmed_text) {
        return "The bill must be a whole number greater than 0";
    }
    if (number < 0) {
        return "The bill must be a whole number greater than 0";
    }
    return "";
}