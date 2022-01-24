<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Astro.aspx.cs" Inherits="FindVet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
        .auto-style1 {
            float: right;
            width: 344px;
            height: 580px;
            margin-left: 2px;
            margin-top: 0%;
        }
        .auto-style2 {
            width: 541px;
            height: 522px;
        }
       
        .auto-style3 {
            margin-left: 0px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <div class="row">
            <div class="col-md-6" style="float:left;">
             <iframe src='https://webchat.botframework.com/embed/Astro01?s=DgfYuLt8L34.Fw8TJNEEPrPXKxblF2jYxLCd5BYvF2OAOQxMEvFWj4c'  style='min-width: 600px; width: 90%; min-height: 610px;margin-top:10%;margin-left:10%;'></iframe>
           </div>
            <div class="auto-style1"  id="imgdiv" style="margin-right:25%;">
              
               <img src="img\Homepage_img.png" alt="Pet Image" class="auto-style2"/>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button1"  runat="server" class="btn btn-primary" Text="Home" Height="33px" OnClick="Button1_Click" Width="222px" CssClass="auto-style3" />
            
               </div >
            
            
            
            </div>
        </form>
</body>
</html>
