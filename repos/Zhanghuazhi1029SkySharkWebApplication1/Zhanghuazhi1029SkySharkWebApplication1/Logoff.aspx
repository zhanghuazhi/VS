<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Logoff.aspx.cs" Inherits="Zhanghuazhi1029SkySharkWebApplication1.Logoff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
    <style type="text/css">
        #TextArea1 {
            height: 91px;
            width: 819px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div style="height: 138px; width: 832px">
    <textarea id="TextArea1">
        Thank you for using SkyShark Airline.
        Looking forward for serving you again.
    </textarea>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Click here to logon</asp:HyperLink>
    </div>
    </form>
</asp:Content>
