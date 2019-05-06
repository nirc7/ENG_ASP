<%@ Page Language="C#" AutoEventWireup="true" CodeFile="page1.aspx.cs" Inherits="page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            page1<br />
            <a href="page2.aspx">page2.aspx</a>
            <br />
            <asp:Button ID="Button1" runat="server" Text="response.redurect" OnClick="Button1_Click" /><br />
            <asp:Button ID="Button2" runat="server" Text="sever.transfer" OnClick="Button2_Click"  />
        </div>
    </form>
</body>
</html>
