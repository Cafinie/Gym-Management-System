<%@ Page Language="C#"  AutoEventWireup="true" MasterPageFile="~/home.master" CodeBehind="add_customer.aspx.cs" Inherits="gym_hub.add_customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Arial, sans-serif;
        }
        
        body {
            background: 
                linear-gradient(rgba(44, 62, 80, 0.85), rgba(52, 73, 94, 0.85)),
                url('images/background.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            display: block;              /* Flexbox for centering */
    justify-content: center;    /* Center horizontally */
    align-items: center;        /* Center vertically */
    min-height: 100vh; 
           
           
           
            color: white;
        }
        .page-wrapper {
        display: flex;
        justify-content: center;
        align-items: flex-start;  /* top se start hoga */
        min-height: 100vh;
        padding-top: 80px;       /* header aur form ke beech spacing */
    }

        .form-container {
/*            margin-top: 80px;*/
            margin-bottom: 80px;
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(10px);
            padding: 25px;
            border-radius: 15px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            width: 40%;          /* take 80% of screen width */
    max-width: 900px;    /* limit so it doesn’t get too wide */
    min-width: 600px; 
   
        }

        .form-title {
            text-align: center;
            font-size: 1.8rem;
            font-weight: 700;
            margin-bottom: 20px;
            background: linear-gradient(45deg, #ffffff, #e74c3c);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .form-row {
            margin-bottom: 10px;
        }

        .form-label {
            color: white;
            font-weight: 600;
            font-size: large;
            margin-bottom: 5px;
            display: block;
        }

        .input-field, .dropdown-field, .textarea-field {
            background: rgba(255, 255, 255, 0.95);
            border: 2px solid transparent;
            border-radius: 6px;
            padding: 10px 12px;
            font-size: 0.9rem;
            width: 100%;
            transition: all 0.3s ease;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            color: #333;
        }

        .input-field:focus, .dropdown-field:focus, .textarea-field:focus {
            outline: none;
            border-color: #e74c3c;
            box-shadow: 0 4px 10px rgba(231, 76, 60, 0.2);
            background: white;
        }

        .radio-group {
            display: flex;
            gap: 15px;
            align-items: center;
            margin-top: 3px;
        }

        .radio-label {
            color: white;
            display: flex;
            align-items: center;
            gap: 5px;
            font-weight: 500;
            cursor: pointer;
            font-size: 0.9rem;
        }

        .radio-label input[type="radio"] {
            margin: 0;
        }

        .error-message {
            color: #ff6b6b;
            font-size: 0.75rem;
            margin-top: 3px;
            font-weight: 500;
            display: block;
        }

        .button-container {
            display: flex;
            flex-direction: column;
            gap: 10px;
            margin-top: 20px;
        }

        .btn {
            padding: 12px 15px;
            font-size: 0.95rem;
            font-weight: 600;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            width: 100%;
        }

        .btn-back {
            background: rgba(255, 255, 255, 0.2);
            color: white;
            border: 2px solid rgba(255, 255, 255, 0.3);
        }

        .btn-back:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: translateY(-2px);
        }

        .btn-save {
            background: linear-gradient(45deg, #e74c3c, #c0392b);
            color: white;
            box-shadow: 0 4px 12px rgba(231, 76, 60, 0.3);
        }

        .btn-save:hover {
            background: linear-gradient(45deg, #c0392b, #e74c3c);
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(231, 76, 60, 0.4);
        }

        .textarea-field {
            resize: vertical;
            min-height: 60px;
            font-family: inherit;
        }

        /* Mobile Responsive */
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
                max-width: 90%;
            }
            
            .form-title {
                font-size: 1.6rem;
            }
            
            .radio-group {
                flex-direction: column;
                gap: 8px;
                align-items: flex-start;
            }
            
            .btn {
                padding: 10px 12px;
                font-size: 0.9rem;
            }
        }

        @media (max-width: 480px) {
            body {
                padding: 10px;
            }
            
            .form-container {
                padding: 15px;
            }
            
            .form-title {
                font-size: 1.4rem;
                margin-bottom: 15px;
            }
            
            .form-row {
                margin-bottom: 12px;
            }
        }
    </style>
    <div class="page-wrapper">
                <!-- Success message div -->
<div id="successMessage" runat="server" 
     style="display:none; position:absolute; top:75px; right:10px; 
            background:rgba(40, 167, 69, 0.9); color:white; 
            padding:10px 15px; border-radius:5px; z-index:10;">
    Data inserted successfully!
</div>
    
        <div class="form-container">
           

            <h1 class="form-title">Add New Customer</h1>

            <!-- Full Name -->
            <div class="form-row">
                <label class="form-label">Full Name</label>
                <asp:TextBox ID="TextBox11" runat="server" CssClass="input-field" placeholder="Enter Full Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox11" ErrorMessage="Must Require Name!" CssClass="error-message" ValidationGroup="SaveGroup"></asp:RequiredFieldValidator>
            </div>

            <!-- Email -->
            <div class="form-row">
                <label class="form-label">Email</label>
                <asp:TextBox ID="TextBox10" runat="server" TextMode="Email" CssClass="input-field" placeholder="Enter Email Address"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox10" ErrorMessage="Must Require Email!" CssClass="error-message" ValidationGroup="SaveGroup"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox10" ErrorMessage="Email format is invalid!" CssClass="error-message" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="SaveGroup"></asp:RegularExpressionValidator>
            </div>

            <!-- Phone Number -->
            <div class="form-row">
                <label class="form-label">Phone Number</label>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Phone" CssClass="input-field" placeholder="Enter Phone Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Must Require Phone Number!" CssClass="error-message" ValidationGroup="SaveGroup"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Phone number must be 11 digits!" CssClass="error-message" ValidationExpression="^\d{11}$" ValidationGroup="SaveGroup"></asp:RegularExpressionValidator>
            </div>

            <!-- CNIC -->
            <div class="form-row">
                <label class="form-label">CNIC</label>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="input-field" placeholder="XXXXX-XXXXXXX-X"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Must Require CNIC!" CssClass="error-message" ValidationGroup="SaveGroup"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="CNIC format is invalid!" CssClass="error-message" ValidationExpression="^\d{5}-\d{7}-\d{1}$" ValidationGroup="SaveGroup"></asp:RegularExpressionValidator>
            </div>

            <!-- Age -->
            <div class="form-row">
                <label class="form-label">Age</label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="input-field" placeholder="Enter Age" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Must Require Age!" CssClass="error-message" ValidationGroup="SaveGroup"></asp:RequiredFieldValidator>
            </div>

            <!-- City -->
            <div class="form-row">
                <label class="form-label">City</label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-field">
                    <asp:ListItem Text="Select City" Value="" />
                    <asp:ListItem>Kharian</asp:ListItem>
                    <asp:ListItem>Lalamusa</asp:ListItem>
                    <asp:ListItem>Gujrat</asp:ListItem>
                    <asp:ListItem>Islamabad</asp:ListItem>
                    <asp:ListItem>Jehlum</asp:ListItem>
                    <asp:ListItem>Kashmir</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Must Require City!" CssClass="error-message" ValidationGroup="SaveGroup"></asp:RequiredFieldValidator>
            </div>

            <!-- Join Date -->
            <div class="form-row">
                <label class="form-label">Join Date</label>
              <asp:TextBox ID="TextBox7" runat="server" TextMode="Date" CssClass="input-field"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Must Require Join Date!" CssClass="error-message" ValidationGroup="SaveGroup"></asp:RequiredFieldValidator>
            </div>

            <!-- Gender -->
            <div class="form-row">
                <label class="form-label">Gender</label>
                <div class="radio-group">
                    <label class="radio-label">
                    
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    
                    </label>
                </div>
            </div>

            <!-- Shift Timing -->
            <div class="form-row">
                <label class="form-label">Shift Timing</label>
                <div class="radio-group">
                    <label class="radio-label">
            
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Morning</asp:ListItem>
                        <asp:ListItem>Evening</asp:ListItem>
                    </asp:RadioButtonList>
                    
                    </label>
                </div>
            </div>

            <!-- Address -->
            <div class="form-row">
                <label class="form-label">Address</label>
                <asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine" CssClass="textarea-field" Rows="2" placeholder="Enter Complete Address"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="Must Require Address!" CssClass="error-message" ValidationGroup="SaveGroup"></asp:RequiredFieldValidator>
            </div>

            <!-- Buttons -->
            <div class="button-container">
                <asp:Button ID="Button4" runat="server" CssClass="btn btn-save" Text="Save Customer"  ValidationGroup="SaveGroup" OnClick="Button4_Click"  />
                <asp:Button ID="Button5" runat="server" CssClass="btn btn-back" Text="Back to Dashboard" PostBackUrl="~/Customer_Dashboard.aspx" CausesValidation="False" />
            </div>
        </div>
  
</div>
</asp:Content>