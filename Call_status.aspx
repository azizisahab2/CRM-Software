<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Call_status.aspx.cs" Inherits="ClientQuery.Call_status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Add call status"></asp:Label>
                <asp:TextBox ID="txt_status" CssClass="form-control" runat="server" placeholder="Add call status"></asp:TextBox></div>
            <div class="form-group">
                <asp:Button ID="btn_add" CssClass="btn-primary" runat="server" Text="Add" OnClick="btn_add_Click" />
            </div>
            <div class="form-group"><asp:GridView ID="GridView1" runat="server"></asp:GridView></div>
        </div>
        <div class="col-sm-4"></div>
    </div>
</asp:Content>
