<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            margin:0px;
            padding:0px;
        }
         input
        {
            padding:5px;
            }
        #add{
            
            height:482px;
            width:450px;
           
            float:left;
        }
         #show{
            
            height:550px;
            width:789px;
           
            margin-left:460px;
        }
        body{
            margin-top:40px;
            margin-left:20px;
            background-color:aqua;
        }
        #h11{
            float:left;
        }
        .auto-style2 {
            width: 100%;
            height: 342px;
        }
        .auto-style3 {
            width: 172px;
        }
        .auto-style4 {
            width: 100%;
            height: 82px;
            margin-top:10px;
        }
        .auto-style6 {
            width: 278px;
            height: 106px;
        }
        .auto-style7 {
            height: 106px;
        }
        .auto-style8 {
            width: 278px;
            height: 18px;
        }
        .auto-style9 {
            height: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="add" >
    
       
    
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <h2>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7"  runat="server" CssClass="auto-style1" Font-Bold="True" Text="Book Fields :"></asp:Label></h2>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label6" runat="server" CssClass="auto-style1" Font-Bold="True" Text="Title :"></asp:Label></h3>
                </td>
                <td>
                    <asp:TextBox ID="txttitle" runat="server" Height="30px" Width="162px" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                   <h3>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Author :</h3>
                </td>
                <td>
                    <asp:TextBox ID="txtauthor" runat="server" Height="30px" Width="162px" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                   <h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ISBN :</h3>
                </td>
                <td>
                    <asp:TextBox ID="txtisbn" runat="server" Height="30px" Width="162px" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                  <h3>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Publisher :</h3>
                </td>
                <td>
                    <asp:TextBox ID="txtpublisher" runat="server" Height="30px" Width="162px" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                  <h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year :</h3>
                </td>
                <td>
                    <asp:TextBox ID="txtyear" runat="server" Height="30px" Width="162px" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            </table>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnaddbook" runat="server" Text="Add Book" Font-Bold="True" Height="46px" Width="225px" OnClick="btnaddbook_Click" />
                
       
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                
       
    
     </div>
        <div id="show" >
            <table class="auto-style4">
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="LogOut" runat="server" Text="LogOut " OnClick="LogOut_Click"/>
                
       
    
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
           <h1 id="h11">
               Search Books :&nbsp; 
           </h1>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtSearch" runat="server" Height="28px" Width="295px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnSearch" runat="server" Text="Search" Font-Bold="True" Height="46px" Width="152px" OnClick="btnSearch_Click" />
                
       
    
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" Height="78px" Width="777px" AutoGenerateColumns="false" ViewStateMode="Disabled"  OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" >
                <Columns>
                    <asp:BoundField HeaderText="Sr No." DataField="id" ReadOnly="true" ControlStyle-Width="50px"/>
                    <asp:BoundField HeaderText="Sr No." DataField="title"  ControlStyle-Width="150px" />
                    <asp:BoundField HeaderText="Sr No." DataField="author" ControlStyle-Width="100px" />
                    <asp:BoundField HeaderText="Sr No." DataField="isbn"  ControlStyle-Width="100px"/>
                    <asp:BoundField HeaderText="Sr No." DataField="Publisher" ControlStyle-Width="100px" />
                    <asp:BoundField HeaderText="Sr No." DataField="year" ControlStyle-Width="100px" />
                    <asp:CommandField HeaderText="OPretion" ShowDeleteButton="true" ShowEditButton="true"/>
                </Columns>
                
            </asp:GridView>
     </div>
    </form>
</body>
</html>
