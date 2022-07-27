<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment3_part1.aspx.cs" Inherits="WebApp_Day3.Assignment3_part1" %>

<!DOCTYPE html>
<%-- Assignment : 1

Design a web form to accept the following details from the user:

1. SupplierId - must be a number
2. Supplier Name - must not be blank
3. Product Name - must not be blank
4. Quantity - mandatory and must be between 100 and 1000
5. Supply Date - mandatory and must not be a future or past date
6. Received By - mandatory email address with correct format
7. Receiver Phone - mandatory and should be a valid phone
8. IsInvoiced (Yes/No)

Use a dropdown list for received by and fill it with names as you want

Use radio buttons for IsInvoiced field

Once the user fills the form and submits it - and if all fields are valid, display a message in a label as "Details Saved Successfully" else display message accordingly--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 40px">
            <h2 style="text-align:center;color:blue">Supplier WebForm</h2>

            SupplierId &nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextId" runat="server" TextMode="Number" style="margin-left: 21px" Width="155px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextId" Display="Dynamic" ErrorMessage="Please provide Supplier ID" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />

            SupplierName :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TxtName" runat ="server" style="margin-left: 30px" Width="159px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtName" ErrorMessage="Supplier Name Cannot be Blank" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />

            ProductName&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtProduct" runat="server" style="margin-left: 3px" Width="159px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtProduct" 
            ErrorMessage="Product Name Cannot be Blank" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />

            Quantity&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtQuantity" runat="server" TextMode="Number" style="margin-left: 44px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4"  runat="server" Display="Dynamic" ControlToValidate="TxtQuantity" 
            ErrorMessage="Quantity Cannot be Blank" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtQuantity" Display="Dynamic" ErrorMessage="Quantity to be between 100 and 1000" 
                ForeColor="#CC0000" MaximumValue="1000" MinimumValue="100" Type="Integer"></asp:RangeValidator>
            <br />
            <br />


           <%-- I am setting up minimum and maximum value in the page load function please check their--%>
             SupplyDate&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextDate" runat="server" TextMode="Date" style="margin-left: 19px" Width="156px"></asp:TextBox>
            <asp:RangeValidator ID="RV1" runat="server" ControlToValidate="TextDate" Type="Date" ErrorMessage="Date in Not correct"  ForeColor="#CC0000"></asp:RangeValidator>
            <br />
            <br />

            Recieved By (Email) &nbsp;&nbsp; :&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" style="margin-left: 40px" Width="154px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  runat="server" Display="Dynamic" ControlToValidate="TextBox3" 
            ErrorMessage="Email Cannot be Blank" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />

             Recieved By (name) &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 66px" >  
            <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem>Khushwant </asp:ListItem>  
            <asp:ListItem>Akash</asp:ListItem>  
            <asp:ListItem>Prashant</asp:ListItem>  
            <asp:ListItem>Mac</asp:ListItem>  
            <asp:ListItem>Sam</asp:ListItem>  
            </asp:DropDownList>  
            <br />
            <br />

             Reciever PhoneNo. &nbsp;&nbsp; 
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Phone" style="margin-left: 73px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6"  runat="server" Display="Dynamic" ControlToValidate="TextBox4" 
            ErrorMessage="Phone Number Cannot be Blank" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />

             IsInvoiced<asp:RadioButtonList ID="IsInvoiced" runat="server" style="margin-left: 248px; margin-top: 0px" Width="361px">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>

            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="IsInvoiced"
                 ErrorMessage="Invoice Cannot be Blank" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <br />


           <asp:Button ID="BtnRegister" runat="server" Text="Register" OnClick="BtnRegister_Click" />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" ShowMessageBox="True" />
            <br />

            </div>
    </form>
</body>
</html>
