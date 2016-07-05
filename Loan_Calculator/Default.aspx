<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SSBC Loan Calculator</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../CSS/StyleSheet.css" rel="stylesheet" />

    <script src="../Scripts/chart.js"></script>
    <script src="../Scripts/chartScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    
         <img src="../SBBC.png" id="logo"/>
        
        <div class="container myself">
        <div class="row"><h1><img src="../calc.png" />  Loan Calculator</h1> </div>
        <div class="row">
           
                <div class="col-sm-2">
                    
                <asp:Label ID="LabelAmount" runat="server">Amount</asp:Label>
                </div>
                <div class="col-sm-2">
                <asp:Label ID="LabelMonths" runat="server">For How Many Months?</asp:Label>
                </div>
                <div class="col-sm-2">
                <asp:Label ID="LabelAPR" runat="server">APR Interest Rate</asp:Label>
                </div>
        </div>
        <br />
        
        <div class ="row">
             <div class="col-sm-2">
        <div class="input-group">
                     <div class="input-group-addon">£</div>
             <asp:TextBox ID="tbAmount" runat="server" class="form-control">
             </asp:TextBox>
            
            </div>
             </div>
             <div class="col-sm-2">
             <asp:TextBox ID="tbMonths" runat="server" class="form-control"></asp:TextBox>
             </div>
             <div class="col-sm-2">
                 <div class="input-group">
             <asp:TextBox ID="tbAPR" runat="server" class="form-control"></asp:TextBox>
                 <div class="input-group-addon">%</div></div>
             </div>
        </div>
        <br />
        <br />
        <asp:Button ID="calculate" runat="server" Text="Calculate" OnClick="calculate_Click"  class="btn btn-success btn-lg active" />
        <br />
        <br />
        <div class="row">
            <div class="col-sm-2">
            <asp:Label ID="LableMPayments" runat="server">Monthly Repayments :</asp:Label>
            <asp:Label ID="OPMPayments" runat="server"></asp:Label>
                </div>
            <div class="col-sm-2">
        <asp:Label ID="LabelTotalRepayments" runat="server">Total amount Repayable :</asp:Label>
        <asp:Label ID="OPTotalRepayments" runat="server"></asp:Label>
                </div>
            <div class="col-sm-2">
        <asp:Label ID="LabelTotalCostOfCredit" runat="server">Total Cost of Credit :</asp:Label>
        <asp:Label ID="OPTotalCostOfCredit" runat="server"></asp:Label>
                </div>
        </div>
        <canvas id="loanCanvas" width="600" height="400"></canvas>
    </div>
    </form>
</body>
</html>
