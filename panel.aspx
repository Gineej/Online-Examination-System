<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="panel.aspx.cs" Inherits="OnlineExamSystem.panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Start Exam</title>
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
        .style6{
            width:30px;
        }
        .style7{
            width:585px;
        }
        .style8{
            width:100%;
        }
        .style9{
            width:134px;
        }
        .style10{
            width:161px;
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
        .auto-style2 {
            width: 256px;
        }
        </style>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="style2">Online Exam</td>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr>
                    <td bgcolor="#999999" align="center"><a href="logout.aspx">Logout</a></td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="time" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4" align="center">
                        <asp:Label ID="msg" runat="server" Font-Bold="true" Font-Size="Large" ForeColor="#00CC00"></asp:Label>
                    </td>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr>
                    <td style="text-align:center">
                        <table align="center" bgcolor="#3399ff" class="style5">
                            <tr>
                                <td class="style6">
                                    &nbsp;
                                </td>
                                <td bgcolor="#ffffcc" class="style7">
                                    <% con.Open();
                                        rqry="select * from question where settype='" + testtype + "'order by qid";
                                        rcmd = new System.Data.SqlClient.SqlCommand(rqry, con);
                                        rdr = rcmd.ExecuteReader();
                                        c = 1;

                                        while (rdr.Read())
                                        {
                                            if (c != count)
                                            {
                                                c = c + 1;
                                            }
                                            else if (c == count)
                                            {
%> <% int q = Convert.ToInt16(rdr.GetValue(0));
       qid = q;%>
                                    <table align="center" class="style8">
                                        <tr><td>&nbsp;</td></tr>
                                        <tr>
                                            <td>
                                                Q:-<%=count%><%=rdr.GetValue(1)%>
                                            </td>
                                        </tr>
                                        <tr><td>&nbsp;</td></tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" GroupName="opt" />
                                                <%=rdr.GetValue(3)%>
                                            </td>
                                        </tr>
                                                <tr><td>&nbsp;</td></tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="RadioButton2" runat="server"  GroupName="opt" />
                                                <%=rdr.GetValue(4)%>
                                            </td>
                                        </tr>
                                        <tr><td>&nbsp;</td></tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="RadioButton3" runat="server"  GroupName="opt" />
                                                <%=rdr.GetValue(5)%>
                                            </td>
                                        </tr>
                                        <tr><td>&nbsp;</td></tr>
                                        <tr>
                                            <td>
                                                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="opt" />
                                                <%=rdr.GetValue(6)%>
                                            </td>
                                        </tr>
                                        <tr><td>&nbsp;</td></tr>
                                        <tr><td>&nbsp;</td></tr>
                                        <tr>
                                            <td>
                                                <table align="center", class="style8">
                                                    <tr>
                                                        <td class="style9">
                                                            <asp:Button ID="back" runat="server" Text="Back" Height="20px" width="100px" OnClick="back_Click"/>
                                                        </td>
                                                        <td class="auto-style2">
                                                            <asp:Button ID="next" runat="server" Text="Next" Height="20px" width="100px" OnClick="next_Click"/>
                                                        </td>
                                                         <td>
                                                            <asp:Button ID="finish" runat="server" Text="Finish" Height="20px" width="100px" OnClick="finish_Click"/>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
           <%      if (count != n)
                       {
                           c = c + 1;
                       }
                   }
               }
                   con.Close();
               %>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td>&nbsp;</td></tr>
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
