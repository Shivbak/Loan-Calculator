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

    private void textchange()
    {
        
    }

    protected void calculate_Click(object sender, EventArgs e)
    {
        textchange();
        calculate_payment();
        
    }
   
    private void calculate_payment()
    {
        tbAmount.TextChanged += (s, e) =>
        {
            var textbox = s as TextBox;
            int value;
            if (int.TryParse(textbox.Text, out value))
            {
                if (value > 30000)
                    textbox.Text = "30000";
                else if (value < 0)
                    textbox.Text = "0";
            }
        };
        principal = double.Parse(tbAmount.Text);
        num_of_months = double.Parse(tbMonths.Text);
        interest_rate = double.Parse(tbAPR.Text);
        monthly_interestRate = interest_rate / (12 * 100);

        monthly_repayments = principal * (monthly_interestRate / (1- Math.Pow((1+ monthly_interestRate),-num_of_months)));

        double rf_monthly_repayments = Math.Round(monthly_repayments, 2,MidpointRounding.ToEven);

        OPMPayments.Text = "£" + rf_monthly_repayments.ToString("N");

        total_amount_repayable = monthly_repayments * num_of_months;

        double rf_total_amount_repayable = Math.Round(total_amount_repayable, 2, MidpointRounding.ToEven);

        OPTotalRepayments.Text = "£" + rf_total_amount_repayable.ToString("N");

        total_costOfCredit = total_amount_repayable - principal;

        double rf_total_costOfCredit = Math.Round(total_costOfCredit, 2, MidpointRounding.ToEven);

        OPTotalCostOfCredit.Text = "£" + rf_total_costOfCredit.ToString("N");

        ClientScript.RegisterStartupScript(GetType(), "draw", "draw('" + total_amount_repayable + "','" + num_of_months + "');", true);
        
    }
}