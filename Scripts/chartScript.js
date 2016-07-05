
var loanData = {

    lables: ["Jan", "feb", "march"],
    datasets: [
        {
            fillColor: "rgba(172,194,132,0.4)",
            strokeColor: "#ACC26D",
            pointColor: "#fff",
            pointStrokeColor: "#9DB86D",
            data: [203, 156, 99]
        }
    ]
}

var loan = document.getElementById("loanCanvas").getContext("2d");
new Chart(loan).Line(loanData);

var char = 