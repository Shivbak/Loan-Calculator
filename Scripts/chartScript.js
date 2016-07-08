 draw = function (total_amount_repayable, num_of_months) {

    if (total_amount_repayable == "NaN" && num_of_months == "NaN")
    {
       
    
        document.getElementById("noDataPlaceholder").textContent = "Not enough data to draw chart";
    }
    else
    {
        document.getElementById("A").textContent = "Total amount :" + total_amount_repayable;
        var chart = new CanvasJS.Chart("chartContainer", {

            title: {
                fontColor: "#4ea4b4",
                text: "Your Loan :",
            },
            animationEnabled: true, //disable here

            data: [
        {

            type: "spline",
            dataPoints: [
                    { label: "Total Amount Repayable", y: parseFloat(total_amount_repayable), indexLabelFontColor: "#F1F1F1" },
                    { label: "Months", y: parseFloat(num_of_months), indexLabelFontColor: "#F1F1F1" }

            ]
        }
            ]
        });

        chart.render();
    }
}

