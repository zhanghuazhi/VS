<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ConfirmRes.aspx.cs" Inherits="Zhanghuazhi1029SkySharkWebApplication1.LOB.ConfirmRes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Executive
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <form id="form1" runat="server" >
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/LOB/CreateRes.aspx" Text="Create Reservation" Value="Create Reservation"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/CancleRes.aspx" Selected="True" Text="Cancle Reservation" Value="Cancle Reservation"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/QueryStat.aspx" Text="Quary Status" Value="Quary Status"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/ConfirmRes.aspx" Text="Confirm Reservation" Value="Confirm Reservation"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                    <td colspan="3"> <asp:Label ID="Label1" runat="server" Text="Confirm a  Reservation"></asp:Label> </td>
                    <td class="auto-style1"></td>
                    <td></td>
                    <td></td>
                </tr>
                  <tr>
                      <td></td>
                    <td ><asp:HyperLink ID="HyperLink1" runat="server" BorderColor="Red" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink>&nbsp&nbsp&nbsp
                       </td>
                      <td><asp:HyperLink ID="HyperLink2" runat="server" BorderColor="Red" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
                    <td></td>
                  </tr>
                <tr>
                    <td class="auto-style1">  <asp:Label ID="lblTicketNo" runat="server" Text="Ticket No"></asp:Label></td>
                  
                    <td>  <asp:TextBox ID="txtTicketNo" runat="server" Width="223px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTicketNo" ErrorMessage="Please specify a vaild ticket number"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                 <tr>
                    <td class="auto-style1"></td>
                    <td><asp:Button ID="btnConfirm" runat="server" Text="Confirm Ticket" /></td>
                     <td></td>
                     <td class="auto-style1"></td>
                </tr>
                </table>
            </div>
         </form>
</asp:Content>
