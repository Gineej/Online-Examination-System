<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editqpaper.aspx.cs" Inherits="OnlineExamSystem.editqpaper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Question Paper</title>
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
            height: 32px;
        }
        </style>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" align="center">
                <tr>
                    <td class="style2" colspan="3"> Online Examination System </td>
                </tr>
                <tr>
                    <td bgcolor="#3333ff" colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="99CCFF" style="color:#000099; font-size:medium; font-weight:700" colspan="3">&nbsp;

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
                    <td colspan="3">
                        &nbsp;</td>
                    
                </tr>
                 
                 <tr>
                    <td colspan="3">
                        <asp:TextBox ID="question" runat="server" Height="50px" Width="600px" Font-Bold="true"></asp:TextBox>
                     </td>
                    
                </tr>
                 <tr>
                    <td colspan="3">
                        &nbsp;
                     </td>
                    
                </tr>
                 <tr>
                    <td colspan="3" class="auto-style2">
                        <asp:TextBox ID="opt1" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton1" runat="server"  GroupName="opt" />
                     </td>
                    
                </tr>
                 <tr>
                    <td colspan="3">
                        &nbsp;</td>
                    
                </tr>
                 <tr>
                    <td colspan="3">
                        <asp:TextBox ID="opt2" runat="server"  Width="600px" Font-Bold="true"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="opt"/>
                     </td>
                    
                </tr>
                 <tr>
                    <td colspan="3">
                        &nbsp;</td>
                    
                </tr>
                 <tr>
                    <td colspan="3">
                        <asp:TextBox ID="opt3" runat="server"  Width="600px" Font-Bold="true"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="opt" />
                     </td>
                    
                </tr>
                 <tr>
                    <td colspan="3">
                        &nbsp;</td>
                    
                </tr>
                 <tr>
                    <td colspan="3">
                        <asp:TextBox ID="opt4" runat="server"  Width="600px" Font-Bold="true"></asp:TextBox>
                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="opt" />
                     </td>
                    
                </tr>
                 <tr>
                    <td colspan="3">
                       
                        
                        
                       
                        </td>
                    
                </tr>
                 <tr>
                    <td align="center" class="style16">
                        <asp:Button ID="update" runat="server" Text="Update" Font-Bold="True"  Width="170px" OnClick="update_Click" />&nbsp;</td>
                    
                    
                    
                    <td align="center" class="style16">
                        <asp:Button ID="delete" runat="server" Text="Delete" Font-Bold="True" Width="170px" OnClick="delete_Click" />&nbsp;</td>
                    
                    
                    
                    <td align="center" class="style16">
                        <asp:Button ID="paperview" runat="server" Text="View Paper" Font-Bold="True" Width="170px" OnClick="paperview_Click" />&nbsp;</td>
                    
                    
                    
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
