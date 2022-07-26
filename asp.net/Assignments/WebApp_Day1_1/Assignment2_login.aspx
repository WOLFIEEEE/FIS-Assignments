<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment2_login.aspx.cs" Inherits="WebApp_Day1_1.Assignment2_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Lbl1" runat="server" Text="UserName"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtuname" runat="server" Width="214px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Lbl2" runat="server" Text="Password"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtpswd" runat="server" Width="211px"></asp:TextBox>
            <br />
            <br />
            <asp:Button  ID="BtnRedirect" runat="server" Text="Submit" OnClick="Btn_Click" PostBackUrl="~/Assignment2_home.aspx" />&nbsp;&nbsp;&nbsp;
           
        </div>
    </form>
</body>
</html>
