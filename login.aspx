<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlineExamSystem.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .auto-style1 {
            width: 1024px;
        }
        .style2 {
            font-family:'Monotype Corsiva';
            font-size:xx-large;
            font-weight:bold;
            color:#3399ff;
            text-align:center;
            padding:0;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td colspan="2" class="style2">Online Examination System</td>
                </tr>
                <tr>
                    <td bgcolor ="#0099FF" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#0099FF">User Name :</td>
                    <td bgcolor="#0099FF">
                        <asp:TextBox ID="name" runat="server" Width="200px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#0099FF">Password :</td>
                    <td bgcolor="#0099FF"><asp:TextBox ID="Pass" runat="server" Width="200px" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="28px" Text="Login" Width="95px" font-bold="true" BackColor="Black" ForeColor="yellow" OnClick="Button1_Click"/>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="msg" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" bgcolor="#666666" style="text-align : center"><span class="Style3">Designed By :- Gineej Rawat</span></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
