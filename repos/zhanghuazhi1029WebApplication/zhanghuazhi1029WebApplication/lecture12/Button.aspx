<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Button.aspx.cs" Inherits="zhanghuazhi1029WebApplication.lecture12.Button" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="ButtonEx" runat="server" CommandName="ButtonEx" OnClick="ButtonEx_Click" OnCommand="ButtonEx_Command" Text="Normal Button" />
        </div>
        <asp:LinkButton ID="LinkButtonEx" runat="server" CommandName="LinkButtonEx" OnClick="ButtonEx_Click" OnCommand="ButtonEx_Command">Link Button</asp:LinkButton>
        <p>
            <asp:ImageButton ID="ImageButtonEx" runat="server" CommandName="ImageButtonEx" Height="33px" ImageUrl="~/lecture12/8.png" OnClick="ImageButtonEx_Click" Width="90px" />
        </p>
        <asp:Label ID="LabelMessage" runat="server" Text="LabelMessage"></asp:Label>
        <p>
            <asp:Label ID="LabelClick" runat="server" Text="LabelClick"></asp:Label>
        </p>
    </form>
</body>
</html>
