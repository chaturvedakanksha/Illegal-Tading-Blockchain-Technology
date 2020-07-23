<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ForestProductTracker.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
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
                margin: 24px 0 12px 0;
            }

            img.avatar {
                width: 40%;
                border-radius: 50%;
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
</head>
<body>
     <!-- Navbar (sit on top) -->
        <div class="w3-top">
            <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
                <a href="Home.aspx" class="w3-bar-item w3-button">Forest product Tracker</a>
                <!-- Right-sided navbar links. Hide them on small screens -->
                <div class="w3-right w3-hide-small">             
                    <a href="Registration.aspx" class="w3-bar-item w3-button">Sign Up</a>
                </div>
            </div>
        </div>

   <!-- LOGIN Section -->
   <div class="w3-row w3-padding-64" id="login" style="
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  min-height: 100vh;" >
        <div class="w3-col l6 w3-padding-large">
            <h1 class="w3-center">LOGIN</h1><br />
            <form id="form1" runat="server">
                <div class="imgcontainer">
                    <img src="imgs/avatar.jpg" alt="Avatar" class="avatar"/>
                </div>

                <div class="container" style="font-style: normal; font-weight: bold">
                    <br />
                    Username
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="False" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;Password
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    <label>
                        &nbsp;</label><label for="cpsw">Category
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="427px">
                        <asp:ListItem Value="Trader">Trader</asp:ListItem>
                        <asp:ListItem Value="ForestAuth">Forest Authority</asp:ListItem>
                    </asp:RadioButtonList>
                    </label>
                </div>

                <div class="container" style="text-align:center; background-color:#f1f1f1">
                    <span class="signIn" style="text-align:center">Don't have an Account ? <a href="Registration.aspx">Sign Up</a></span>
                     &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="46px" OnClick="Button1_Click" Text="Login" Width="574px" />
                </div>
            </form>
        </div> 
   </div>
</body>
</html>
