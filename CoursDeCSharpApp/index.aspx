<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CoursDeCSharpApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" Height="234px" OnClientClick="document.location.href = 'https://www.google.com'" Text="Button" Width="412px" />
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.google.com/">Aller à google</asp:HyperLink>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        
        <p>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button2" runat="server" Height="36px" OnClick="btnSubmit_Click" Text="Button" Width="698px" />
    </form>
</body>
</html>
