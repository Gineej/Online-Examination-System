<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paperview.aspx.cs" Inherits="OnlineExamSystem.paperview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paper view</title>
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
                    <td>Select a Question Paper to preview</td>
                </tr>
                  <tr>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td align="center">
                        <asp:DropDownList ID="testlist" runat="server" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype" Height="24px" Width="170px">
                        </asp:DropDownList>
                        <asp:Button ID="find" runat="server" OnClick="find_Click" Text="Find" />
                    </td>
                </tr>
                 <tr>
                    <td> <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [settype] FROM [question] ORDER BY [settype]"></asp:SqlDataSource>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                     </td>
                </tr>
                 <tr>
                    <td>
                        <table align="center" class="style4">
                            <tr>
                                <td>&nbsp;</td>
                                <td bgcolor="#0066ff">
                                    <table align="center" class="style4">
                                        <tr>
                                         <td class="style17">QID</td>
                                         <td class="style19">Question</td>
                                         <td class="auto-style2">Choices</td>
                                            <td>&nbsp;</td>
                                         </tr>
                                        <%
                                            while(dr.Read())
                                            { %><%ans = Convert.ToInt16(dr.GetValue(7));%><%if(ans==1)
                                                {
                                                    CheckBox1.Checked = true;
                                                    CheckBox2.Checked = false;
                                                    CheckBox3.Checked = false;
                                                    CheckBox4.Checked = false;
                                                }%><%if(ans==2)
                                                {
                                                    CheckBox1.Checked = false;
                                                    CheckBox2.Checked = true;
                                                    CheckBox3.Checked = false;
                                                    CheckBox4.Checked = false;
                                                }%><%if(ans==3)
                                                {
                                                    CheckBox1.Checked = false;
                                                    CheckBox2.Checked = false;
                                                    CheckBox3.Checked = true;
                                                    CheckBox4.Checked = false;
                                                }%><%if(ans==4)
                                                {
                                                    CheckBox1.Checked = false;
                                                    CheckBox2.Checked = false;
                                                    CheckBox3.Checked = false;
                                                    CheckBox4.Checked = true;
                                                }%>
                                        <tr>
                                            <td bgcolor="white" class="style17"><%=dr.GetValue(0)%></td>
                                            <td bgcolor="white" class="style19"><%=dr.GetValue(1)%></td>
                                            <td bgcolor="white" class="auto-style2">
                                                <table align="center" class="style4">
                                                    <tr>
                                                        <td class="style22"><%=dr.GetValue(3)%></td>
                                                        <td>
                                                            <asp:CheckBox ID="CheckBox1" runat="server" /></td>
                                                    </tr>
                                                     <tr>
                                                        <td class="style22""><%=dr.GetValue(4)%></td>
                                                        <td>
                                                            <asp:CheckBox ID="CheckBox2" runat="server" /></td>
                                                    </tr>
                                                     <tr>
                                                        <td class="style22"><%=dr.GetValue(5)%></td>
                                                        <td>
                                                            <asp:CheckBox ID="CheckBox3" runat="server" /></td>
                                                    </tr>
                                                     <tr>
                                                        <td class="style22"><%=dr.GetValue(6)%></td>
                                                        <td>
                                                            <asp:CheckBox ID="CheckBox4" runat="server" /></td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td bgcolor="white"><a href="editqpaper.aspx?settype=<%Response.Write(dr.GetValue(2));%>&qid=<%Response.Write(dr.GetValue(0));%>"<br>Edit<br>or<br>Delete<b></a></td>
                                        </tr><%
                                            } %>
                                           
                                        <tr>
                                            
                                                <td bgcolor="white" colspan="4"> 
                                                <table align="center" class="style4">

                                                    <tr>
                                                        <td class="style21">&nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="addquestion" runat="server" Text="Add Question" Font-Bold="True" Width="200px" OnClick="addquestion_Click" /></td>
                                                    </tr>

                                                </table>
                                            </td>
                                        </tr>
                                        
                                    </table>
                                </td>
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
