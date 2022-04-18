<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TodaysCall.aspx.cs" Inherits="ClientQuery.TodaysCall" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Today's Call "></asp:Label></div>
            <div class="form-group">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
            </div>
            <div class="form-group"></div>
        </div>
        <div class="col-sm-2"></div>
    </div>
</asp:Content>
