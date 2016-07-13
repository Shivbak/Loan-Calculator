
// calling draw function for chart

draw = function (rf_total_amount_repayable, num_of_months, rf_monthly_repayments) {

     var yVal = rf_total_amount_repayable;
     var dataPoints = [];                   // array for storing datapoints

    // loop for getting x and y dataponts and pushing them in array
     for (var i = 0 ; i <= num_of_months ; i++)
     {
         yVal = rf_total_amount_repayable - (rf_monthly_repayments * i);

         dataPoints.push({ x : i, y : yVal});
     }
     
     var chart = new CanvasJS.Chart("chartContainer", {

         //title of chart
         title: {
                  fontColor: "#4ea4b4",
                  text: "Loan Balance Due",
                  fontFamily: "'Nunito', sans-serif",
                  horizontalAlign: "right",
                  fontSize: 27,
                },

         // axis : X of chart
        axisX:{
                  title: "Months",
                  minimum: -0.9
              },

         // axis : Y of chart
       axisY:{
                  title: "Total Amount Repayable",
                  minimum: -0.9
              },

         // animation effect
            animationEnabled: true, 
            AnimationDuration : 1000,
           
         // data that chart contain
       data: [
              {
                  type: "spline",
                  toolTipContent: "In Month {x} Total Amount Repayable left is £{y}",
           
                  dataPoints: dataPoints 
              }
            ]
        });

        chart.render();
    }


