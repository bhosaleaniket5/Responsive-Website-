<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication1.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Signup</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
    


    .navbar {
        font-family: Montserrat, sans-serif;
        margin-bottom:0;
        background-color: #2d2d30;
        border: 0;
        font-size: 15px !important;
        letter-spacing: 4px;
        opacity: 0.9;
    }

        .navbar li a, .navbar .navbar-brand {
            color: #d5d5d5 !important;
        }

    .navbar-nav li a:hover {
        color: #fff !important;
    }

    .navbar-nav li.active a {
        color: #fff !important;
        background-color: #29292c !important;
    }

    .navbar-default .navbar-toggle {
        border-color: transparent;
    }
    /* Add a gray background color and some padding to the footer */

       /*Signup*/ 
    .center-page
{
    width:300px;
    height:300px;
    position:absolute;
    top:0;
    bottom:0;
    left:0;
    right:0;
    margin:auto;
}
.center {
    text-align: center;
}



    footer {
        background-color: #dbd4d4;
        padding: 25px;
        border-radius:15px;
    }

    .open .dropdown-toggle {
        color: #fff;
        background-color: #555 !important;
        
    }

    .dropdown-menu li a {
        color: #000 !important;
    }

        .dropdown-menu li a:hover {
            background-color: #746969 !important;
        }
    @media screen and (min-width: 768px) {
        body {
            padding-top: 75px;
        }
    }
 .space-vert{
     margin-top:20px;
 }
 
.footer-pos {
    width: auto;
    height: auto;
    position: absolute;
    top: 600px;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
}

</style>
<body>
   <form id="form1" runat="server">

    <div class="container">
    <nav class="navbar navbar-default navbar-fixed-top nav">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#myPage">372 Movies</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    
                    <li><a href="#TopIMDB">Top IMDB</a></li>
                    <li><a href="#TV Series">TV Series</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Language
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">English</a></li>
                            <li><a href="#">Spanish</a></li>
                            <li><a href="#">Russian</a></li>
                            <li><a href="#">Hindi</a></li>
                            <li><a href="#">Marathi</a></li>
                            <li><a href="#">Tamil</a></li>
                        </ul>
                    </li>
                          
    

                    <!-- <li>
                        <input type="text" class="form-control" placeholder="Search" name="search"/>
                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </li> -->
      
                    <li><a href="#Login">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
    </div>

        <!--Signup Page -->
        <div class="center-page">
            <label class="col-xs-11">Username</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbUsername" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
            </div>
        

       
            <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbpassword" runat="server" Class="form-control" placeholder="Password"></asp:TextBox>
            </div>
        

            <label class="col-xs-11">Confirm Password</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbconfirmpwd" runat="server" Class="form-control" placeholder="Confirm Password"></asp:TextBox>
            </div>
      

      
            <label class="col-xs-11">Name</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbname" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
            </div>
      

       
            <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbemail" runat="server" Class="form-control" placeholder="Email"></asp:TextBox>
            </div>
         
            <div class="col-xs-11 space-vert">
            <asp:Button ID="btsignup" Class="btn btn-success" runat="server" Text="Sign UP" />
            </div>   
           </div>
        </form>
           <!--- Footer -->
         <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p> &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
            </div>
        </footer>

       

   
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
