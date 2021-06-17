<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="OnlineExamSystem.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report</title>
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
            width: 251px;
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
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td bgcolor="#0066ff">
                        <table align="center" class="style4">
                            <tr>
                                <td class="style22">User</td>
                                <td class="style22">Date</td>
                                <td class="style21">Test Name</td>
                                <td class="style20">Marks</td>
                                <td class="style5">Total Marks</td>
                            </tr>
                            <%
                                while (dr.Read())
                                {%>
                            <tr>
                                <td bgcolor="#FFFFCC" class="style22"><%=dr.GetValue(0) %></td>
                                <td bgcolor="#FFFFCC" class="style22"><%=dr.GetValue(1) %></td>
                                <td bgcolor="#FFFFCC" class="style21"><%=dr.GetValue(2) %></td>
                                <td bgcolor="#FFFFCC" class="style20"><%=dr.GetValue(3) %></td>
                                <td bgcolor="#FFFFCC" class="style5"><%=dr.GetValue(4) %></td>
                            </tr>
                            <%
                                }con.Close();
                                %>
                        </table>

                    </td>
                </tr>
                 <tr>
                    <td> &nbsp;</td>
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
