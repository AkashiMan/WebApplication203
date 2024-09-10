<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm203.aspx.cs" Inherits="WebApplication203.WebForm203" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
     <style>
        body{
            text-align:center;
            margin-top:10rem;
            font-size:2rem;
            padding-bottom:10px;
        }
        form {
            border:solid;
            margin-left:30%;
            margin-right:30%;
            padding-bottom:10px;
        }
        div{
            padding:5px;
        }
        .btn-login{
            margin-left:8%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div>
            <asp:Label ID="Label1" runat="server" Text="Login Form"></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="35px"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="35px"></asp:TextBox>
        </div>
        <input type="checkbox" onchange="document.getElementById('TextBox2').type=this.checked? 'text': 'password'" /> Show Password 
        <div>
            <asp:Button CssClass="btn-login" ID="Button1" runat="server" Text="Button" BackColor="#33CC33" ForeColor="White" Height="30px" Width="80px"/>
            <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="Red" ForeColor="White" Height="30px" Width="80px"/>
        </div>
    </form>
</body>
</html>
