<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="gym_hub.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style>
     /* ---------- RESET ---------- */
     * {
         margin: 0;
         padding: 0;
         box-sizing: border-box;
         font-family: 'Segoe UI', Arial, sans-serif;
     }

     /* ---------- MAIN BACKGROUND ---------- */
     .page-wrapper {
         background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
                     url('images/Register.jpeg') no-repeat center center fixed;
         background-size: cover;
         min-height: calc(100vh - 120px); /* leave space for header+footer */
         display: flex;
         justify-content: center;
         align-items: center;
         padding: 40px 20px;
     }

     /* ---------- FORM CARD ---------- */
     .form-container {
         width: 400px;
         background: rgba(255, 255, 255, 0.15);
         border: 1px solid rgba(255, 255, 255, 0.2);
         border-radius: 15px;
         backdrop-filter: blur(12px);
         box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
         padding: 35px 40px;
         color: #fff;
     }

     .form-container h1 {
         text-align: center;
         margin-bottom: 20px;
         font-size: 26px;
         background: linear-gradient(45deg, #ffffff, #e74c3c);
         -webkit-background-clip: text;
         -webkit-text-fill-color: transparent;
         letter-spacing: 1px;
     }

     label {
         display: block;
         margin-bottom: 5px;
         font-weight: 600;
     }

     input[type="text"],
     input[type="email"],
     select {
         width: 100%;
         padding: 10px 12px;
         margin-bottom: 12px;
         border: none;
         border-radius: 6px;
         background: rgba(255, 255, 255, 0.9);
         font-size: 14px;
         color: #333;
         transition: all 0.3s ease;
     }

     input:focus, select:focus {
         outline: none;
         box-shadow: 0 0 8px rgba(46, 204, 113, 0.7);
         background: #fff;
     }

     .error-message {
         color: #ff4d4d;
         font-size: 12px;
         margin-bottom: 8px;
         display: block;
     }

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
         box-shadow: 0 6px 15px rgba(46, 204, 113, 0.4);
     }

     .message {
         text-align: center;
         margin-top: 10px;
         font-weight: bold;
     }

     a {
         color: #aee1ff;
         text-decoration: none;
         display: block;
         text-align: center;
         font-size: 14px;
         margin-top: 15px;
     }

     a:hover {
         text-decoration: underline;
     }
 </style>

 <div class="page-wrapper">
     <div class="form-container">
         <h1>Retrieve Password</h1>

         <label>Full Name</label>
         <asp:TextBox ID="txtName" runat="server" placeholder="Enter Name"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvName" runat="server"
             ControlToValidate="txtName" ErrorMessage="Name Required!" CssClass="error-message"></asp:RequiredFieldValidator>

         <label>Email Address</label>
         <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Enter Email"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
             ControlToValidate="txtEmail" ErrorMessage="Email Required!" CssClass="error-message"></asp:RequiredFieldValidator>

         <label>City</label>
         <asp:DropDownList ID="ddlCity" runat="server" Width="100%">
             <asp:ListItem Value="" Selected="True">Select City</asp:ListItem>
             <asp:ListItem>Gujrat</asp:ListItem>
             <asp:ListItem>Kharian</asp:ListItem>
             <asp:ListItem>Lalamusa</asp:ListItem>
             <asp:ListItem>Kotla</asp:ListItem>
         </asp:DropDownList>
         <asp:RequiredFieldValidator ID="rfvCity" runat="server"
             ControlToValidate="ddlCity" InitialValue=""
             ErrorMessage="City Required!" CssClass="error-message"></asp:RequiredFieldValidator>

         <asp:Button ID="btnRetrieve" runat="server" Text="Retrieve Password" OnClick="btnRetrieve_Click" />

         <asp:Label ID="lblResult" runat="server" CssClass="message"></asp:Label>

         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginForm.aspx">Back to Login</asp:HyperLink>
     </div>
 </div>
</asp:Content>
