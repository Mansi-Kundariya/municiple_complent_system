<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="tutorial.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 338px;
        }
        .auto-style3 {
            width: 338px;
            height: 26px;
            text-align: right;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 338px;
            text-align: right;
        }
        .auto-style6 {
            width: 338px;
            text-align: right;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
        }
        .auto-style8 {
            width: 228px;
        }
        .auto-style9 {
            height: 26px;
            width: 228px;
        }
        .auto-style10 {
            height: 29px;
            width: 228px;
        }
        .auto-style11 {
            width: 76px;
        }
        .auto-style12 {
            text-align: center;
            color: #000099;
            font-size: x-large;
        }
    </style>
</head>
<body>

    <!-- -------------------------------------------------- -->

    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
<a class="navbar-brand" href="#">MyTecBits.com</a>
<button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar” aria-expanded=”false” aria-label=”Toggle navigation”>
<span class=”navbar-toggler-icon”></span>
</button>
<div id=”navbar” class=”navbar-collapse collapse”>
<ul class="navbar-nav mr-auto">
<li class="nav-item active"><a class=”nav-link” href=”/Default.aspx”>Home</a></li>
<li class=”nav-item”><a class=”nav-link” href=”#about”>About</a></li>
<li class=”nav-item”><a class=”nav-link” href=”#contact”>Contact</a></li>
<li class=”nav-item dropdown”>
<a class=”nav-link dropdown-toggle” href=”#” data-toggle=”dropdown” aria-haspopup=”true” aria-expanded=”false” id=”dropdown04″>Dropdown <span class=”caret”></span></a>
<div class=”dropdown-menu” aria-labelledby=”dropdown04″>
<a class=”dropdown-item” href=”#”>Action</a>
    <a class="”dropdown-item”" href="”#”">Another action</a>
<a class=”dropdown-item” href=”#”>Something else here</a>
</div>
</li>
</ul>
</div>
<!–/.nav-collapse –>
</nav>

    <!-- -------------------------------------------------- -->

    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><strong><em>Registration Page</em></strong></td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">User Name:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="username" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="User name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">E-mail:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="email" runat="server" TextMode="Email" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="password" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Confirm Password:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="confirmpassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confirmpassword" ErrorMessage="Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmpassword" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Country:</td>
                <td class="auto-style10">
                    <asp:DropDownList ID="country" runat="server" Width="180px">
                        <asp:ListItem>Choose Country</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>Japan</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                        <asp:ListItem>Shrilanka</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="country" ErrorMessage="Choose country" ForeColor="Red" InitialValue="Choose Country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
                    <input id="Reset1" class="auto-style11" type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>

    <!-- jqurey, bootstrap files link-->
    <script src="js/jquery.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>
</html>
