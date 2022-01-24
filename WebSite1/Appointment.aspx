<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>  
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>  
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>
    <title>Appointments</title>

     <script type="text/javascript" src="/Scripts/Calendar.js" async="">
     </script>
    <style>
    .Button{
        border-color:none;
     
        }
        
   </style>
   
</head>
<body >
    
    
    <form id="form1" runat="server">
        
        <div class="container">
            <div class="row">       
                  
                      
               
                     <iframe title="Calendar" class="embed-responsive-item" src="AppointmentCalendar.html" style="width:80%;height:700px;margin-top:0%; margin-left:4%; margin-right: 11px;"></iframe> 
                  <div style="display:inline;float:left;margin-top:2%; height: 59px;">
                    <asp:Button ID="Button1" Class="Button"  runat="server" Text="<-Home Page"  OnClick="Button1_Click" Height="47px"/>
                     
                </div>
                <div style="display:inline;float:right;margin-top:2%;">
                
                      <asp:Button ID="Button4" class="Button" runat="server" Text= " Available-> " OnClick="Button2_Click" Height="44px" />
                </div>
            
                      <!-- sandbox="allow-forms allow-modals"-->
                      
              </div>
                 </div>
      </form>
    
</body>
</html>
