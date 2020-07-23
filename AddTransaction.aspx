<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTransaction.aspx.cs" Inherits="ForestProductTracker.AddTransaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADD TRANSACTION </title>
    <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
        <style>
            body {font-family: "Times New Roman", Georgia, Serif;}
            h1, h2, h3, h4, h5, h6 {
                font-family: "Playfair Display";
                letter-spacing: 5px;
            }
            
            form {border: 3px solid #f1f1f1;}

            input[type=text], input[type=password] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }

            button {
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
            }

            button:hover {
                opacity: 0.8;
            }

            .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
            }

            .imgcontainer {
                text-align: center;
                margin: 5px 0 0px 0;
            }

            img.avatar {
                width: 67%;
                border-radius: 50%;
                margin-bottom: 3px;
            }

            .container {
                padding: 16px;
            }

            span.psw {
                float: right;
                padding-top: 16px;
            }

            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 300px) {
                span.psw {
                    display: block;
                    float: none;
                }
                .cancelbtn {
                    width: 100%;
                }
            }
        </style>

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
      <article>
        <header class="section background-primary text-center">
            <h1 class="text-white margin-bottom-0 text-size-50 text-thin text-line-height-1">ADD TRANSACTION</h1>
         </header>
       </article>
            <!-- Registration Section -->
   <div class="w3-row w3-padding-64" id="login" style="
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  min-height: 100vh;">
        <div class="w3-col l6 w3-padding-large">

            <form id="form2" runat="server">
                <div class="container" style="font-style: normal; font-weight: bold">
                    <br />
                    State
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="230px">
                        <asp:ListItem>--Select-- </asp:ListItem>
                        <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Chandigarh</asp:ListItem>
                        <asp:ListItem>Chattisgarh</asp:ListItem>
                        <asp:ListItem>Dadra and Nagar Haveli</asp:ListItem>
                        <asp:ListItem>Daman and Diu</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                        <asp:ListItem>Jharkhand</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Lakshadweep</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Manipur</asp:ListItem>
                        <asp:ListItem>Meghalaya</asp:ListItem>
                        <asp:ListItem>Mizoram</asp:ListItem>
                        <asp:ListItem>Nagaland</asp:ListItem>
                        <asp:ListItem>Orissa</asp:ListItem>
                        <asp:ListItem>Pondicherry</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                        <asp:ListItem>Sikkim</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>Tripura</asp:ListItem>
                        <asp:ListItem>Uttarakhand</asp:ListItem>
                        <asp:ListItem>Uttaranchal</asp:ListItem>
                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                        <asp:ListItem>West Bengal</asp:ListItem>

        
                    </asp:DropDownList>
                    <br />
                    <br />
                    Forest
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <label for="cpsw"><b>Trading Company
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="253px">
                    </asp:DropDownList>
                    <br />
                    <br />
                    </b></label>

                    Date of Transaction<br />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="159px" NextPrevFormat="FullMonth" Width="224px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                
                
                    
                    <br />
                    Quantity of Woods (in Quintal)
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>

                    
                    </div>
                <div class="container" style="text-align:center; background-color:#f1f1f1">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" BackColor="#3399FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="46px" Text="Submit" Width="574px" />
                </div>
            </form>
        </div></div>
</body>
</html>
