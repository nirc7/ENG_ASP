﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Target.aspx.cs" Inherits="Session_Target" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Label runat="server" ID="res"></asp:Label><br />
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/session/source.aspx">Source.aspx</asp:LinkButton>
    </div>
    </form>
</body>
</html>
