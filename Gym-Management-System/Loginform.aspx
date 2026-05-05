<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Loginform.aspx.cs" Inherits="gym_hub.Loginform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style>
     /* ---------- RESET & BASE ---------- */
     * {
         margin: 0;
         padding: 0;
         box-sizing: border-box;
         font-family: 'Segoe UI', Arial, sans-serif;
     }

     /* ---------- MAIN SECTION ---------- */
     .main-wrapper {
         min-height: calc(100vh - 160px); /* Leaves space for header & footer */
         display: flex;
         justify-content: center;
         align-items: center;
         background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
                     url('images/Register.jpeg') center/cover no-repeat fixed;
         padding: 40px 0;
     }

     /* ---------- LOGIN FORM ---------- */
     .form-container {
         width: 400px;
         background: rgba(255, 255, 255, 0.15);
         border: 1px solid rgba(255, 255, 255, 0.2);
         border-radius: 15px;
         backdrop-filter: blur(10px);
         box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
         padding: 35px 40px;
         color: #fff;
     }

     .form-container h1 {
         text-align: center;
         margin-bottom: 25px;
         font-size: 28px;
         background: linear-gradient(45deg, #ffffff, #e74c3c);
         -webkit-background-clip: text;
         -webkit-text-fill-color: transparent;
         font-weight: 700;
         letter-spacing: 1px;
     }

     label {
         display: block;
         margin-bottom: 6px;
         font-weight: 600;
     }

     input[type="text"],
     input[type="password"],
     input[type="email"] {
         width: 100%;
         padding: 10px 12px;
         margin-bottom: 15px;
         border: none;
         border-radius: 6px;
         background: rgba(255, 255, 255, 0.9);
         font-size: 14px;
         color: #333;
         transition: all 0.3s ease;
     }

     input:focus {
         outline: none;
         box-shadow: 0 0 8px rgba(231, 76, 60, 0.7);
         background: #fff;
     }

     /* ---------- ERROR MESSAGE ---------- */
     .error-message {
         color: #ff6b6b;
         font-size: 13px;
         display: block;
         margin-bottom: 8px;
     }

     /* ---------- BUTTON ---------- */
     .form-container input[type="submit"],
     .form-container asp\:button {
         width: 100%;
         padding: 12px;
         background: linear-gradient(45deg, #e74c3c, #c0392b);
         border: none;
         border-radius: 6px;
         color: white;
         font-size: 16px;
         font-weight: 600;
         cursor: pointer;
         margin-top: 10px;
         transition: 0.3s ease;
     }

     .form-container input[type="submit"]:hover,
     .form-container asp\:button:hover {
         transform: translateY(-2px);
         box-shadow: 0 6px 15px rgba(231, 76, 60, 0.4);
     }

     /* ---------- LINKS ---------- */
     .links {
         text-align: center;
         margin-top: 20px;
         font-size: 14px;
     }

     .links a {
         color: #f5b7b1;
         text-decoration: none;
         transition: 0.3s;
     }

     .links a:hover {
         text-decoration: underline;
     }

     /* ---------- RESPONSIVE ---------- */
     @media (max-width: 600px) {
         .form-container {
             width: 90%;
             padding: 30px;
         }

         .form-container h1 {
             font-size: 24px;
         }
     }
 </style>


 <!-- ---------- CENTERED FORM ---------- -->
 <div class="main-wrapper">
     <div class="form-container">
         <h1>Login</h1>

         <label>Email</label>
         <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email" TextMode="Email"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
             ControlToValidate="txtEmail" ErrorMessage="Email Required!" CssClass="error-message"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
             ControlToValidate="txtEmail" ErrorMessage="Incorrect email format!"
             ValidationExpression="^[a-zA-Z0-9._%!+-]+@[a-zA-Z.-]+\.[a-zA-Z]{2,}$"
              CssClass="error-message"></asp:RegularExpressionValidator>
         <label>Password</label>
         <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
             ControlToValidate="txtPassword" ErrorMessage="Password Required!" CssClass="error-message"></asp:RequiredFieldValidator>
        

         <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

         <br />
         <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>

         <div class="links">
             <asp:HyperLink ID="lnkForgotPassword" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password?</asp:HyperLink><br />
             Don’t have an account?
             <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="~/Registrationform.aspx">Register here</asp:HyperLink>
         </div>
     </div>
 </div>
</asp:Content>
