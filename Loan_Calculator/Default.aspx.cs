using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    double principal;      //Amount of Money Borrowed
    double num_of_months;   //total number of payments in months
    double interest_rate;  // Interest Rate
    double monthly_interestRate;
    double monthly_repayments;
    double total_amount_repayable;
    double total_costOfCredit;

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }



   
   
    

    protected void calculate_Click(object sender, EventArgs e)
    {
        
            calculate_payment();
      
}

    private void calculate_payment()
    {
        
        principal = getData(tbAmount);
        num_of_months = getData(tbMonths);
        interest_rate = getData(tbAPR);

        if (principal != 0 && num_of_months != 0 && interest_rate != 0)
        {
            monthly_interestRate = interest_rate / (12 * 100);

            monthly_repayments = principal * (monthly_interestRate / (1 - Math.Pow((1 + monthly_interestRate), -num_of_months)));

            double rf_monthly_repayments = Math.Round(monthly_repayments, 2, MidpointRounding.ToEven);

            OPMPayments.Text = "£" + rf_monthly_repayments.ToString("N");

            total_amount_repayable = monthly_repayments * num_of_months;

            double rf_total_amount_repayable = Math.Round(total_amount_repayable, 2, MidpointRounding.ToEven);

            OPTotalRepayments.Text = "£" + rf_total_amount_repayable.ToString("N");

            total_costOfCredit = total_amount_repayable - principal;

            double rf_total_costOfCredit = Math.Round(total_costOfCredit, 2, MidpointRounding.ToEven);

            OPTotalCostOfCredit.Text = "£" + rf_total_costOfCredit.ToString("N");

            ClientScript.RegisterStartupScript(GetType(), "draw", "draw('" + rf_total_amount_repayable + "','" + num_of_months + "','"+ rf_monthly_repayments + "');", true);
        }

        else
        {
            OPMPayments.Text = "-";
            OPTotalRepayments.Text = "-";
            OPTotalCostOfCredit.Text = "-";

        }
        
    }

    private double getData(TextBox txtBoxValue)
    {
        if (!string.IsNullOrWhiteSpace(txtBoxValue.Text))
        {
            return double.Parse(txtBoxValue.Text);
        }
        else
        {
            txtBoxValue.Text = "0";
            return 0;
        }
    }

}