<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForestAuthDashboard.aspx.cs" Inherits="ForestProductTracker.ForestAuthDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Forest Authority Dashboard</title>
    <link rel="stylesheet" href="css/components.css" />
    <link rel="stylesheet" href="css/icons.css" />
    <link rel="stylesheet" href="css/responsee.css" />
    <link rel="stylesheet" href="owl-carousel/owl.carousel.css" />
    <link rel="stylesheet" href="owl-carousel/owl.theme.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <!-- CUSTOM STYLE -->
    <link rel="stylesheet" href="css/template-style.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>    
    <script type="text/javascript" src="js/validation.js"></script> 
</head>
<body class="size-1140">
    <!-- Navbar (sit on top) -->
        <div class="w3-top">
            <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
                <!-- Right-sided navbar links. Hide them on small screens -->
                <div class="w3-right w3-hide-small">             
                    <a href="Logout.aspx" class="w3-bar-item w3-button">Logout</a>
                </div>
            </div>
        </div>
    <form id="form1" runat="server">
    <div>
        <!-- MAIN -->
        <main role="main">
        <!-- Content -->
        <article>
        <header class="section background-primary text-center">
            <h1 class="text-white margin-bottom-0 text-size-50 text-thin text-line-height-1">Welcome to your Dashboard</h1>
        </header>
        <div class="section background-white"> 
          <div class="line">
            <div class="margin text-center">
              <div class="s-12 m-12 l-4 margin-bottom">
                <div class="padding-2x block-bordered border-radius">
                  <i class="icon-attachment icon2x text-primary margin-bottom-30"></i>
                  <h2 class="text-thin">Add Transaction</h2>
                  <p class="margin-bottom-30">Add information about the transaction between Govt. Authorities and Traders </p>
                  <a class="button border-radius background-primary text-size-12 text-white text-strong" href="AddTransaction.aspx">ADD TRANSACTION</a>
                </div>
              </div>
              <div class="s-12 m-12 l-4 margin-bottom">
                 <div class="padding-2x block-bordered border-radius">
                  <i class="icon-display_screen icon2x text-primary margin-bottom-30"></i>
                  <h2 class="text-thin">VIEW ALL TRANSACTIONS</h2>              
                  <p class="margin-bottom-30">View all verified and non-verfied transactions</p>
                  <a class="button border-radius background-primary text-size-12 text-white text-strong" href="ViewTransactions.aspx">VIEW TRANSACTIONS</a>
                </div>
              </div>
              <div class="s-12 m-12 l-4 margin-bottom">
                <div class="padding-2x block-bordered border-radius">
                  <i class="icon-reorder icon2x text-primary margin-bottom-30"></i>
                  <h2 class="text-thin">VIEW VERIFIED TRANSACTIONS</h2>
                  <p class="margin-bottom-30">View verified transactions</p>
                  <a class="button border-radius background-primary text-size-12 text-white text-strong" href="ForestViewVerified.aspx">VIEW VERIFIED TRANSACTIONS</a>
                </div>
              </div>
              </div>
          </div>          
        </div> 
        
      </article>
    </main>
    </div>
    <!--FOOTER -->
    <footer>
      <!-- Main Footer -->
      <section class="section background-dark">
        <div class="line">
          <div class="margin">
            <!-- Collumn 1 -->
            <div class="s-12 m-12 l-4 margin-m-bottom-2x">              
              <p class="text-size-20"><em>"Stop Wildlife Trafficking"</em></p>
            </div>
          </div>
         </div>
      </section>
    </footer>
            
    </form>            
    <script type="text/javascript" src="js/responsee.js"></script>
    <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
    <script type="text/javascript" src="js/template-scripts.js"></script>
</body>
</html>
