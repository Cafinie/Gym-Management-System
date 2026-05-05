<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="mainmenu.aspx.cs" Inherits="gym_hub.mainmenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <style>
       body {
           
/*            min-height: calc(100vh - 160px);*/
           font-family: 'Segoe UI', Arial, sans-serif;
           background: 
               linear-gradient(rgba(44, 62, 80, 0.85), rgba(52, 73, 94, 0.85)),
               url('images/background.jpg');
           background-size: cover;
           background-position: center;
           background-attachment: fixed;

           min-height: 100vh;  /* full page height */
    /*padding-top: 80px;*/  /* add spacing from top */
/*    padding-bottom: 60px;*/
           margin: 0;
           
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
           background: linear-gradient(120deg, #ff6b35);
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
           background: linear-gradient(120deg, transparent, #ff6b35, transparent);
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
           background: linear-gradient(120deg, #ff6b35);
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
           background: linear-gradient(120deg,#ff6b35);
           box-shadow: 0 6px 15px rgba(231, 76, 60, 0.4);
       }

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
/*               padding: 25px 20px;*/
           }
       }
       * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Arial, sans-serif;
}
ng: 20px;
    

    </style>

    
        <div class="header">
            <asp:Label ID="Label1" runat="server" CssClass="main-title" Text="Equipment Management"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="subtitle" Text="Manage your Equipment database efficiently"></asp:Label>
            <hr class="divider" />
        </div>

        <div class="grid-container">
            <div class="card">
                <img src="images/add.png" style="height: 50px; width: 59px" />
                <a href="add.aspx">
                    <h3>Add Equipment</h3>
                </a>
                <p>Create new Equipment records in the system</p>
            </div>

            <div class="card">
                <img src="images/view.png" style="height: 51px; width: 49px" />
                <a href="view.aspx">
                    <h3>View Equipment</h3>
                </a>
                <p>Browse and search all Equipment records</p>
            </div>
        </div>

        <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Back to Home" PostBackUrl="~/homepage.aspx" />
</asp:Content>
