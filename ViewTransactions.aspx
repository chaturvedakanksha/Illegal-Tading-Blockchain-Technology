<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewTransactions.aspx.cs" Inherits="ForestProductTracker.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>View Transaction</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="css/components.css" />
    <link rel="stylesheet" href="css/icons.css" />
    <link rel="stylesheet" href="css/responsee.css" />
    <link rel="stylesheet" href="owl-carousel/owl.carousel.css" />
    <link rel="stylesheet" href="owl-carousel/owl.theme.css" />
    <!-- CUSTOM STYLE -->
    <link rel="stylesheet" href="css/template-style.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>    
    <script type="text/javascript" src="js/validation.js"></script> 
  </head>  
    

<body>
    <!-- Navbar (sit on top) -->
        <div class="w3-top">
            <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
                <a href="ForestAuthDashboard.aspx" class="w3-bar-item w3-button">Dashboard</a>
                <!-- Right-sided navbar links. Hide them on small screens -->
                <div class="w3-right w3-hide-small">             
                    <a href="Logout.aspx" class="w3-bar-item w3-button">LOGOUT</a>
                </div>
            </div>
        </div>
    <!-- MAIN -->
    <main role="main">
      <!-- Content -->
      <article>
        <header class="section background-primary text-center">
            <h1 class="text-white margin-bottom-0 text-size-50 text-thin text-line-height-1">TRANSACTIONS</h1>
        </header>
        <div class="section background-white"> 
          <div class="line">
            <form id="form1" runat="server">
            <div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="6" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        </div>
    </form>
             </div>           
        </div> 
      </article>
    </main>
    
    
</body>
</html>
