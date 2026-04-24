<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="validator.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Student Registration Form</h2>

        Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName" runat="server"
            ControlToValidate="txtName"
            ErrorMessage="Name is required"
            ForeColor="Red" />
        <br /><br />

        Roll No:
        <asp:TextBox ID="txtRoll" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvRoll" runat="server"
            ControlToValidate="txtRoll"
            ErrorMessage="Roll No is required"
            ForeColor="Red" />
        <br /><br />

        Mobile No:
        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvMobile" runat="server"
            ControlToValidate="txtMobile"
            ErrorMessage="Mobile is required"
            ForeColor="Red" />
        <asp:RegularExpressionValidator ID="revMobile" runat="server"
            ControlToValidate="txtMobile"
            ValidationExpression="^[0-9]{10}$"
            ErrorMessage="Enter valid 10-digit mobile number"
            ForeColor="Red" />
        <br /><br />

        Email:
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revEmail" runat="server"
            ControlToValidate="txtEmail"
            ValidationExpression="\w+@\w+\.\w+"
            ErrorMessage="Invalid Email"
            ForeColor="Red" />
        <br /><br />

        Gender:
        <asp:RadioButtonList ID="rblGender" runat="server">
            <asp:ListItem Text="Male" />
            <asp:ListItem Text="Female" />
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="rfvGender" runat="server"
            ControlToValidate="rblGender"
            InitialValue=""
            ErrorMessage="Select Gender"
            ForeColor="Red" />
        <br /><br />

        Address:
        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvAddress" runat="server"
            ControlToValidate="txtAddress"
            ErrorMessage="Address required"
            ForeColor="Red" />
        <br /><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <br /><br />

        <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>

        <div>
        </div>
    </form>
</body>
</html>
