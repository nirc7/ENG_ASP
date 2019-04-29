

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:dropdownlist ID="Dropdownlist1" runat="server" 
            onselectedindexchanged="Dropdownlist1_SelectedIndexChanged">
        <asp:ListItem Value="1">one</asp:ListItem>
        <asp:ListItem Value="2">two</asp:ListItem>
        <asp:ListItem Value="3">three</asp:ListItem>
        </asp:dropdownlist>
    </div>
    <div>
    <%--look at the "view page source" on the browser  - the AutoPostBack="True" will generate function __doPostBack(eventTarget, eventArgument)  --%>
        <asp:dropdownlist ID="Dropdownlist2" runat="server" AutoPostBack="True">
        <asp:ListItem Value="1">one</asp:ListItem>
        <asp:ListItem Value="2">two</asp:ListItem>
        <asp:ListItem Value="3">three</asp:ListItem>
        </asp:dropdownlist>
    </div>
    <asp:Button runat="server" ID="btn" text="*"/>
    </form>
</body>
</html>
