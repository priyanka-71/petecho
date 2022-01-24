<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Vet_Record.aspx.cs" Inherits="Vet_Record" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
     <form id="form1" runat="server">  
    <div>    
   <table>  
    <tr>  
    <td>   
        Token  
        </td>  
        <td>  
        <asp:TextBox ID="TextBox1" Type="password" runat="server" Width="241px"></asp:TextBox>  
        </td>  
        <td>   
        &nbsp;<asp:Button ID="Button1" runat="server" Text="Go" onclick="Button1_Click" Width="96px" />  
        </td>  
        </tr>  
</table>  
<table><tr><td><p><asp:Label ID="Label2" runat="server" Text=""></asp:Label>  </p>
    </td></tr></table>  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
<asp:GridView ID="GridView1" runat="server" Height="115px" Width="556px" >  
    </asp:GridView>   
    </div>  
</form>  
    
</body>
</html>
