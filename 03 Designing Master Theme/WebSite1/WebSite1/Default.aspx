﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            hello
            nir<asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </div>
    </form>
</body>
</html>
