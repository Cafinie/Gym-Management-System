<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Registrationform.aspx.cs" Inherits="gym_hub.Registrationform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <style>
      /* ---------- RESET & BASE ---------- */
      * {
          margin: 0;
          padding: 0;
          box-sizing: border-box;
          font-family: 'Segoe UI', Arial, sans-serif;
      }

      /* ---------- MAIN AREA ---------- */
      .main-wrapper {
          min-height: calc(100vh - 160px); /* Leaves space for header & footer */
          display: flex;
          justify-content: center;
          align-items: center;
          background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
                      url('images/Register.jpeg') center/cover no-repeat fixed;
         padding: 40px 0;
      }

      /* ---------- FORM CONTAINER ---------- */
      .registration_form {
          width: 500px;
          max-width: 500px;
          background: rgba(255, 255, 255, 0.15);
          border: 1px solid rgba(255, 255, 255, 0.2);
          backdrop-filter: blur(10px);
          border-radius: 15px;
         padding: 40px 45px;
          box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
          color: #fff;
      }

      /* ---------- HEADING ---------- */
      .registration_form h1 {
          font-size: 30px;
          text-align: center;
          margin-bottom: 25px;
          background: linear-gradient(45deg, #ffffff, #e74c3c);
          -webkit-background-clip: text;
          -webkit-text-fill-color: transparent;
          font-weight: 700;
          letter-spacing: 1px;
      }

      /* ---------- LABEL ---------- */
      .registration_form label {
          display: block;
          margin-bottom: 6px;
          font-weight: 600;
          color: #fff;
      }

      /* ---------- INPUTS ---------- */
      .registration_form input[type="text"],
      .registration_form input[type="email"],
      .registration_form input[type="password"],
      .registration_form input[type="date"],
      .registration_form select {
          width: 100%;
          padding: 10px 12px;
          margin-bottom: 15px;
          border: none;
          border-radius: 6px;
          background: rgba(255, 255, 255, 0.85);
          font-size: 14px;
          color: #333;
          transition: all 0.3s ease;
      }

      .registration_form input:focus,
      .registration_form select:focus {
          outline: none;
          box-shadow: 0 0 8px rgba(231, 76, 60, 0.7);
          background: #fff;
      }

      /* ---------- BUTTON ---------- */
      .registration_form input[type="submit"],
      .registration_form asp\:button,
      .registration_form button {
          width: 100%;
          padding: 12px;
          background: linear-gradient(45deg, #e74c3c, #c0392b);
          border: none;
          border-radius: 6px;
          color: #fff;
          font-size: 16px;
          font-weight: 600;
          cursor: pointer;
          transition: all 0.3s ease;
      }

      .registration_form input[type="submit"]:hover,
      .registration_form asp\:button:hover,
      .registration_form button:hover {
          transform: translateY(-2px);
          box-shadow: 0 6px 15px rgba(231, 76, 60, 0.4);
      }

      /* ---------- ERROR MESSAGES ---------- */
      .error-message {
          color: #ff6b6b;
          font-size: 13px;
          display: block;
          margin-bottom: 8px;
      }

      /* ---------- LOGIN LINK ---------- */
      .login-link {
          text-align: center;
          margin-top: 20px;
          font-size: 14px;
      }

      .login-link a {
          color: #f5b7b1;
          text-decoration: none;
          transition: 0.3s;
      }

      .login-link a:hover {
          text-decoration: underline;
      }

      /* ---------- RESPONSIVE ---------- */
      @media (max-width: 600px) {
          .registration_form {
              width: 90%;
              padding: 30px;
          }

          .registration_form h1 {
              font-size: 24px;
          }
      }
  </style>

  <!-- ---------- MAIN CENTER SECTION ---------- -->
  <div class="main-wrapper">
      <div class="registration_form">
          <h1>Registration Form</h1>

          <label>Name</label>
          <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
              ControlToValidate="TextBox1" ErrorMessage="Name Required!" CssClass="error-message"></asp:RequiredFieldValidator>

          <label>Email</label>
          <asp:TextBox ID="TextBox2" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
              ControlToValidate="TextBox2" ErrorMessage="Email Required!" CssClass="error-message"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
              ControlToValidate="TextBox2" ErrorMessage="Incorrect email format!"
              ValidationExpression="^[a-zA-Z0-9._%!+-]+@[a-zA-Z.-]+\.[a-zA-Z]{2,}$"
              CssClass="error-message"></asp:RegularExpressionValidator>

          <label>Password</label>
          <asp:TextBox ID="TextBox3" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
              ControlToValidate="TextBox3" ErrorMessage="Password Required!" CssClass="error-message"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
              ControlToValidate="TextBox3"
              ErrorMessage="Strong password required (min 8 chars, A-Z, a-z, number, symbol)"
              ValidationExpression="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%?&])[A-Za-z\d@$!%?&]{8,}$"
              CssClass="error-message"></asp:RegularExpressionValidator>

          <label>Gender</label>
          <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CellPadding="5" CellSpacing="10">
              <asp:ListItem>Male</asp:ListItem>
              <asp:ListItem>Female</asp:ListItem>
          </asp:RadioButtonList>

          <label>Date of Birth</label>
          <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
              ControlToValidate="TextBox4" ErrorMessage="DOB Required!" CssClass="error-message"></asp:RequiredFieldValidator>

          <label>City</label>
          <asp:DropDownList ID="DropDownList1" runat="server">
              <asp:ListItem Value="" Selected="True">Select City</asp:ListItem>
              <asp:ListItem>Gujrat</asp:ListItem>
              <asp:ListItem>Kharian</asp:ListItem>
              <asp:ListItem>Lalamusa</asp:ListItem>
              <asp:ListItem>Kotla</asp:ListItem>
          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
              ControlToValidate="DropDownList1" InitialValue=""
              ErrorMessage="City Required!" CssClass="error-message"></asp:RequiredFieldValidator>

          <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn" OnClick="Button1_Click" />

          <p class="login-link">
              Already have an account?
              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginForm.aspx">Login here</asp:HyperLink>
          </p>
      </div>
  </div>
</asp:Content>
