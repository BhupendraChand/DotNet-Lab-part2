<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormValidation.aspx.cs" Inherits="StudentRegistrationWebApplication.FormValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <fieldset>
                <legend>ASP.NET Server Validation Control </legend>
                
                <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
                <asp:TextBox ID="txtName" runat="server" />
                <asp:RequiredFieldValidator ID="rfName" runat="server" ControlToValidate="txtName" ForeColor="Red" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regName" runat="server" ControlToValidate="txtName" ForeColor="Red" ErrorMessage="Name must be in alphabets" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                <br /><br />
                
                <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" />
                <asp:RequiredFieldValidator ID="rfEmail" runat="server" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regEmail" runat="server" ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid Email" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"></asp:RegularExpressionValidator>
                <br /><br />
                
                <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                <asp:RequiredFieldValidator ID="rfPassword" runat="server" ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="cvPassword" runat="server" 
                    ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Password must be at least 6 characters" OnServerValidate="cvpw_validate"></asp:CustomValidator>
                <br /><br />
                
                <asp:Label ID="lblRetypePassword" runat="server" Text="Re-Type Password: "></asp:Label>
                <asp:TextBox ID="txtRetypePassword" runat="server" TextMode="Password" />
                <asp:RequiredFieldValidator ID="rfRetypePassword" runat="server" ControlToValidate="txtRetypePassword" ForeColor="Red" ErrorMessage="Re-type password is required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cmpPassword" runat="server" ControlToValidate="txtRetypePassword" ForeColor="Red" ErrorMessage="Passwords must match" ControlToCompare="txtPassword"></asp:CompareValidator>
                <br /><br />
                
                <asp:Label ID="lblAge" runat="server" Text="Age: "></asp:Label>
                <asp:TextBox ID="txtAge" runat="server" />
                <asp:RequiredFieldValidator ID="rfAge" runat="server" ControlToValidate="txtAge" ForeColor="Red" ErrorMessage="Age is required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" ForeColor="Red" ErrorMessage="Age must be between 18 and 60" MinimumValue="18" MaximumValue="60"></asp:RangeValidator>
                <br /><br />
                
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                
                <br /><br />
                 <asp:ValidationSummary ID="summary" ShowMessageBox="true" ShowSummary="true" runat="server" ForeColor="Red" />
             
             <br /><br />

                <asp:Label ID="result" runat="server" ForeColor="Blue" />
            </fieldset>
        </div>
    </form>
</body>
</html>
