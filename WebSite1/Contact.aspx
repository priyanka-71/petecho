<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h5>For all your queries you can contact us through phone or email as provided below.If you are a vet and want 
        to connect with Pet Echo kindly mail us to the given mail .
    </h5>
   
       <strong>Phone:</strong> 1234567898
   
    <address>
        <strong>Support:</strong>   <a href="mailto:petecho.help@gmail.com">petecho.help@gmail.com</a><br />
      <!--  <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>-->
    </address>
</asp:Content>
