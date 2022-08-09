<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="product_insert.aspx.cs" Inherits="Admin_product_insert" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
    <table style="width: 100%">
        <tr style="margin-left: 40px">
            <td style="text-align: right" width="50%">
                product id:</td>
            <td width="50%">
                <asp:TextBox ID="TextBox1" runat="server" Width="119px"></asp:TextBox>
            </td>
        </tr>
        <tr style="margin-left: 40px">
            <td style="text-align: right" width="50%">
                Product name:</td>
            <td width="50%">
                <asp:TextBox ID="TextBox9" runat="server" Width="119px"></asp:TextBox>
            </td>
        </tr>
        <tr style="margin-left: 40px">
            <td style="text-align: right" width="50%">
                Price:</td>
            <td width="50%">
                <asp:TextBox ID="TextBox2" runat="server" Width="119px"></asp:TextBox>
            </td>
        </tr>
        <tr style="margin-left: 40px">
            <td style="text-align: right" width="50%">
                Product packing date:</td>
            <td width="50%">
                <asp:TextBox ID="TextBox3" runat="server" Width="119px"></asp:TextBox>
            </td>
        </tr>
        <tr style="margin-left: 40px">
            <td style="text-align: right" width="50%">
                Expire date:</td>
            <td width="50%">
                <asp:TextBox ID="TextBox4" runat="server" Width="119px"></asp:TextBox>
            </td>
        </tr>
        <tr style="margin-left: 40px">
            <td style="text-align: right" width="50%">
                Tax:</td>
            <td width="50%">
                <asp:TextBox ID="TextBox5" runat="server" Width="119px"></asp:TextBox>
            </td>
        </tr>
        <tr style="margin-left: 40px">
            <td style="text-align: right" width="50%">
                Discount:</td>
            <td width="50%">
                <asp:TextBox ID="TextBox6" runat="server" Width="119px"></asp:TextBox>
            </td>
        </tr>
        <tr style="margin-left: 40px">
            <td style="text-align: right" width="50%">
                open stock:</td>
            <td width="50%">
                <asp:TextBox ID="TextBox7" runat="server" Width="119px"></asp:TextBox>
            </td>
        </tr>
        <tr style="margin-left: 40px">
            <td style="text-align: right" width="50%">
                &nbsp;</td>
            <td width="50%">
                &nbsp;</td>
        </tr>
        <tr style="margin-left: 40px">
            <td colspan="2" style="width: 100%; text-align: center" width="100%">
                <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
                    Text="Insert" Width="48px" />
            </td>
        </tr>
        </table>
    </form>
</asp:Content>

