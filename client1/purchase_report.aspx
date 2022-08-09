<%@ Page Language="C#" MasterPageFile="~/client1/MasterPage.master" AutoEventWireup="true" CodeFile="purchase_report.aspx.cs" Inherits="client1_purchase_report" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="4" style="text-align: center; color: #6666FF" width="100%">
                purchase report</tr>
        <tr>
            <td style="text-align: right" width="25%">
                invoice no:</td>
            <td width="25%">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td style="text-align: right" width="25%">
                invoice date:</td>
            <td width="25%">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td style="text-align: right" width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: left" width="100%">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" Width="454px">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="pro_name" HeaderText="Name of Product(Particular)" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
                    </Columns>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center" width="100%">
                <table class="style1">
                    <tr>
                        <td width="60%">
                            &nbsp;</td>
                        <td style="text-align: right" width="20%">
                            Total Price:</td>
                        <td style="text-align: left" width="100%">
                <asp:Label ID="Label4" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="60%">
                            &nbsp;</td>
                        <td style="text-align: right" width="20%">
                            Discount:</td>
                        <td style="text-align: left" width="20%">
                <asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="60%">
                            &nbsp;</td>
                        <td style="text-align: right" width="20%">
                            Net Price:</td>
                        <td style="text-align: left" width="20%">
                <asp:Label ID="Label6" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 80%">
                <asp:Button ID="Button1" runat="server" Text="Print" onclick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

