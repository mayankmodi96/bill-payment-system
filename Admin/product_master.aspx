<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="product_master.aspx.cs" Inherits="Admin_product_master" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" 
        DataKeyNames="pro_id" 
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onrowupdating="GridView1_RowUpdating" Width="225px" 
        onrowcancelingedit="GridView1_RowCancelingEdit">
        <Columns>
            <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True" 
                UpdateText="Save" />
            <asp:CommandField ButtonType="Button" HeaderText="Delete" 
                ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    &nbsp;
    <br />
    <asp:Button ID="Button1" Width="100px" runat="server" onclick="Button1_Click" 
        Text="insert product" />
    </form>
</asp:Content>

