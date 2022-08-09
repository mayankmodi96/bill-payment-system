<%@ Page Language="C#" MasterPageFile="~/client1/MasterPage.master"
 AutoEventWireup="true" CodeFile="client_login.aspx.cs" Inherits="client1_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="text-align: center; width: 100%; color: #6666FF;" width="50%" 
                colspan="2">
                <b>Login form</b></td>
        </tr>
        <tr>
            <td style="text-align: right" width="50%">
                Username:</td>
            <td width="50%">
               <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="124px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" width="50%">
                Password:</td>
            <td width="50%">
                <asp:TextBox ID="TextBox2" runat="server" name="password" value="" 
                    TextMode="Password" Width="124px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; width: 100%" width="10%">
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: center" width="100%">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/icon/Login_button1.jpg" onclick="ImageButton1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right; width: 100%" width="10%">
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    PostBackUrl="~/client1/forgetpassword.aspx">Forget Password</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right; width: 100%" width="10%">
                <asp:LinkButton ID="LinkButton2" runat="server" 
                    PostBackUrl="~/client1/registration.aspx">sign up</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; width: 100%" width="10%">
                <asp:Label ID="Label1" runat="server" style="color: #FF0066"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

