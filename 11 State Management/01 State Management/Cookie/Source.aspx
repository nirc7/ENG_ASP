﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Source.aspx.cs" Inherits="Cookie_Source" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
    Enter your Name: <asp:TextBox runat="server" ID="txtName"></asp:TextBox><br />
    Enter your Grade: <asp:TextBox runat="server" ID="txtGrade"></asp:TextBox><br />
    <asp:Button runat="server" ID="btn" Text="cookie" onclick="btn_Click"/><br />
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/cookie/Target.aspx">Taget.aspx</asp:LinkButton>

    
    </div>
    </form>
</body>
</html>
