<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="ClientQuery.QueryForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Conatiner">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="form-group">
                    <asp:TextBox ID="txt_name" CssClass="form-control" placeholder="Customer Name" runat="server"></asp:TextBox>
                </div><br />
                <div class="form-group">
                    <asp:TextBox ID="txt_mobile" CssClass="form-control" placeholder="Contact No" runat="server"></asp:TextBox>
                </div><br />
                <div class="form-group">
                    <asp:TextBox ID="txt_email" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                </div><br />
                <div class="form-group">
                    <asp:Button ID="btn_save" CssClass="btn-primary" runat="server" Text="Save" OnClick="btn_save_Click" />
                </div><br />
                <div class="form-group">
                    <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                </div><br />
                <div class="form-group">
                    <asp:Button ID="btn_import" runat="server" CssClass="btn-primary" Text="Import" OnClick="btn_import_Click" /></div>

            </div>
            <div class="col-sm-4"></div>
        </div>
    </div>
</asp:Content>
