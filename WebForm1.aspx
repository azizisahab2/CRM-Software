<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ClientQuery.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label><asp:TextBox ID="txt_email" CssClass="form-control" runat="server" placeholder="Email"></asp:TextBox></div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Translation languages request"></asp:Label>
                        <asp:DropDownList ID="ddl_language" CssClass="form-control" runat="server">
                            <asp:ListItem>Arabic </asp:ListItem>
                            <asp:ListItem>Urdu</asp:ListItem>
                            <asp:ListItem>English</asp:ListItem>
                            <asp:ListItem>Hindi</asp:ListItem>
                            <asp:ListItem>Turkie</asp:ListItem>
                        </asp:DropDownList></div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Timeline Delivery"></asp:Label><asp:TextBox ID="txt_delivery" CssClass="form-control" runat="server" placeholder="Timeline Delivery"></asp:TextBox></div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="No of pages/word"></asp:Label><asp:TextBox ID="txt_noOfpage" CssClass="form-control" runat="server" placeholder="No of pages/word"></asp:TextBox></div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Write document description"></asp:Label><asp:TextBox ID="txt_desc" CssClass="form-control" runat="server" placeholder="Write document description" TextMode="MultiLine"></asp:TextBox></div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Add the document attachments"></asp:Label><asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" /></div>
                    <div class="form-group"><asp:Button ID="Button1" CssClass="btn-primary" runat="server" Text="Button" OnClick="Button1_Click" /></div>
                    <div class="form-group">
                        <asp:Literal ID="lit_msg" runat="server"></asp:Literal></div>
                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>      
    </form>
</body>
</html>
