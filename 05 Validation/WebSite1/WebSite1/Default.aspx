<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            NAME:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="must fill txt name" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" ValidationExpression="[a-z]{3,5}"></asp:RegularExpressionValidator>
            <br />
            confirm NAME:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox3" ErrorMessage="must be the same as textbox1">***</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="must fill txt name" ControlToValidate="TextBox3" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            AGE: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="must be 20-30" MaximumValue="30" MinimumValue="20" Type="Integer">**</asp:RangeValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="must fill txt age" ControlToValidate="TextBox2" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
        
    </form>
</body>
</html>
