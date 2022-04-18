<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Operatorlogin.aspx.cs" Inherits="ClientQuery.Operatorlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="form-group"><asp:TextBox ID="txt_username" CssClass="form-group" runat="server" placeholder="Username"></asp:TextBox></div>
                <div class="form-group"><asp:TextBox ID="txt_pass" CssClass="form-group" runat="server" placeholder="Password"></asp:TextBox></div>
                <div class="form-group"><asp:Button ID="btn_login" CssClass="btn-active" runat="server" Text="Login" OnClick="btn_login_Click" /></div>
                <div class="form-group">
                    <asp:Literal ID="lit_msg" runat="server"></asp:Literal></div>
            </div>
            <div class="col-sm-4"></div>            
        </div>
    </form>
</body>
</html>
