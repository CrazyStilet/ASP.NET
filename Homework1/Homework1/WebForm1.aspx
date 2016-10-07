<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Homework1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Magazine</title>
</head>
<body>
    <style>
        div.my{
            display:inline;
        }
        div.cart{
            margin-top:10px;
        }
    </style>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox>Список продуктов</asp:TextBox>
    </div>
    <div class="my">
        <asp:ListBox id="lstProducts" 
           Rows="6"
           Width="100px"
           SelectionMode="Multiple" 
           runat="server">

         <asp:ListItem>Item 1</asp:ListItem>
         <asp:ListItem>Item 2</asp:ListItem>
         <asp:ListItem>Item 3</asp:ListItem>
         <asp:ListItem>Item 4</asp:ListItem>
         <asp:ListItem>Item 5</asp:ListItem>
         <asp:ListItem>Item 6</asp:ListItem>

      </asp:ListBox>
    </div>
    <div class="my">
        <asp:Button ID="btnInCart" runat="server" Text="В корзину" OnClick="btnInCart_Click"/>
        <asp:Button ID="btnAllInCart" runat="server" Text="Все в корзину" OnClick="btnAllInCart_Click" />
    </div>
    <div class="cart">
        <asp:TextBox>Корзина</asp:TextBox>
    </div>
    <div class="my">
        <asp:ListBox id="lstCart" 
            Rows="6"
           Width="100px"
           SelectionMode="Multiple" 
           runat="server">
      </asp:ListBox>
    </div>
    <div class="my">
        <asp:Button ID="btnFromCart" runat="server" Text="Убрать из корзины" OnClick="btnFromCart_Click" />
        <asp:Button ID="btnAllFromCart" runat="server" Text="Убрать все из корзины" OnClick="btnAllFromCart_Click" />
    </div>
    </form>
</body>
</html>
