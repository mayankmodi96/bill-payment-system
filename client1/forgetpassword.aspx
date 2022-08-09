<%@ Page Language="C#" MasterPageFile="~/client1/MasterPage.master" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="client1_forgetpassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2" style="width: 100%; text-align: center; color: #6666FF" 
                width="100%">
                <b>Forget Password</b></td>
        </tr>
        <tr>
            <td  style=" text-align: right; " width="50%">
                Email-id:</td>
                <td  style="text-align: left; color: #6666FF">
                <asp:TextBox ID="txtEmailidFor" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td style="text-align: right" width="50%">
                Security Que:</td>
                                <td width="50%">
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>City</asp:ListItem>
                                        <asp:ListItem>Name</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right" width="50%">
                                    Security Ans:</td>
            <td width="50%">
                <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" width="50%">
                &nbsp;</td>
            <td width="50%">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; width: 100%" width="50%">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/icon/submit-button.jpg" onclick="ImageButton1_Click" Width="69px" />
            &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/icon/Login_button1.jpg" 
                    PostBackUrl="~/client1/client_login.aspx"/>
            </td>
        </tr>
    </table>
</asp:Content>

