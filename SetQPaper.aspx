<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetQPaper.aspx.cs" Inherits="OnlineExamSystem.SetQPaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Set Question Paper</title>
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
                    <td class="style2" colspan="4"> Online Examination System </td>
                </tr>
                <tr>
                    <td bgcolor="#3333ff" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="99CCFF" style="color:#000099; font-size:medium; font-weight:700" colspan="4">&nbsp;

                        <table align="center" class="style4">
                            <tr>
                                <td class ="style12"><a href="adduser.aspx">Add User</a></td>
                                <td class ="style14"><a href="deleteuser.aspx">Delete User</a></td>
                                <td class ="style14"><a href="setqpaper.aspx">Set Q Paper</a></td>
                                <td class ="style14"><a href="paperview.aspx">Preview Q Paper</a></td>
                                <td class ="style14"><a href="deleteqpaper.aspx">Delete Q Paper</a></td>
                                <td class ="style14"><a href="#">View Report</a></td>
                                <td class ="style5"><a href="adminlogout.aspx">Logout</a></td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        &nbsp; 
                        <asp:DropDownList ID="testlist" runat="server" Height="20px" Width="150px" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:TextBox ID="Testname" runat="server" Visible="False"></asp:TextBox>
                        <asp:Button ID="ntest" runat="server" Text="New Test" Font-Bold="True" Width="88px" OnClick="ntest_Click" />
                        <asp:Label ID="msg1" runat="server"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [settype] FROM [question] ORDER BY [settype]"></asp:SqlDataSource>
                    </td>
                                         
                </tr>
                 
                 <tr>
                    <td colspan="4">
                        <asp:TextBox ID="question" runat="server" Height="50px" Width="600px" Font-Bold="true"></asp:TextBox>
                        <asp:Label ID="msg2" runat="server" ForeColor="Blue"></asp:Label>
                     </td>
                    
                </tr>
                 <tr>
                    <td colspan="4">
                        &nbsp;
                     </td>
                    
                </tr>
                 <tr>
                    <td colspan="4">
                        <asp:TextBox ID="opt1" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" GroupName="opt" />
                        <asp:Label ID="msg3" runat="server" ForeColor="Blue"></asp:Label>
                     </td>
                    
                </tr>
                 <tr>
                    <td colspan="4">
                        &nbsp;</td>
                    
                </tr>
                 <tr>
                    <td colspan="4">
                        <asp:TextBox ID="opt2" runat="server"  Width="600px" Font-Bold="true"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="opt"/>
                        <asp:Label ID="msg4" runat="server" ForeColor="Blue"></asp:Label>
                     </td>
                    
                </tr>
                 <tr>
                    <td colspan="4">
                        &nbsp;</td>
                    
                </tr>
                 <tr>
                    <td colspan="4">
                        <asp:TextBox ID="opt3" runat="server"  Width="600px" Font-Bold="true"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="opt" />
                        <asp:Label ID="msg5" runat="server" ForeColor="Blue"></asp:Label>
                     </td>
                    
                </tr>
                 <tr>
                    <td colspan="4">
                        &nbsp;</td>
                    
                </tr>
                 <tr>
                    <td colspan="4">
                        <asp:TextBox ID="opt4" runat="server"  Width="600px" Font-Bold="true"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="opt" />
                        <asp:Label ID="msg6" runat="server" ForeColor="Blue"></asp:Label>
                     </td>
                    
                </tr>
                 <tr>
                    <td colspan="4">
                        <asp:Label ID="msg7" runat="server"></asp:Label>
                     </td>
                    
                </tr>
                 <tr>
                    <td colspan="4">
                       
                        
                        
                       
                        </td>
                    
                </tr>
                 <tr>
                    <td align="center">
                        <asp:Button ID="submit" runat="server" Text="Add Question" Font-Bold="true" OnClick="submit_Click" /></td>
                    
                    
                    
                    <td align="center">
                        <asp:Button ID="paperview" runat="server" Text="View Paper" Font-Bold="true" OnClick="paperview_Click"  /></td>
                    
                   
                    
                </tr>
                <tr>
                    <td bgcolor="#3333ff" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#666666" style="text-align : center" colspan="4">
                        <span class="Style3">Designed By :- Gineej Rawat</span>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
