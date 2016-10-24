<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="Homework2.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TDividend" runat="server" Width="200px" AutoPostBack="true" OnTextChanged="TDividend_TextChanged"></asp:TextBox>
        <asp:Label ID="LDividend" runat="server" ForeColor="Red"></asp:Label>
    </div>
        <br />
    <div>
        <asp:TextBox ID="TDivider" runat="server" Width="200px" AutoPostBack="true" OnTextChanged="TDivider_TextChanged"></asp:TextBox>
        <asp:Label ID="LDivider" runat="server" ForeColor="Red"></asp:Label>
    </div>
        <br />
        <br />
    <div>
        <asp:Button ID="btnDivided" runat="server" Text="Разделить" OnClick="btnDivided_Click"/>
        <asp:Label ID="LAnswer" runat="server"></asp:Label>
    </div>
        <br />
    <div>
        <asp:BulletedList ID="bltList" runat="server"></asp:BulletedList>
    </div>
    </form>
</body>
</html>
