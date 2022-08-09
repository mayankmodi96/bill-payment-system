<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="supp_master.aspx.cs" Inherits="Admin_supp_master" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="2" 
        DataKeyNames="supp_id" ForeColor="#333333" GridLines="None" 
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onrowupdating="GridView1_RowUpdating" 
        onrowcancelingedit="GridView1_RowCancelingEdit">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True" 
                UpdateText="Save" />
            <asp:CommandField ButtonType="Button" HeaderText="Delete" 
                ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</asp:Content>

