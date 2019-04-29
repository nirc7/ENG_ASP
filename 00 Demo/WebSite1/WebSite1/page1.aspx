<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="c1">hello avi2 </span>
            <br />
            hello benny<br />
            NAME :
            <br />
            <br />
            <table style="width: 100%;">
                <tr>
                    <td>name:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" AutoPostBack="True" OnTextChanged="txtName_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Font-Size="24pt" ForeColor="Red" Text="Button" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="..."></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            &nbsp;</div>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="1">sunday</asp:ListItem>
            <asp:ListItem Value="2">Monday</asp:ListItem>
            <asp:ListItem Value="3">Teusday</asp:ListItem>
        </asp:DropDownList><br />
        <asp:Label runat="server" ID="lblDays" >...</asp:Label>
    </form>
</body>
</html>
