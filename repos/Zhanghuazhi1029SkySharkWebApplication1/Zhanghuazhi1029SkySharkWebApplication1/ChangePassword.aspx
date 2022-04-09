<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Zhanghuazhi1029SkySharkWebApplication1.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
        <form id="form1" runat="server">
        <from id="formq" runat="server">
            <div>
                <table>
                    <tr>
                       
                        <td>
                            <asp:Label ID="txtUser" runat="server" Text="Changing Password for:"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please specify a valid password."></asp:RequiredFieldValidator>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="ConfirmPassword"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtConfPassword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtConfPassword" ErrorMessage="Please specify a valid password."></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfPassword" ErrorMessage="The passwords specified by you do not match.Please try again."></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        
                        <td></td>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                        </td>
                        <td></td>
                    </tr><tr>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr><tr>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr><tr>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>

                </table>
            </div>

        </from>
   
        </form>
   
</asp:Content>
