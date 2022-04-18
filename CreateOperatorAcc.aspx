<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="CreateOperatorAcc.aspx.cs" Inherits="ClientQuery.CreateOperatorAcc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <div class="form-group">
                <asp:TextBox ID="txt_name" CssClass="form-control" runat="server" placeholder="Name"></asp:TextBox></div>
            <div class="form-group">
                <asp:TextBox ID="txt_mobile" CssClass="form-control" runat="server"  placeholder="Mobile"></asp:TextBox></div>
            <div class="form-group">
                <asp:TextBox ID="txt_email" CssClass="form-control" runat="server"  placeholder="Email"></asp:TextBox></div>
            <div class="form-group">
                <asp:TextBox ID="txt_username" CssClass="form-control" runat="server"  placeholder="User name"></asp:TextBox></div>
            <div class="form-group">
                <asp:TextBox ID="txt_password" CssClass="form-control" runat="server"  placeholder="Password"></asp:TextBox></div>
            <div class="form-group">
                <asp:TextBox ID="txt_address" CssClass="form-control" runat="server" placeholder="Address"></asp:TextBox></div>
            <div class="form-group">
                <asp:Button ID="btn_save" CssClass="btn_active" runat="server" Text="Save" OnClick="btn_save_Click" /></div>
            <div class="form-group">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
        </div>
        <div class="col-sm-4"></div>
    </div>
</asp:Content>
