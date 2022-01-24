<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <div class="jumbotron">
       
        <div class="row">
        <div class="col-md-4">
        <h1>Pet Echo</h1>
        <p>One step closer to cater your pet&#39;s health need!</p>
        <asp:LoginView runat="server" ViewStateMode="Disabled">
        <AnonymousTemplate>
        <p><a href="Account\Register.aspx" class="btn btn-primary btn-lg">Register Now &raquo;</a></p>
         </AnonymousTemplate>
         </asp:LoginView>
        </div>
        <div  class="col-md-4">
            
        </div>

            <div  class="col-md-4">
            <img src="img\Homepage_img.png" alt="Pet Image" class="img-thumbnail">
        </div>
       </div>
         
       
   </div>
   
     <div class="row">
        <div class="col-md-4">
        <asp:LoginView runat="server" ViewStateMode="Disabled">
         <AnonymousTemplate>
          <a href="Account\Login.aspx" style="text-decoration:none;"> <h2>Appointments  <span class="glyphicon glyphicon-calendar" ,aria-hidden="true"></span> </h2></a>
         </AnonymousTemplate>
           <LoggedInTemplate>
          <a href="Appointment.aspx" style="text-decoration:none;"> <h2>Appointments  <span class="glyphicon glyphicon-calendar" ,aria-hidden="true"></span> </h2></a>
         </LoggedInTemplate>
         </asp:LoginView>
          <p class="text-justify">
                Now no more hustle for scheduling appointments.Just regiser with us and get it done in no time!</p>
            
        </div>
        <div class="col-md-4">
           <asp:LoginView runat="server" ViewStateMode="Disabled">
           <LoggedInTemplate>
           <a href="Astro.aspx"style="text-decoration:none;"> <h2> Chat with Astro <span class="glyphicon glyphicon-comment" ,aria-hidden="true"></span></h2></a>
           </LoggedInTemplate>
           
           <AnonymousTemplate>
           <a href="Account\Login.aspx" style="text-decoration:none;"> <h2>Chat with Astro <span class="glyphicon glyphicon-comment" ,aria-hidden="true"></span></h2></a>
           </AnonymousTemplate>
           </asp:LoginView>
           
            <p class="text-justify">
                Interact with Astro for any queries related to your pet's health.
            </p>
         
        </div>
        <div  class="col-md-4">
       
            <asp:LoginView runat="server" ViewStateMode="Disabled">
            <AnonymousTemplate>
            <a href="Account\Login.aspx" style="text-decoration:none;"> <h2 class="re">Records <span class="glyphicon glyphicon-file" ,aria-hidden="true"></span></h2></a>
            </AnonymousTemplate>
            <LoggedInTemplate>
           
            <a href="#"  style="text-decoration:none;"> <h2 id="rec">Records <span class="glyphicon glyphicon-file" ,aria-hidden="true"></span></h2></a><div id="overlay" style="display:none;"><ul style="list-style:none;display:block;"><li ><a style="text-decoration:none;font-size:large;" href="User_Record.aspx">Pet Owner</a></li><li><a style="text-decoration:none;font-size:large;"  href="Vet_Record.aspx">Vet</a></li></ul></div>
            </LoggedInTemplate>
            </asp:LoginView>

            <script>

                
                $(document).ready(function () {
                    
                    
                    $('#rec').click(function () {
                        let content = document.getElementById('overlay').style.display.toLowerCase();
                            if (content=="none") {
                                
                                $('#overlay').css('display', 'block');
                            }
                           else {
                                $('#overlay').css('display', 'none');
                            }
                        });
                    
                    

                });
                
            </script>
            <p class="text-justify">
                Keeping records of your pet&#39;s medical histroy made simple with us!
            </p>
       
        </div>
    </div>
    <div> <img src="img/about_img.jpg" alt="Pet Care" class="img-thumbnail"></div>
    <!--Comment Section-->
    <div class="row">
    <div class="col-md-6">
    <div class="Container-fluid">
        <h2>Comments</h2>
    <div style="height:400px;overflow:scroll;">
     <table>
            <tr>
                <td class="style7">
                    <asp:Repeater ID="Repeater2" runat="server" >
     
                        <ItemTemplate>

                            <hr />
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Time") %>'></asp:Label>
                            <br />
                            <div runat="server" innertext='<%#Eval("Comment") %>'></div>

                        </ItemTemplate>
                    </asp:Repeater>
                 
               
                 </td>
            </tr>
    </table>
          </div> 
    </div>
    </div>
    <div class="col-md-6">
    <div class="container-fluid" style="border:1px solid#000000;margin-top:10%;">
         
        <h3 class="text-center" >Leave us a Comment</h3>
         <hr />
        <div class="form-group">
            <div class="col-md-2"></div>
            <div class="col-md-10">
                 Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="300px" Height="26px"></asp:TextBox>
                 <br />
             <asp:RequiredFieldValidator runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1">Name Required</asp:RequiredFieldValidator>
                 <br />
           </div>
        
        </div>
        <div class="form-group">
        <div class="col-md-2"></div>
        <div class="col-md-10">
        Comment<asp:TextBox ID="TextBox2" runat="server" Height="54px" TextMode="MultiLine" Width="299px"></asp:TextBox>           
                &nbsp;<asp:RequiredFieldValidator runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2" >Comment Required</asp:RequiredFieldValidator>
           
        
            <br />
           
        
        </div>
        </div>
        <div class="form-group">
            <div class="col-md-4"></div>
            <div class="col-md-8">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Comment" class=" btn btn-primary"/>
        &nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" class="btn btn-danger" />
                <br />
                <br />
               </div>
       </div>
           
    </div>
    </div>
    </div>
    <script>
       
    </script>
</asp:Content>
