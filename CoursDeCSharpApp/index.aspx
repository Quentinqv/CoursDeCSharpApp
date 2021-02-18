<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CoursDeCSharpApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CoursDeCSharp</title>
</head>
<body>
    <form id="form1" runat="server">
       
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nom_emp" DataValueField="id"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CoursCConnectionString3 %>" SelectCommand="SELECT [nom_emp], [id], [email_emp] FROM [Employe] ORDER BY [email_emp] DESC"></asp:SqlDataSource>
        <br />
       
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.google.com/">Aller à google</asp:HyperLink>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        
        <p>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button2" runat="server" Height="36px" OnClick="btnSubmit_Click" Text="Button" Width="698px" />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="email" DataValueField="id" Height="38px" Width="446px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="nom_emp" HeaderText="nom_emp" SortExpression="nom_emp" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="email_emp" HeaderText="email_emp" SortExpression="email_emp" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
