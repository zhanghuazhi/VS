﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateRes.aspx.cs" Inherits="Zhanghuazhi1029SkySharkWebApplication1.LOB.CreateRes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Executive
    <style type="text/css">
        .auto-style1 {
            width: 83px;
        }
        .auto-style2 {
            width: 149px;
        }
        .auto-style3 {
            width: 149px;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 114px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 60px;
        }
        .auto-style2 {
            width: 61px;
        }
        .auto-style3 {
            width: 62px;
        }
        .auto-style4 {
            width: 63px;
        }
        .auto-style5 {
            width: 184px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" >
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/LOB/CreateRes.aspx" Selected="True" Text="Create Reservation" Value="Create Reservation"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/CancleRes.aspx" Text="Cancle Reservation" Value="Cancle Reservation"></asp:MenuItem>
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
                    <td> <asp:Label ID="Label1" runat="server" Text="Make a new Reservation"></asp:Label> </td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                  <tr>
                    <td colspan="2"><asp:HyperLink ID="HyperLink1" runat="server" BorderColor="Red" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink>&nbsp&nbsp&nbsp
                        <asp:HyperLink ID="HyperLink2" runat="server" BorderColor="Red" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
                    <td></td>
                  </tr>
                 <tr>
                    <td>
                        <asp:Wizard ID="Wizard1" runat="server" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ActiveStepIndex="2">
                            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
                            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                            <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                            <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
                            <WizardSteps>
                                <asp:WizardStep ID="WizardStep1" runat="server" title="Search Flight">
                                    <!-- for step 1 -->
                                    <table>
                                        <tr>
                                            <td colspan="3">
                                                <asp:Label ID="Label2" runat="server" Text="Step 1:Specify Ticket Details" BorderStyle="Inset" Font-Names="Microsoft Sans Serif" Width="272px"></asp:Label></td>
                                          
                                        </tr>
                                          <tr>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="Flight Number"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="txtFltNo" runat="server"></asp:TextBox></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                          <tr>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text="Class"></asp:Label></td>
                                            <td>
                                                <asp:ListBox ID="lstClass" runat="server">
                                                    <asp:ListItem>Executive</asp:ListItem>
                                                    <asp:ListItem>Business</asp:ListItem>
                                                </asp:ListBox></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                          <tr>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label></td>
                                            <td>
                                                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Double" BorderWidth="2px" DayNameFormat="FirstTwoLetters"></asp:Calendar>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                          <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td><asp:Button ID="btnNext" runat="server" Text="Next" BackColor="Silver" BorderColor="Blue" Font-Names="Microsoft Sans Serif" /></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                        </asp:WizardStep>
                                <asp:WizardStep ID="WizardStep2" runat="server" Title="Find Flight Fare &amp; Status">
                                     <!-- for step 2 -->
                                      <table>
                                          <tr>
                                            <td colspan="3">
                                                <asp:Label ID="Label6" runat="server" Text="Step 2:Confirm flight status and fare with customer" BorderStyle="Inset" Font-Names="Microsoft Sans Serif" Width="352px"></asp:Label></td>
                                          
                                        </tr>
                                        <tr>
                                            <td class="auto-style2">
                                                <asp:Label ID="Label7" runat="server" Text="Ticket No"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="txtTNo" runat="server"></asp:TextBox></td>
                                            <td class="auto-style1"></td>
                                            <td></td>
                                        </tr>
                                          <tr>
                                              <td class="auto-style3">
                                                <asp:Label ID="Label8" runat="server" Text="Fare"></asp:Label></td>
                                            <td class="auto-style4">
                                                <asp:TextBox ID="txtFare" runat="server"></asp:TextBox></td>
                                            <td class="auto-style1"></td>
                                            <td class="auto-style4"></td>
                                        </tr>
                                          <tr>
                                              <td class="auto-style2">
                                                <asp:Label ID="Label9" runat="server" Text="Status"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox></td>
                                            <td class="auto-style1"></td>
                                            <td></td>
                                        </tr>
                                          <tr>
                                              <td class="auto-style2">
                                                <asp:Label ID="Label10" runat="server" Text="Origin"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="txtOrg" runat="server"></asp:TextBox></td>
                                            <td class="auto-style1"></td>
                                            <td></td>
                                        </tr>
                                            <tr>
                                              <td class="auto-style2">
                                                <asp:Label ID="Label11" runat="server" Text="Destination"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="txtDest" runat="server"></asp:TextBox></td>
                                            <td class="auto-style1"></td>
                                            <td></td>
                                        </tr>
                                            <tr>
                                              <td class="auto-style2">
                                                <asp:Label ID="Label12" runat="server" Text="Departure Time"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="txtDepTime" runat="server" Enabled="False"></asp:TextBox></td>
                                            <td class="auto-style1"></td>
                                            <td></td>
                                        </tr>
                                          <tr>
                                            <td class="auto-style2"></td>
                                            <td></td>
                                            <td class="auto-style1">
                                                <asp:Button ID="Button1" runat="server" Text="Previous" BackColor="Silver" BorderColor="Blue" Font-Names="Microsoft Sans Serif" /></td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" Text="Next" BackColor="Silver" BorderColor="Blue" Font-Names="Microsoft Sans Serif" /></td>
                                        </tr>
                                    </table>
                                </asp:WizardStep>
                                <asp:WizardStep ID="WizardStep3" runat="server" Title="Make Reservation">
                                     <!-- for step 3 -->
                                      <table>
                                        <tr>
                                            <td colspan="3">
                                                <asp:Label ID="Label13" runat="server" Text="Step 3:Confirm Booking" BorderStyle="Inset" Font-Names="Microsoft Sans Serif" Width="352px"></asp:Label></td>
                                           
                                        </tr>
                                          <tr>
                                            <td>
                                                <asp:Label ID="Label14" runat="server" Text="Name"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="txtName" runat="server" Width="280px"></asp:TextBox></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                          <tr>
                                            <td>
                                                <asp:Label ID="Label15" runat="server" Text="Email"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="txtEmail" runat="server" Width="280px"></asp:TextBox></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                          <tr>
                                            <td></td>
                                            <td>
                                                <asp:Button ID="btnCreatReservation" runat="server" Text="Create" BackColor="Silver" BorderColor="Blue" Font-Names="Microsoft Sans Serif"/>&nbsp
                                                <asp:Button ID="btnCancle" runat="server" Text="Cancle" BackColor="Silver" BorderColor="Blue" Font-Names="Microsoft Sans Serif"/>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                          
                                          <caption>
                                          </caption>
                                          
                                    </table>
                                </asp:WizardStep>
                            </WizardSteps>
                        </asp:Wizard>
                     </td>
                </tr>
            </table>

        </div>
    </form>
</asp:Content>
