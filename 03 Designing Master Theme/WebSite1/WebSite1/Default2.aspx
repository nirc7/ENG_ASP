<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    page default 2
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br /><br />
    <asp:Label ID="lblP2" runat="server" Text="Label"></asp:Label>
</asp:Content>

