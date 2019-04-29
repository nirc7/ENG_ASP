<%@ Page Language="C#" AutoEventWireup="true" CodeFile="002 with ViewState.aspx.cs" Inherits="without_ViewState"
EnableViewState="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
            BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
            Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
            onselectionchanged="Calendar1_SelectionChanged" Width="200px"  >
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Date" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label">start</asp:Label>
    
    </div>
    <p>
        <asp:Button ID="Button2" runat="server"  Text="Refresh" />
    </p>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        EnableViewState="False">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
    </asp:DropDownList>
    <asp:Label runat="server" ID="lblDdlPAge"></asp:Label>
    <asp:Label runat="server" ID="lblDdlChange"></asp:Label>
    </form>
</body>
</html>
