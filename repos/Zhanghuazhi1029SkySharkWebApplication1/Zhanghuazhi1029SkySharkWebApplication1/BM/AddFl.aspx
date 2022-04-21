<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddFl.aspx.cs" Inherits="Zhanghuazhi1029SkySharkWebApplication1.BM.AddFl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Manager
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 284px;
        }
        .auto-style2 {
            width: 436px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 284px;
        }
        .auto-style2 {
            width: 503px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem NavigateUrl="~/BM/AddFl.aspx" Selected="True" Text="Add Flight" Value="Add Flight"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/RequestID.aspx" Text="Request ID" Value="Request ID"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/Reports.aspx" Text="Reports" Value="Reports"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/BM/FreqFl.aspx" Text="Frequent Fliers" Value="Frequent Fliers"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        <div class="tabContents">
            <table>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Add New Flighs:"></asp:Label></td>
                </tr>
                  <tr>
                    <td></td>
                    <td class="auto-style2"><asp:HyperLink ID="HyperLink1" runat="server" BorderColor="Red" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>
                      
                    <td><asp:HyperLink ID="HyperLink2" runat="server" BorderColor="Red" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                    </td>
                    
                   
                </tr>
                  <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Flight Number"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="txtFlightNumber" runat="server" OnTextChanged="txtFlightNumber_TextChanged"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFlightNumber" ErrorMessage="FlightNumberRequired"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Departure Time"></asp:Label></td>
                    <td class="auto-style2"><asp:Calendar ID="calDepartureTime" runat="server"></asp:Calendar><asp:TextBox ID="txtDepartureTime" runat="server" OnTextChanged="txtDepartureTime_TextChanged"></asp:TextBox>(HH:MM)</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDepartureTime" ErrorMessage="DepartureTimeRequired"></asp:RequiredFieldValidator>
                      </td>
                      
                </tr>
                  <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Place"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="txtPlace" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPlace" ErrorMessage="PlaceRequired"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Arrival Time"></asp:Label></td>
                    <td class="auto-style2"><asp:Calendar ID="calArrivalTime" runat="server"></asp:Calendar><asp:TextBox ID="txtArrivalTime" runat="server"></asp:TextBox>(HH:MM)</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtArrivalTime" ErrorMessage="Arrival TimeRequired"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="Destination"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="txtDestination" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDestination" ErrorMessage="DestinationRequired"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td class="auto-style1"><asp:Label ID="Label7" runat="server" Text="Aircraft Type"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="txtAircraftType" runat="server"></asp:TextBox></td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAircraftType" ErrorMessage="Aircraft TypeRequired"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td><asp:Label ID="Label8" runat="server" Text="Number of Seats(Executive)"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="txtNOSE" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtNOSE" ErrorMessage="Number of Seats(Executive)Required"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                    <td><asp:Label ID="Label9" runat="server" Text="Executie Class Fares"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="txtExecutieClassFares" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtExecutieClassFaires" ErrorMessage="Executie Class FairesRequired"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                     <tr>
                    <td><asp:Label ID="Label11" runat="server" Text="NUmber of Seats(Business)"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="txtNOSB" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtNOSB" ErrorMessage="NUmber of Seats(Business)Required"></asp:RequiredFieldValidator>
                         </td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Label10" runat="server" Text="Business Class Fares"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="txtBusinessClassFares" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtBusinessClassFares" ErrorMessage="Business Class FaresRequired"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td></td>
                    <td class="auto-style2"><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Button1_Click" />  &nbsp; &nbsp;  <asp:Button ID="Button2" runat="server" Text="Cancle" /></td>
                    <td></td>
                </tr>
            </table>

        </div>
    </form>

</asp:Content>
