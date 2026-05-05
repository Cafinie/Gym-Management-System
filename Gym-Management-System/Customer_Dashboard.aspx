<%@ Page Title="Customer Dashboard" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeBehind="Customer_Dashboard.aspx.cs" Inherits="gym_hub.Customer_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .page-background {
    min-height: calc(100vh - 160px); /* header + footer height ko adjust karo */
    background:
        linear-gradient(rgba(44, 62, 80, 0.85), rgba(52, 73, 94, 0.85)),
url('images/background.jpg');
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    padding: 70px 20px;
    text-align: center;
    color: white;
}



        .header {
            margin-bottom: 50px;
        }

        .main-title {
    font-size: 3rem;
    font-weight: 700;
    margin-bottom: 15px;
    background: linear-gradient(45deg, #ffffff, #e74c3c);
    -webkit-background-clip: text;
    
    background-clip: text;
    color: transparent;
}


        .subtitle {
            font-size: 1.3rem;
            opacity: 0.9;
            margin-bottom: 10px;
            font-weight: 300;
        }

        .divider {
            width: 250px;
            height: 4px;
            background: linear-gradient(90deg, transparent, #e74c3c, transparent);
            margin: 25px auto;
            border: none;
            border-radius: 2px;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 30px;
            max-width: 1000px;
            margin: 0 auto 50px;
        }

        .card {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(10px);
            padding: 35px 25px;
            border-radius: 15px;
            text-align: center;
            transition: all 0.3s ease;
            border: 1px solid rgba(255, 255, 255, 0.2);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
        }

        .card:hover {
            transform: translateY(-8px);
            background: rgba(255, 255, 255, 0.18);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.4);
        }

        .card i {
            font-size: 55px;
            margin-bottom: 20px;
            background: linear-gradient(45deg, #e74c3c, #3498db);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .card h3 {
            color: white;
            font-size: 1.5rem;
            margin-bottom: 12px;
            font-weight: 600;
        }

        .card p {
            color: rgba(255, 255, 255, 0.8);
            line-height: 1.6;
            font-size: 1rem;
        }

        .card a {
            text-decoration: none;
            color: inherit;
            display: block;
        }

        .btn {
            background: linear-gradient(45deg, #e74c3c, #c0392b);
            color: white;
            border: none;
            padding: 14px 35px;
            font-size: 1.1rem;
            border-radius: 30px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: 600;
            box-shadow: 0 4px 12px rgba(231, 76, 60, 0.3);
        }

        .btn:hover {
            transform: translateY(-3px);
            background: linear-gradient(45deg, #c0392b, #e74c3c);
            box-shadow: 0 6px 15px rgba(231, 76, 60, 0.4);
        }

        /* Mobile Responsive */
        @media (max-width: 768px) {
            .grid-container {
                grid-template-columns: 1fr;
                gap: 25px;
            }

            .main-title {
                font-size: 2.3rem;
            }

            body {
                padding: 30px 15px;
            }

            .card {
                padding: 25px 20px;
            }
        }
    </style>

    
    <div class="page-background">

    <div class="header">
        <asp:Label ID="Label1" runat="server" CssClass="main-title" Text="Customer Management"></asp:Label>
        <div class="divider"></div>
        <asp:Label ID="Label2" runat="server" CssClass="subtitle" Text="Manage your customer database efficiently"></asp:Label>
    </div>
  <br />

    <div class="grid-container">
        <div class="card">
            <i class="fas fa-user-plus"></i>
            <a href="add_customer.aspx">
                <h3>Add Customer</h3>
            </a>
            <p>Create new customer records in the system</p>
        </div>

        <div class="card">
            <i class="fas fa-users"></i>
            <a href="view_customer.aspx">
                <h3>View Customers</h3>
            </a>
            <p>View, Edit and Delete Customer Records</p>
        </div>
    </div>

    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Back to Home" PostBackUrl="~/homepage.aspx" />
 </div>
</asp:Content>
