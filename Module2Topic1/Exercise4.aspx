<%@ Page Language="C#" CodeBehind="~/Exercise4.aspx.cs" Inherits="Module1Exercise1.Exercise4" %>

<%-- Exercise 4: Using validation controls --%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
    <h1>Mapua MCL WebDev Club Registration</h1>
    <form runat="server">
        <asp:Label runat="server" Text="Full Name"></asp:Label><br />
        <asp:TextBox runat="server" ID="fullName" /><br />
        <%-- Todo 4.1 Add a validator that makes sure the text box is not empty --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=RequiredFieldValidator%20Control --%>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="fullName" ErrorMessage="Full name is required" ForeColor="Red"></asp:RequiredFieldValidator><br />

        <asp:Label runat="server" Text="Age"></asp:Label><br />
        <asp:TextBox runat="server" ID="age" TextMode="Number" /><br />
        <%-- Todo 4.2 Add a range validator that checks if the value inputted in the text box is within 0 and 100--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=RangeValidator%20Control--%>
        <asp:RangeValidator runat="server" ControlToValidate="age" Type="Integer" MinimumValue="0" MaximumValue="100" ForeColor="Red" ErrorMessage="Age must be between 0 and 100" /><br />
        
        <asp:Label runat="server" Text="Email"></asp:Label><br />
        <asp:TextBox runat="server" ID="email" /><br />
        <%-- Todo 4.3 Add a regex validator that checks if the inputted value is a valid email. The regex for validating email is /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/ --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=The%20RegularExpressionValidator%20allows --%>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="email" ErrorMessage="Invalid email format" ForeColor="Red" ValidationExpression="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$" /><br />

        <asp:Label runat="server" Text="Confirm Email"></asp:Label><br />
        <asp:TextBox runat="server" ID="confirmEmail" /><br />
        <%-- Todo 4.4 Add a compare validator that checks if the confirmation email is the same as the original email --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=CompareValidator%20Control --%>
        <asp:CompareValidator runat="server" ControlToValidate="confirmEmail" ControlToCompare="email" Operator="Equal" Type="String" ForeColor="Red" ErrorMessage="Email addresses do not match"/> <br />
        

        <%-- Todo 4.5 When the user submits the form and all validations pass, display all the inputted texts in the "result" label --%>
        <asp:Button Text="Submit" runat="server" UseSubmitBehavior="true" OnClick="btnSubmit_Click" /> <br />
        <asp:Label ID="result" runat="server" /> <br />

    </form>
</body>
</html>
