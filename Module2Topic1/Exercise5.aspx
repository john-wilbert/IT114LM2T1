<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" CodeBehind="~/Exercise5.aspx.cs" Inherits="Module1Exercise1.Exercise4" %>

<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>

<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <h2>My Reflection On ASP.NET Webforms</h2>
    
    <h3>How would you compare plain HTML to ASP.NET WebForms?</h3>
    <p>HTML is for static content, while ASP.NET WebForms is for dynamic web applications. WebForms abstracts away complexity, speeding up development, but it's less flexible than HTML.</p>
    
    <h3>The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples.</h3>
    <p>Code behind (C#) for server-side logic like data manipulation; JavaScript for client-side interactions and instant feedback. For example, basic form validation is best done in JavaScript, while complex validation or server interaction should be in code behind.</p>
    
    <h3>Postbacks</h3>
    <p>Postbacks in ASP.NET WebForms occur when the entire page is sent back to the server for processing after a user action. They maintain page state but can introduce performance overhead. They're essential for stateful web applications but should be used wisely to optimize performance.</p>
</asp:Content>