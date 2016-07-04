<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SSBC Loan Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1> Loan Calculator</h1>
        <asp:Label ID="Label1" runat="server" Text="Loan Amount"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="For How Many Months?"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="APR Interest Rate"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Text="£"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Text="%"></asp:TextBox>

        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Calculate" />
<asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
