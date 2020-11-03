<%@ Page UnobtrusiveValidationMode ="None" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
    
        function ValidateUsername(src,args)
        {
            //src is the reference to the Validation control
            //args has the reference to the control to be validated
            //args has 2 properties - Value and IsValid
            if (args.Value.length < 8 || args.Value.length > 10) {
                src.errormessage = args.Value + " is Invalid";
                args.IsValid = false;
            }
            else
                args.IsValid = true;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        First Name
        <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstName" ErrorMessage="Please provide First Name">*Required</asp:RequiredFieldValidator>
        <br />
        <br />
        Last Name
        <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastName" ErrorMessage="Please provide Last Name">*Required</asp:RequiredFieldValidator>
        <br />
        <br />
        Education
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="-1">Select Degree</asp:ListItem>
            <asp:ListItem Value="1">Under graduate</asp:ListItem>
            <asp:ListItem Value="2">Graduate</asp:ListItem>
        </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please select Education" InitialValue="-1">*Required</asp:RequiredFieldValidator>
        <br />
        <br />
        Password
        <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPwd" ErrorMessage="Please provide password">*Required</asp:RequiredFieldValidator>
        <br />
        <br />
        Confirm Password
        <asp:TextBox ID="txtConfirmPwd" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtConfirmPwd" ErrorMessage="Please make sure paswords are same">*Passwords do not match</asp:CompareValidator>
        <br />
        <br />
        Age&nbsp;
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtAge" ErrorMessage="Age cannot be less than 18" Operator="GreaterThanEqual" ValueToCompare="18">*Invalid age</asp:CompareValidator>
        <br />
        <br />
        Fees
        <asp:TextBox ID="txtFee" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtFee" ErrorMessage="Please enter valid Fee" Operator="DataTypeCheck" Type="Currency">*Invalid currency</asp:CompareValidator>
        <br />
        <br />
        DOG
        <asp:TextBox ID="txtDOG" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Please enter a valid DOG" Operator="LessThanEqual" Type="Date" ControlToValidate="txtDOG">*Invalid DOG</asp:CompareValidator>
        <br />
        <br />
        UserName
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username should be between 8-10 characters" ClientValidationFunction="ValidateUsername">Invalid Username</asp:CustomValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" />
    
    </div>
    </form>
</body>
</html>
