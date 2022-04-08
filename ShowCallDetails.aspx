<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowCallDetails.aspx.cs" Inherits="ClientQuery.ShowCallDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-4">
            <div class="form-group">
                <asp:DropDownList ID="ddl_Callstatus" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddl_Callstatus_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Select </asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                <asp:Literal ID="lit_msg" runat="server"></asp:Literal>
            </div>
        </div>
        <div class="col-sm-4"></div>
    </div>
</asp:Content>
