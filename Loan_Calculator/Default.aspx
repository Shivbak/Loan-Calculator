﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>SSBC Loan Calculator</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="CSS/StyleSheet.css" rel="stylesheet" />

    <script src="Scripts/canvasjs.min.js"></script>
    
    <script src="Scripts/chartScript.js"></script>
    <script src="Scripts/checkValue.js"></script>
    <script src="Scripts/jquery-1.9.1.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    
        <div class="container">

             <img src="SBBC.png" />
           
                <div class="row jumbotron" style ="padding : 20px;">
                  
                        <p style="font-size:medium;">This loan calculator allows you to enter the amount of money you wish to borrow, the term of the loan and the APR. The calculator will then show you what your monthly repayments 
                        will be, the total amount repayable and the total cost of credit. A graph will also be displayed to show you how much Loan Balance will be Due at various monthly points.</p> 

                        <p id ="NOTE">Note: The max loan amount you can enter is £25,000, the max months as 120 and the max APR as 100%.</p>
                
                </div>

        <div class="row">
            <asp:ValidationSummary ID="vs" runat="server" CssClass="alert-danger" HeaderText="Enter only digits in the following fields:" 
                    BorderStyle="Solid" BorderWidth="2px" BorderColor="Red" />
            <div class="col-lg-8">
                <div class="myself">

                     <div class="row heading txting">
                         <h1> <img src="CalcIcon.png" id="Calc"/> Loan Calculator</h1>
                     </div> <br />

             <div class="row" id="tag"> 
           
                <div class="col-sm-4 txting"> 
                    <asp:Label ID="LabelAmount" runat="server" >Amount</asp:Label><br /><br />
                        <div class="input-group">
                            <div class="input-group-addon">£</div>
                                <asp:TextBox ID="tbAmount" runat="server" Cssclass="form-control"  onkeydown="CheckAmount(this)">
                                </asp:TextBox>
                        </div>
                    <asp:CompareValidator ID="cvAmount" runat="server" ControlToValidate="tbAmount" Type="Double"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Amount" Display="Static" CssClass="text-danger"></asp:CompareValidator>
                    <br />
                </div>

                <div class="col-sm-4 txting">
                    <asp:Label ID="LabelMonths" runat="server" >For How Many Months?</asp:Label><br /><br />
                        <asp:TextBox ID="tbMonths" runat="server" Cssclass="form-control"  onkeydown="CheckMonths(this)"></asp:TextBox>
                    <asp:CompareValidator ID="cvMonths" runat="server" ControlToValidate="tbMonths" Type="Integer"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Months" Display="Static" CssClass="text-danger"></asp:CompareValidator>
                    <br />
                </div>

                <div class="col-sm-4 txting">
                    <asp:Label ID="LabelAPR" runat="server" >APR Interest Rate</asp:Label><br /><br />
                        <div class="input-group">
                            <asp:TextBox ID="tbAPR" runat="server" Cssclass="form-control" onkeydown ="CheckAPR(this)" ></asp:TextBox>
                            <div class="input-group-addon">%</div>
                        </div>
                    <asp:CompareValidator ID="cvAPR" runat="server" ControlToValidate="tbAPR" Type="Double"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="APR" Display="Static" CssClass="text-danger"></asp:CompareValidator>
                    <br />
                </div>

             </div>
            <! -- *** Row id= tag ENDs here *** -- >
             <br />

             <div>
                   <asp:Button ID="calculate" runat="server" Text="Calculate" OnClick="calculate_Click"  Cssclass="btn btn-lg active" />
             </div>

             <br /><br />
        

             <div class="row result">

                 <div class="col-sm-4 txting">
                      <asp:Label ID="LableMPayments" runat="server">Monthly Repayments:</asp:Label>
                      <asp:Label ID="OPMPayments" runat="server"></asp:Label>
                 </div>

                <div class="col-sm-4 txting">
                    <asp:Label ID="LabelTotalRepayments" runat="server">Total Amount Repayable:</asp:Label>
                    <asp:Label ID="OPTotalRepayments" runat="server"></asp:Label>
                </div>

                <div class="col-sm-4 txting">
                    <asp:Label ID="LabelTotalCostOfCredit" runat="server">Total Cost of Credit:</asp:Label>
                    <asp:Label ID="OPTotalCostOfCredit" runat="server"></asp:Label>
                </div>

             </div>

                 <br /><br /><br />
                 
            </div>
           <! -- *** myself ENDs here *** -- >
            
        </div> 
      <! -- *** Col-lg-8 ENDs here *** -- >

              <! -- *** Chart start here *** -- >

                <div class ="col-md-2" id="chartContainer" >

                    <div id="chartPlaceholder"></div>
                    <div id="noDataPlaceholder" class="h1"></div>

                </div>   
              <! -- *** Chart Ends here *** -- > 

            </div>
         <! -- *** row ends here *** -- >
    <div>
        <p id ="disclaimer"> Disclaimer: this site is a non-commercial, demonstration programme. It is not in any way a real banking site and there is no facility to pay or receive money. This
            site is not connected in any way to any existing banking sites. 
        </p>
    </div>
       </div>
     <! -- *** container ends here *** -- >
        
    </form>
</body>
</html>
