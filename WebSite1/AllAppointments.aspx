<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllAppointments.aspx.cs" Inherits="AllAppointments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>    
   <table>  
    <tr>  
    <td class="auto-style1">   
       &nbsp;&nbsp;&nbsp; Pet</td>  
        <td>
            &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="253px">
                <asp:ListItem Text="Dog" Value="0" />
                <asp:ListItem Text="Cat" Value="1" />
                <asp:ListItem Text="Bird" Value="2" />
                <asp:ListItem Text="Rabbit" Value="3" />
                
            </asp:DropDownList>
          </td>  
        <td>   
        &nbsp;<asp:Button ID="Button1" runat="server" Text="Go" onclick="Button1_Click" Width="96px" />  
        </td>  
        </tr>  
</table>  
<table><tr><td><p><asp:Label ID="Label2" runat="server" Text=""></asp:Label>  </p>
    </td></tr></table>  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
<asp:GridView ID="GridView2" runat="server" Height="115px" Width="556px" >  
    </asp:GridView>   
    </div>  
    </form>
    
</body>
</html>
