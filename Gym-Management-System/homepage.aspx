<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="gym_hub.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <style>
        :root {
            --primary-dark: #34495e;
            --primary-accent: #e74c3c;
            --light-bg: #f8f9fa;
            --text-dark: #2c3e50;
            --text-light: #ecf0f1;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: var(--light-bg);
            color: var(--text-dark);
            line-height: 1.6;
            overflow-x: hidden;
        }
        
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        /* Hero Section */
.hero {
    background: rgba(52, 73, 94, 0.7);
  position: relative;
  min-height: 90vh;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  overflow: hidden;
  color: var(--text-light);
  padding-bottom: 90px;
}

/* 🔹 Background Slider (auto changing) */
.hero::before {
  background-image: url('https://images.unsplash.com/photo-1534438327276-14e5300c3a48?auto=format&fit=crop&w=1350&q=80');
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-size: cover;
  background-position: center;
  animation: heroSlider 8s infinite ease-in-out;
z-index: -2;
}

/* 🔸 Overlay (Hover effect) */
.hero::after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
/*  background: radial-gradient(circle at center, rgba(231, 76, 60, 0.3), transparent);*/
  opacity: 0;
  transition: opacity 0.5s ease;
/*  z-index: -1;*/
}

/* Hover effect visible now */
.hero:hover::after {
  opacity: 1;
}

/* 🔹 Background changing animation */



.hero:hover::before {
    opacity: 1;
}

.hero-content {
    position: relative;
/*    z-index: 2;*/
    background: none;
    backdrop-filter: none;
    padding: 0;
    box-shadow: none;
    border: none;
}

/* Headings and text */
.hero h1 {
    font-size: 3.5rem;
    font-weight: 700;
    color: #ffffff;
    text-shadow: 0 2px 10px rgba(0, 0, 0, 0.6);
    margin-bottom: 20px;
    position: relative;
/*    z-index: 1;*/
/*    transition: transform 0.4s ease;*/
}

.hero p {
    font-size: 1.2rem;
    color: #ecf0f1;
    text-shadow: 0 1px 6px rgba(0, 0, 0, 0.4);
    max-width: 700px;
    margin: 0 auto 30px;
    position: relative;
/*    z-index: 1;*/
/*    transition: transform 0.4s ease;*/
}

/* Hover animations like CTA section */
.hero:hover h1 {
/*    transform: scale(1.05);*/
}

.hero:hover p {
/*    transform: translateY(-5px);*/
}

/
        
       s
        
        /* Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        /* Responsive Design */
       
        }
    </style>

    <!-- Hero Section -->
    <section id="hero" class="hero">
        <div class="container">
            <div class="hero-content">
                <h1>Welcome to GymHub</h1>
                <p>Your complete fitness center management solution. Streamline operations, engage members, and grow your business with our powerful platform.</p>
                
               
            </div>
        </div>
    </section>
    
    
    

   <script>
function checkLogin(event) {
    var loggedIn = '<%= Session["user"] != null ? "true" : "false" %>';
    if (loggedIn === "false") {
        event.preventDefault();
        alert("Please login first!");
        window.location = "Loginform.aspx";
        return false;
    }
    return true;
}
   </script>


</asp:Content>
