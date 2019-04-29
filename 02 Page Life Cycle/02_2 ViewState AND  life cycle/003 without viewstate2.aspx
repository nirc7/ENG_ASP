<%@ Page Language="C#" AutoEventWireup="true" CodeFile="003 without viewstate2.aspx.cs" Inherits="without_viewstate"
 EnableViewState="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox runat="server" ID="num1" EnableViewState="false" >0</asp:TextBox>
        <asp:TextBox runat="server" ID="num2" EnableViewState="false">0</asp:TextBox>
        <input type="text"  id="num3" value="0" runat="server" EnableViewState="false" />
        <input type="text"  id="num4" value="0"  />
        <br />  
        <asp:Button runat="server" ID="btnADD" Text="ADD" OnClick="btnADD_Click" />
        <br />  
        text:<asp:TextBox runat="server" ID="result" EnableViewState="false">your result is...</asp:TextBox><br />
        label  EnableViewState="true/false":<asp:Label runat="server" ID="lblRes" EnableViewState="true" >your result is...</asp:Label><br />
        button EnableViewState="true/false":<asp:Button runat="server" ID="btnRes" Text="start"  EnableViewState="true" /><br />
        button:<asp:Button runat="server" ID="refresh" Text="REFRESH" />
    </div>
    </form>
</body>
</html>
