<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="tutorial.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>
            <asp:Label ID="Label_welcome" runat="server" CssClass="auto-style2" Text="Welcome...."></asp:Label>
            <br />
            <br />
            <asp:Button ID="B_logout" runat="server" OnClick="B_logout_Click" Text="Logout" />
            </strong>
        </div>
    </form>
</body>
</html>
