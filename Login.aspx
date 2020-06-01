<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 51%;
            height: 168px;
           
        }
        .auto-style3 {
            width: 274px;
        }
        body{
            margin-top:100px;
            margin-left:500px;
        }
        .auto-style6 {
            width: 274px;
            height: 64px;
        }
        .auto-style8 {
            width: 274px;
            height: 47px;
        }
        .auto-style10 {
            width: 274px;
            height: 35px;
        }
        input
        {
            padding:5px;
           
        }
        .auto-style11 {
            width: 334px;
        }
        .auto-style12 {
            width: 334px;
            height: 47px;
        }
        .auto-style13 {
            width: 334px;
            height: 64px;
        }
        .auto-style14 {
            width: 334px;
            height: 35px;
        }
        #btnlogin{
            font-size:25px;
            text-align:center;
            background-color:aqua;
            cursor:pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"><h2>User Id :</h2></td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtname" runat="server" Height="27px" Width="166px" placeholder="User Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"><h2>User Password :</h2></td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtpass" runat="server" placeholder="User Password" CssClass="input" Height="27px" Width="166px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style10"></td>
            </tr>
            </table>
    
    </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnlogin" runat="server" Text="Login" Height="37px" Width="184px" Font-Bold="True" OnClick="btnlogin_Click"  />
                </p>
    </form>
</body>
</html>
