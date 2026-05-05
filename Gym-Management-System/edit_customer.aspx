<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit_customer.aspx.cs" Inherits="gym_hub.edit_customer" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Customer</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Arial, sans-serif;
        }

        body {
            background: linear-gradient(rgba(44, 62, 80, 0.85), rgba(52, 73, 94, 0.85)),
                        url('images/background.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
            color: white;
        }

        form {
            margin-top: 60px;
        }

        .form-container {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(10px);
            padding: 25px;
            border-radius: 15px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            width: 80%;
            max-width: 900px;
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

        .input-field,
        .dropdown-field,
        .textarea-field {
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

        .input-field:focus,
        .dropdown-field:focus,
        .textarea-field:focus {
            outline: none;
            border-color: #e74c3c;
            box-shadow: 0 4px 10px rgba(230, 126, 34, 0.2);
            background: white;
        }

        .radio-group {
            display: flex;
            gap: 15px;
            align-items: center;
        }

        .radio-label {
            color: white;
            display: flex;
            align-items: center;
            gap: 5px;
            font-weight: 500;
            cursor: pointer;
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

        .btn-update {
            background: linear-gradient(45deg, #e74c3c, #c0392b);
            color: white;
            box-shadow: 0 4px 12px rgba(231, 76, 60, 0.3);
        }

        .btn-update:hover {
            background: linear-gradient(45deg, #c0392b, #e74c3c);
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(231, 76, 60, 0.4);
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

       
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
                max-width: 90%;
            }

            .form-title {
                font-size: 1.6rem;
            }

            .btn {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h1 class="form-title">Edit Customer</h1>

            <!-- Customer ID -->
            <div class="form-row"> <label class="form-label">Customer ID </label> 
                <asp:TextBox ID="txtid" runat="server" CssClass="input-field" placeholder="Enter Customer ID"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtid" ErrorMessage="Must Require Customer ID!" CssClass="error-message"></asp:RequiredFieldValidator> 
                <asp:Button ID="btnsearch" runat="server" cssClass="btn btn-update" Text="Search"    />
            </div>

            <!-- Full Name -->
            <div class="form-row">
                <label class="form-label">Full Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="input-field" placeholder="Enter Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="txtName"
                    ErrorMessage="Must Require Name!"
                    CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <!-- Email -->
            <div class="form-row">
                <label class="form-label">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="input-field" placeholder="Enter Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Must Require Email!"
                    CssClass="error-message"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Invalid Email Format!"
                    CssClass="error-message"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

            <!-- Phone -->
            <div class="form-row">
                <label class="form-label">Phone Number</label>
                <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" CssClass="input-field" placeholder="Enter Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ControlToValidate="txtPhone"
                    ErrorMessage="Must Require Phone Number!"
                    CssClass="error-message"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                    ControlToValidate="txtPhone"
                    ErrorMessage="Phone number must be 11 digits!"
                    CssClass="error-message"
                    ValidationExpression="^\d{11}$"></asp:RegularExpressionValidator>
            </div>

            <!-- CNIC -->
            <div class="form-row">
                <label class="form-label">CNIC</label>
                <asp:TextBox ID="txtCNIC" runat="server" CssClass="input-field" placeholder="XXXXX-XXXXXXX-X"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                    ControlToValidate="txtCNIC"
                    ErrorMessage="Must Require CNIC!"
                    CssClass="error-message"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                    ControlToValidate="txtCNIC"
                    ErrorMessage="Invalid CNIC format!"
                    CssClass="error-message"
                    ValidationExpression="^\d{5}-\d{7}-\d{1}$"></asp:RegularExpressionValidator>
            </div>

            <!-- Age -->
            <div class="form-row">
                <label class="form-label">Age</label>
                <asp:TextBox ID="txtAge" runat="server" TextMode="Number" CssClass="input-field" placeholder="Enter Age"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                    ControlToValidate="txtAge"
                    ErrorMessage="Must Require Age!"
                    CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <!-- City -->
            <div class="form-row">
                <label class="form-label">City</label>
                <asp:DropDownList ID="ddlCity" runat="server" CssClass="dropdown-field">
                    <asp:ListItem Text="Select City" Value="" />
                    <asp:ListItem>Kharian</asp:ListItem>
                    <asp:ListItem>Lalamusa</asp:ListItem>
                    <asp:ListItem>Gujrat</asp:ListItem>
                    <asp:ListItem>Islamabad</asp:ListItem>
                    <asp:ListItem>Jehlum</asp:ListItem>
                    <asp:ListItem>Kashmir</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                    ControlToValidate="ddlCity"
                    ErrorMessage="Must Require City!"
                    CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <!-- Join Date -->
            <div class="form-row">
                <label class="form-label">Join Date</label>
                <asp:TextBox ID="txtJoinDate" runat="server" TextMode="Date" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                    ControlToValidate="txtJoinDate"
                    ErrorMessage="Must Require Join Date!"
                    CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <!-- Gender -->
            <div class="form-row">
                <label class="form-label">Gender</label>
                <div class="radio-group">
                    <label class="radio-label">
                        <asp:RadioButton ID="rbtnMale" runat="server" GroupName="gender" /> Male
                    </label>
                    <label class="radio-label">
                        <asp:RadioButton ID="rbtnFemale" runat="server" GroupName="gender" /> Female
                    </label>
                </div>
            </div>

            <!-- Shift -->
            <div class="form-row">
                <label class="form-label">Shift Timing</label>
                <div class="radio-group">
                    <label class="radio-label">
                        <asp:RadioButton ID="rbtnMorning" runat="server" GroupName="shift" /> Morning
                    </label>
                    <label class="radio-label">
                        <asp:RadioButton ID="rbtnEvening" runat="server" GroupName="shift" /> Evening
                    </label>
                </div>
            </div>

            <!-- Address -->
            <div class="form-row">
                <label class="form-label">Address</label>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="2" CssClass="textarea-field" placeholder="Enter Address"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                    ControlToValidate="txtAddress"
                    ErrorMessage="Must Require Address!"
                    CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <!-- Buttons -->
            <div class="button-container">
                <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-update" Text="Update Customer" OnClick="btnUpdate_Click"  />
                <asp:Button ID="btnBack" runat="server" CssClass="btn btn-back"
                    Text="Back to Dashboard"
                    PostBackUrl="~/Customer_Dashboard.aspx"
                    CausesValidation="False" />
            </div>
        </div>
    </form>

</body>
</html>
