﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="02 GridView.aspx.cs" Inherits="GridView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="MovieID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="MovieID" HeaderText="MovieID" ReadOnly="True" 
                    SortExpression="MovieID" />
                <asp:BoundField DataField="MovieName" HeaderText="MovieName" 
                    SortExpression="MovieName" />
                <asp:BoundField DataField="MovieTypeID" HeaderText="MovieTypeID" 
                    SortExpression="MovieTypeID" />
                <asp:BoundField DataField="Copies" HeaderText="Copies" 
                    SortExpression="Copies" />
                <asp:BoundField DataField="Summary" HeaderText="Summary" 
                    SortExpression="Summary" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Lenght" HeaderText="Lenght" 
                    SortExpression="Lenght" />
                <asp:BoundField DataField="CountryID" HeaderText="CountryID" 
                    SortExpression="CountryID" />
                <asp:BoundField DataField="MoviePicUrl" HeaderText="MoviePicUrl" 
                    SortExpression="MoviePicUrl" />
                <asp:BoundField DataField="TrailerUrl" HeaderText="TrailerUrl" 
                    SortExpression="TrailerUrl" />
                <asp:BoundField DataField="Active" HeaderText="Active" 
                    SortExpression="Active" />
                <asp:BoundField DataField="DateAdded" HeaderText="DateAdded" 
                    SortExpression="DateAdded" />
            </Columns>
        </asp:GridView>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MovieConStr %>" 
        SelectCommand="SELECT * FROM [Movie]"></asp:SqlDataSource>
    </form>
</body>
</html>
