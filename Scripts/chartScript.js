draw = function (rf_total_amount_repayable, num_of_months, rf_monthly_repayments) {

    var yVal = rf_total_amount_repayable;
     var dataPoints = [];
     for (var i = 0 ; i <= num_of_months ; i++)
     {
         
         yVal = rf_total_amount_repayable - (rf_monthly_repayments * i);

         dataPoints.push({ x : i, y : yVal});
     }
     
        var chart = new CanvasJS.Chart("chartContainer", {

            title: {
                fontColor: "#4ea4b4",
                text: "Loan Balance Due",
                fontFamily: "'Nunito', sans-serif",
                horizontalAlign: "right",
                fontSize: 27,
                
            },

            axisX:{

                title: "Months",
                minimum: -0.9
            },

            axisY:{
                title: "Total Amount Repayable",
                minimum: -0.9
            },

            animationEnabled: true, //disable here
            AnimationDuration : 10000,
           
            data: [
        {

            type: "spline",
            toolTipContent: "In Month {x} Total Amount Repayable is {y}",
           
            dataPoints: dataPoints //[
               // { x: 0, y: parseFloat(total_amount_repayable)},
                    //{x: parseInt(num_of_months), y : 0 }
                  
                 

           // ]
        }
            ]
        });

        chart.render();
    }


