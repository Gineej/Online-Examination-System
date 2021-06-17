<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="OnlineExamSystem.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Exam System</title>
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
    </style>
</head>
<body bgcolor="#cccccc">
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
                                <td class ="style14"><a href="deleteuser.aspx">Delete User</a></td>
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
                    <td>&nbsp;</td>
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
