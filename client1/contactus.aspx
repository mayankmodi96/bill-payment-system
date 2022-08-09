<%@ Page Language="C#" MasterPageFile="~/client1/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="client1_contactus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="text-align: right" width="50%">
                Name:</td>
            <td width="50%">
                Modi Mayank</td>
        </tr>
        <tr>
            <td style="text-align: right" width="50%">
                Contact no:</td>
            <td width="50%">
                7600805984</td>
        </tr>
        <tr>
            <td style="text-align: right" width="50%">
                Email id:</td>
            <td width="50%">
                <asp:HyperLink ID="HyperLink1" runat="server">modimayank90@gmail.com</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

