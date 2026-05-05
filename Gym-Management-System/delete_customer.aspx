<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete_customer.aspx.cs" Inherits="gym_hub.delete_customer" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete Customer</title>
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
 display: flex;
 justify-content: center;
 align-items: center;
 min-height: 100vh;
 padding: 20px;
 color: white;
    }
    form {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
}

    .form-container {
        background: rgba(255, 255, 255, 0.12);
        backdrop-filter: blur(10px);
        padding: 25px;
        border-radius: 15px;
        border: 1px solid rgba(255, 255, 255, 0.2);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
        width: 80%;
        max-width: 700px;
        min-width: 400px;
    }

    .form-title {
        text-align: center;
        font-size: 1.8rem;
        font-weight: 700;
        margin-bottom: 10px;
        background: linear-gradient(45deg, #ffffff, #e74c3c);
        -webkit-background-clip: text;
        background-clip: text;
        color: transparent;
    }

    .danger-icon {
        font-size: 50px;
        color: #ff4b2b;
        text-align: center;
        margin-bottom: 10px;
    }

    .warning-text {
        color: whitesmoke;
        font-weight: 600;
        text-align: center;
        margin-bottom: 25px;
    }

    .form-row {
        margin-bottom: 15px;
    }

    .form-label {
        color: white;
        font-weight: 600;
        font-size: Large;
        margin-bottom: 5px;
        display: block;
    }

    .input-field {
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

    .input-field:focus {
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

    /* 🔴 Delete Button */
    .btn-delete {
        background: linear-gradient(45deg, #ff4b2b, #c0392b);
        color: white;
        box-shadow: 0 4px 12px rgba(255, 75, 43, 0.4);
    }

    .btn-delete:hover {
       background: linear-gradient(45deg, #c0392b, #e74c3c);
transform: translateY(-2px);
box-shadow: 0 6px 15px rgba(231, 76, 60, 0.4);
    }

    /* ⚪ Back Button */
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
            font-size: large;
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
            <div class="danger-icon">⚠️</div>
            <h1 class="form-title">Delete Customer</h1>
            <div class="warning-text">Are you sure you want to delete this customer? This action cannot be undone.</div>
        <!-- Customer ID -->
        <div class="form-row">
            <label class="form-label">Customer ID</label>
           <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input-field" ></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="DropDownList1" ErrorMessage="Customer ID is required!"
                CssClass="error-message"></asp:RequiredFieldValidator>
        </div>
        <!-- Buttons -->
        <div class="button-container">
            <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-delete" Text="Delete Customer" OnClick="btnDelete_Click" />
            <asp:Button ID="btnBack" runat="server" CssClass="btn btn-back" Text="Back to Dashboard"
                PostBackUrl="~/Customer_Dashboard.aspx" CausesValidation="False" />
            <br />
        </div>
    </div>
</form>


</body>
</html>
