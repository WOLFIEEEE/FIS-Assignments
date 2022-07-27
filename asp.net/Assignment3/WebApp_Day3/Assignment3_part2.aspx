<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment3_part2.aspx.cs" Inherits="WebApp_Day3.Assignment3_part2" %>



<%--Create a web form application which will have a home page that displays the number of unique users who have visited the web site--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script runat="server">  
void Application_Start(object sender, EventArgs e)   
{  
// Code that runs on application startup  
Application["VisitorCount"] = 0;  
}  
void Application_End(object sender, EventArgs e)   
{  
// Code that runs on application shutdown  
}  
void Application_Error(object sender, EventArgs e)   
{   
// Code that runs when an unhandled error occurs  
}  
void Session_Start(object sender, EventArgs e)   
{  
// Code that runs when a new session is started  
Application["VisitorCount"] = (int)Application["VisitorCount"] + 1;  
}  
void Session_End(object sender, EventArgs e)   
{  
// Code that runs when a session ends.   
// Note: The Session_End event is raised only when the sessionstate mode  
// is set to InProc in the Web.config file. If session mode is set to StateServer   
// or SQLServer, the event is not raised.  
}  
</script>
    <title></title>
</head>
<body bgcolor="#ffffcc">  
        <form id="form1" runat="server">  
            <div class="style1">  
                <strong>  
                    <span class="style2">Welcome to Active DotNet  
                        <br />  
                        <br />  
                    </span>  
                </strong>  
                <br />  
                <br />  
                <br />  
                <br />  
                <asp:Image ID="Image1" runat="server" Height="350px" ImageUrl="~/1.jpg" />  
                <br />  
                <br />  
            </div>  
            <p>    
                <asp:Label ID="Label2" runat="server"   
                  style="text-align: center; font-weight: 700; font-size: large"></asp:Label>  
               </p>  
        </form>  
    </body>  
</html>
