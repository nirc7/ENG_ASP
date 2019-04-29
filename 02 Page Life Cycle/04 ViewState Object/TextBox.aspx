<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TextBox.aspx.cs" Inherits="TextBox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox runat="server" ID="txtNum" ontextchanged="txtNum_TextChanged" >0</asp:TextBox>
    <asp:TextBox runat="server" ID="txtNum2" ViewStateMode="Disabled"
            ontextchanged="txtNum2_TextChanged" ForeColor="Red" >0</asp:TextBox>
    <asp:Button runat="server" ID="submit" Text="OK" onclick="submit_Click" />
    </div>
    </form>
</body>
</html>
