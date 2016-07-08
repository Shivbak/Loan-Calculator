 draw = function (total_amount_repayable, num_of_months) {

    if (total_amount_repayable === "0" && num_of_months === "0")
    {
       
    
        document.getElementById("noDataPlaceholder").textContent = "Not enough data to draw chart";
    }
    else
    {
        var chart = new CanvasJS.Chart("chartContainer", {

            title: {
                fontColor: "#fff",
                text: "Total Budget: £",
            },
            animationEnabled: true, //disable here

            data: [
        {

            type: "spline",
            dataPoints: [
                    { label: "Total Amount Repayable", y: parseFloat(total_amount_repayable), indexLabelFontColor: "#fff" },
                    { label: "Months", y: parseFloat(num_of_months), indexLabelFontColor: "#fff" }

            ]
        }
            ]
        });

        chart.render();
    }
}

function CheckAmount(sender) {
    if (!isNaN(sender.value)) {
        if (sender.value > 25000)
            sender.value = 25000;
        if (sender.value < 0)
            sender.value = 0;
    } else {
        sender.value = 0;
    }
}

function CheckMonths(sender) {
    if (!isNaN(sender.value)) {
        if (sender.value > 120)
            sender.value = 120;
        if (sender.value < 0)
            sender.value = 0;
    } else {
        sender.value = 0;
    }
}

function CheckAPR(sender) {
    if (!isNaN(sender.value)) {
        if (sender.value > 100)
            sender.value = 100;
        if (sender.value < 0)
            sender.value = 0;
    } else {
        sender.value = 0;
    }
}