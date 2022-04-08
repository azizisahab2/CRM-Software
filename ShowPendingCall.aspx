<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowPendingCall.aspx.cs" Inherits="ClientQuery.ShowPendingCall" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="All Pending calls "></asp:Label>
            </div>
            <div class="form-group"><asp:GridView ID="GridView1" runat="server"></asp:GridView></div>
            <div class="form-group"></div>
        </div>
        <div class="col-sm-2"></div>
    </div>
</asp:Content>
