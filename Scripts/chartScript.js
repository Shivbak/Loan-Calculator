draw = function (total_amount_repayable, num_of_months) {

    var chart = new CanvasJS.Chart("chartContainer", {
       
        title: {
            fontColor: "#fff",
            text: "Total Budget: £" ,
        },
        animationEnabled: true, //disable here

        data: [
    {
       
        type: "line",
        dataPoints: [
                { label: "Total Amount Repayable", y: parseFloat(total_amount_repayable), indexLabelFontColor: "#fff" },
                { label: "Months", y: parseFloat(num_of_months), indexLabelFontColor: "#fff" }
               
        ]
    }
        ]
    });

    chart.render();
}