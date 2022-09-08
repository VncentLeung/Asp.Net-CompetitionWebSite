﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StuLogin.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
           table{
            width:350px;
            text-align:center;
            align-content:center;
            margin:auto auto
        }
        div{
            width:100%;
            align-content:center;
            text-align:center;
           height:100%;
           margin:200px auto auto auto
           
        }
        body{
             background-image:src("~/Images/1.jpg");
             background-image:url("~/Images/1.jpg");
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td colspan="2">学生登录</td>
                </tr>
                <tr>
                    <td>学号</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>密码</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" Width="125px" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="忘记密码" Width="125px" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server"  CausesValidation="False" Visible="True" PostBackUrl="~/ManagerLogin.aspx">管理员登录</asp:LinkButton>
    </form>
</body>
</html>
