<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testselection.aspx.cs" Inherits="OnlineExamSystem.testselection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test</title>
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
        .style9{
            width:100%;
        }
        .style10{
            width:280px;
        }
        .style11{
            width:448px;
        }
        .style12{
            text-align:center;
            width:165px;
        }
        .style13{
            font-size:large;
            color:#ffffff;
            font-weight:bold;
            padding:0;
        }
        .style14{
            text-align:center;
            width:166px;
        }
        .style15{
            text-align:center;
            width:166px;
            color:#ffffff;
            text-decoration:underline;
        }
        .style16{
            text-align:center;
            font-family:"Monotype Corsiva";
            font-weight:bold;
            font-size:medium;
            color:#0000ff;
        }
        .style17{
            width:36px;
        }
        .style19{
            width:623px;
        }
        .style20{
            width:214px;
        }
        .style21{
            width:61px;
        }
        .style22{
            width:173px;
        }
        </style>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" align="center">
                <tr>
                    <td class="style2" colspan="3"> Online Exam</td>
                </tr>
                <tr>
                    <td bgcolor="#3333ff" colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="99CCFF" align="center" style="color:#000099; font-size:medium; font-weight:700" colspan="3" >&nbsp;

                        <b><a href="logout.aspx">Logout</a></b>

                        </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>
                        <table align="center" class="style9" bgcolor="99CCFF">
                            <tr>
                                <td class="style12">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style13" align="center">Select A Test</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype" Height="35px" Width="151px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [settype] FROM [question] ORDER BY [settype]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Button ID="submit" runat="server" Text="Submit" Height="28px" OnClick="submit_Click" Width="121px" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                      </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td colspan="3"> &nbsp;</td>
                </tr>
                 <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#3333ff" colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#666666" style="text-align : center" colspan="3">
                        <span class="Style3">Designed By :- Gineej Rawat</span>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
