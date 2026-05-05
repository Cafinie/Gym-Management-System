<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="gym_hub.add" %>
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
            /*display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;*/
/*            padding: 20px;*/
            /*color: white;*/
        }

        form {
/*            margin-top: 60px;*/
        }

        .form-container {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(10px);
            padding: 25px;
            border-radius: 15px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            width: 40%;
            max-width: 900px;
            min-width: 600px;
             margin: 40px auto;
        }

        .form-title {
            text-align: center;
            font-size: 1.8rem;
            font-weight: 700;
            margin-bottom: 25px;
            background: linear-gradient(120deg, #ff6b35);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .form-row {
            margin-bottom: 15px;
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

        .error-message {
            color: #ff6b6b;
            font-size: 0.75rem;
            margin-top: 3px;
            font-weight: 500;
            display: block;
        }

        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 25px;
        }

        .btn {
            padding: 12px 20px;
            font-size: 1rem;
            font-weight: 600;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            width: 150px;
        }

        .btn-back {
            background: linear-gradient(45deg, #6a85b6, #bac8e0);
            color: white;
        }

        .btn-back:hover {
            background: linear-gradient(45deg, #6a85b6, #bac8e0);
            transform: translateY(-2px);
        }

        .btn-save {
            background: linear-gradient(120deg, #ff6b35);
            color: white;
            box-shadow: 0 4px 12px rgba(231, 76, 60, 0.3);
        }

        .btn-save:hover {
            background: linear-gradient(120deg, #ff6b35);
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(231, 76, 60, 0.4);
        }

        .textarea-field {
            resize: vertical;
            min-height: 60px;
            font-family: inherit;
        }

        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
                max-width: 90%;
                min-width: auto;
            }
            .form-title {
                font-size: 1.6rem;
            }
            .btn {
                width: 100%;
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
            }
        }
    </style>

        <div class="form-container">
            <div class="form-title">Add Equipment</div>

            <div class="form-row">
                <label class="form-label">Name</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-row">
                <label class="form-label">Type</label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtype" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="Type is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-row">
                <label class="form-label">Brand</label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvbrand" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="Enter Brand" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-row">
                <label class="form-label">Quantity</label>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvquantity" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="Enter quantity" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-row">
                <label class="form-label">Purchase Date</label>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" CssClass="input-field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvpurchasedate" runat="server" ControlToValidate="TextBox5"
                    ErrorMessage="Enter date" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-row">
                <label class="form-label">Condition</label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-field">
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Needs to repair</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-row">
                <label class="form-label">Notes</label>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" CssClass="textarea-field">optional notes...</asp:TextBox>
            </div>

            <div class="button-container">
                <asp:Button ID="Button1" runat="server" Text="Cancel" CssClass="btn btn-back" 
                    PostBackUrl="~/mainmenu.aspx" CausesValidation="False" />
                <asp:Button ID="Button2" runat="server" Text="Save" CssClass="btn btn-save" OnClick="Button2_Click" />
                <br />
                
                    
            </div>
        </div>
</asp:Content>
