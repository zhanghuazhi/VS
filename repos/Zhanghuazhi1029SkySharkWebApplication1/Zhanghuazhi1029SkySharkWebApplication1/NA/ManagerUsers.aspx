<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManagerUsers.aspx.cs" Inherits="Zhanghuazhi1029SkySharkWebApplication1.NA.ManagerUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Network Administretor
    <style type="text/css">
        .auto-style1 {
            width: 278px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem Selected="True" Text="Manage User" Value="Manage User"></asp:MenuItem>
                <asp:MenuItem Text="Manage Database" Value="Manage Database"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text="Changing Password for:"></asp:Label></td>
                </tr>
                  <tr>
                    <td class="auto-style1"></td>
                    <td><asp:HyperLink ID="HyperLink1" runat="server" BorderColor="Red" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>
                      
                    <td><asp:HyperLink ID="HyperLink2" runat="server" BorderColor="Red" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
                    <td></td>
                  </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddUsername" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblDeleteUsername" runat="server" Text="Delete Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDelUsername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="txtAddPassword" runat="server" TextMode="Password"></asp:TextBox>
                     </td>
                    <td></td>
                    <td>
                        <asp:Button ID="btnDelDelete" runat="server" Text="Delete" />
                     </td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                     </td>
                    <td></td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblRole" runat="server" Text="Role"></asp:Label>
                     </td>
                    <td>
                        <asp:ListBox ID="ListBox1" runat="server">
                            <asp:ListItem>BM</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                            <asp:ListItem>LOB</asp:ListItem>
                        </asp:ListBox>
                     </td>
                    <td></td>
                    <td></td>
                </tr>
                  <tr>
                    <td class="auto-style1"></td>
                    <td>
                        <asp:Button ID="btnAddSubmit" runat="server" Text="Submit" />
                      </td>
                    <td></td>
                    <td></td>
                </tr>
                </table>
                </div>
    </form>
</asp:Content>
