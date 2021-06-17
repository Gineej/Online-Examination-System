<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adduser.aspx.cs" Inherits="OnlineExamSystem.adduser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add User</title>
    <style type="text/css">
        .auto-style1 {
            width: 1024px;
        }
        .style2{
            font-family:'Monotype Corsiva';
            font-size:xx-large;
            font-weight:bold;
            color:#3399ff;
            text-align:center;
            padding:0;
        }
        .style3{
            font-size:large;
            font-weight:bold;
            color:#ffffff;
            font-family:'Monotype Corsiva';
        }
        .style4{
            width:100%;
        }
        .style5{
            text-align:center;
        }
        .style12{
            text-align:center;
            width:165px;
        }
        .style14{
            text-align:center;
            width:166px;
        }
        .auto-style4 {
            width: 95px;
        }
        .auto-style6 {
            width: 368px;
        }
        .auto-style7 {
            width: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" align="center">
                <tr>
                    <td class="style2"> Online Examination System </td>
                </tr>
                <tr>
                    <td bgcolor="#3333ff">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="99CCFF" style="color:#000099; font-size:medium; font-weight:700">&nbsp;

                        <table align="center" class="style4">
                            <tr>
                                <td class ="style12"><a href="adduser.aspx">Add User</a></td>
                                <td class ="style14"><a href="DeleteUser.aspx">Delete User</a></td>
                                <td class ="style14"><a href="setqpaper.aspx">Set Q Paper</a></td>
                                <td class ="style14"><a href="paperview.aspx">Preview Q Paper</a></td>
                                <td class ="style14"><a href="deleteqpaper.aspx">Delete Q Paper</a></td>
                                <td class ="style14"><a href="report.aspx">View Report</a></td>
                                <td class ="style5"><a href="adminlogout.aspx">Logout</a></td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td bgcolor="#cccccc">&nbsp;
                        <table align="center" class="auto-style1">
               
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
               
                <tr>
                    <td class="auto-style7" rowspan="6">&nbsp;</td>
                    <td class="auto-style4">User Name :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="name" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Must Enter The Username" ControlToValidate="name" ForeColor="#006699"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style7" rowspan="6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Password :</td>
                    <td style="margin-left: 40px" class="auto-style6"><asp:TextBox ID="Pass" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Must Enter The Password" ControlToValidate="Pass" ForeColor="#006699"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" Height="28px" Text="Register" Width="95px" font-bold="true" BackColor="Black" ForeColor="yellow" OnClick="Button1_Click"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="msg" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                
            </table>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#3333ff">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#666666" style="text-align : center">
                        <span class="Style3">Designed By :- Gineej Rawat</span>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
