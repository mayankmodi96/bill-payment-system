<%@ Page Language="C#" MasterPageFile="~/client1/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="client1_registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td colspan="2" style="text-align: center; width: 100%; color: #6666FF" 
            width="100%">
            <b>Registration Form</b></td>
    </tr>
    <tr>
        <td style="text-align: right" width="50%">
            username:</td>
        <td width="50%">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="50%">
            password:</td>
        <td width="50%">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="50%">
            contact_no:</td>
        <td width="50%">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="50%">
            email_id:</td>
        <td width="50%">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="50%">
            security_que:</td>
        <td width="50%">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>City</asp:ListItem>
                <asp:ListItem>Name</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" width="50%">
            security_ans:</td>
        <td width="50%">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center; width: 100%" width="100%">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" 
                ImageUrl="~/icon/submit-button.jpg" onclick="ImageButton1_Click" Width="70px" />
        </td>
    </tr>
</table>
</asp:Content>

