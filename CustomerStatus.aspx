<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerStatus.aspx.cs" Inherits="ClientQuery.CustomerStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .aspx-control
        {
            width: 100%;
            height: 20px;    
            position: relative;
        }

        .cont-date-pic
        {
            width: 100%;
            height: 100px;                        
            position: absolute;
            top:0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Customer name"></asp:Label>
                    <asp:TextBox ID="txt_name" CssClass="form-control" runat="server" placeholder="Name"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Mobile no "></asp:Label>
                    <asp:TextBox ID="txt_mbile" runat="server" CssClass="form-control" placeholder="Mobile no"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Call Status"></asp:Label>
                    <asp:DropDownList ID="ddl_status" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Call Time"></asp:Label>
                    <asp:TextBox ID="txt_time" runat="server" CssClass="form-control" placeholder="hh:mm:ss am/pm"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Call Date"></asp:Label>
                    <div class="aspx-control" >
                        <asp:TextBox ID="txt_date" runat="server"  BorderStyle="None"></asp:TextBox>
                        <div class="cont-date-pic">                                        
                            <input id="mydateFrom" type="date" onchange="handler1(event);" class="form-control" />
                        </div>
                    </div>
                </div><br />

                <div class="form-group">
                    <asp:Label ID="Label8" runat="server" Text="Follow Up Call Date"></asp:Label>
                    <div class="aspx-control" >
                        <asp:TextBox ID="txt_followupdate" runat="server"  BorderStyle="None"></asp:TextBox>
                        <div class="cont-date-pic">                                        
                            <input id="mydateFollowup" type="date" onchange="handler2(event);" class="form-control" />
                        </div>
                    </div>
                </div><br />

                <div class="fom-group">
                    <asp:Label ID="Label7" runat="server" Text="Remark if call is pickup"></asp:Label>
                    <asp:TextBox ID="txt_remark" runat="server" CssClass="form-control"  TextMode="MultiLine" placeholder="Remark if call is pickup"></asp:TextBox>
                </div>  
                <div class="form-group">
                    <asp:Button ID="Button1" CssClass="btn-primary" runat="server" Text="Button" OnClick="Button1_Click" /></div>
                <div class="form-group">
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </div>
            </div>                
        </div>
            <div class="col-sm-4"></div>
    </div>

    <script> 
        function handler1(e)
        {
            document.getElementById('<%=txt_date.ClientID %>').value = e.target.value;            
        }
        function handler2(e)
        {
            document.getElementById('<%=txt_followupdate.ClientID %>').value = e.target.value;
        }
    </script> 
</asp:Content>
