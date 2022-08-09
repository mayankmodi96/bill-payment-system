<%@ Page Language="C#" MasterPageFile="~/client1/MasterPage.master" AutoEventWireup="true" CodeFile="purchase.aspx.cs" Inherits="client1_purchase" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 100%">
        <tr>
            <td colspan="2" 
                style="text-align: center; width: 100%; color: #6666FF; height: 20px" 
                width="100%">
                purchase<b> Bill</b></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right; width: 100%" width="50%">
                <table style="width: 100%">
                    <tr>
                        <td width="18%" style="height: 13px">
                            invoice no:</td>
                        <td style="text-align: left; height: 13px;" width="15%">
                            <asp:TextBox ID="TextBox5" runat="server" Width="94px"></asp:TextBox>
                        </td>
                        <td style="text-align: right; height: 13px;" width="20%">
                            invoice date:</td>
                        <td style="text-align: left; height: 13px;" width="30%">
                            <asp:TextBox ID="TextBox6" runat="server" Height="16px" Width="95px"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" 
                                ImageUrl="../icon/images_2.jpeg" onclick="ImageButton1_Click" Width="24px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" width="50%">
                &nbsp;</td>
            <td width="50%">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="125px" 
                    onselectionchanged="Calendar1_SelectionChanged" style="text-align: right" 
                    Visible="False" Width="141px">
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left; width: 100%" width="50%">
                <span style="color: #6666FF"><b>purchase Item details:</b></span><table style="width: 100%">
                    <tr>
                        <td width="30%">
                            product name:<br />
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="pro_name" DataValueField="pro_id" 
                                Height="20px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                Width="125px" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [pro_name], [pro_id] FROM [product_master]">
                            </asp:SqlDataSource>
                        </td>
                        <td width="20%">
                            price:<br />
                            <asp:TextBox ID="TextBox9" runat="server" Width="96px"></asp:TextBox>
                        </td>
                        <td width="20%">
                            Quantity:<br />
                            <asp:TextBox ID="TextBox10" runat="server" Width="95px"></asp:TextBox>
                        </td>
                        <td width="20%">
                            Discount:<br />
                            <asp:TextBox ID="TextBox11" runat="server" Width="95px"></asp:TextBox>
                        </td>
                        <td style="text-align: center" width="10%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5" width="100%" style="text-align: center">
                            <asp:Button ID="Button1" runat="server" Height="26px" Text="ADD" Width="50px" onclick="Button1_Click" 
                                />
                        </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" width="100%">
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                                    CellPadding="3" Width="476px" Height="83px">
                                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                                    <RowStyle ForeColor="#000066" />
                                                    <Columns>
                                                        <asp:BoundField HeaderText="Product Name" DataField="productname" />
                                                        <asp:BoundField HeaderText="Price" DataField="price" />
                                                        <asp:BoundField HeaderText="Quantity" DataField="quantity" />
                                                        <asp:BoundField HeaderText="Discount" DataField="discount" />
                                                        <asp:BoundField HeaderText="Net Price" DataField="netprice" />
                                                    </Columns>
                                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" width="100%">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" width="100%">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td width="60%" style="height: 15px">
                                                            &nbsp;</td>
                                    <td width="40%" style="height: 15px">
                                                        </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="width: 100%" width="50%">
                                        <table style="width: 100%">
                                            <tr>
                                                <td style="text-align: center; width: 100%;" width="50%">
                                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                                    <asp:Button ID="Button2" runat="server" Height="26px" Text="Submit &amp; Report" 
                                                        Width="123px" onclick="Button2_Click"  />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left; width: 100%" width="50%">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

