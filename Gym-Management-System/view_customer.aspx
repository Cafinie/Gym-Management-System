<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/home.master"  CodeBehind="view_customer.aspx.cs" Inherits="gym_hub.view_customer" UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
/* ---------------- RESET ---------------- */
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
    min-height: 100vh;
    display: block;
    justify-content: center;
    align-items: center;
/*    padding: 20px;*/
    color: white;
}
    .page-wrapper {
    display: flex;
    justify-content: center;
    align-items: flex-start;  /* top se start hoga */
    min-height: 100vh;
    padding: 40px;       /* header aur form ke beech spacing */
}
form {
    display: block;
    justify-content: center;
    align-items: center;
    width: 100%;
    
}

/* ✅ wider, centered form */
.form-container {
    background: rgba(255, 255, 255, 0.12);
    backdrop-filter: blur(5px);
    margin: auto;
    padding: 20px;
   border-radius: 15px;
    border: 1px solid rgba(255, 255, 255, 0.2);
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
    width: 100%;
    max-width: 100%;
    text-align: center;
    overflow: hidden;  /*  prevent inner content from breaking layout */
    display: block;    /*  remove flex — allows scroll to work properly */
}


/* Titles */
.form-title {
    font-size: 1.8rem;
    font-weight: 700;
    margin-bottom: 10px;
    background: linear-gradient(45deg, #ffffff, #e74c3c);
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
}

.subtitle {
    font-size: 1rem;
    color: #ddd;
    margin-bottom: 25px;
}

/* ✅ GridView container with vertical scroll */
.Table {
   
    display: block;
    justify-content: center;
    margin-bottom: 5px;
}

.scroll-container {
    width: 100%;
    max-height: 500px;     /* fixed visible height */
    overflow-y: auto;      /* vertical scrolling enabled */
    overflow-x: auto;      /* allow horizontal scroll if needed */
    border: 1px solid rgba(255, 255, 255, 0.2);
    border-radius: 10px;
    background-color: white;
    scroll-behavior: smooth;/* optional: gives contrast */
}





/* Make table full width and cells wrap text */
.gridview {
    width: 100%;          /* take full container width */
    border-collapse: collapse;
    table-layout: fixed; /* important for wrap */
    padding-top: 20px;
}

/* Allow text wrapping inside cells */
.gridview th, .gridview td {
    word-wrap: break-word;
    white-space: normal;  /* allow multiline text */
    padding: 12px;
}

.gridview td {
    color: #333;
    padding: 12px;
    border-bottom: 1px solid #ddd;
}
 

.gridview tr:nth-child(even) td {
    background-color: #f3f3f3;
}


/* Buttons */
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
    width: 48%;
    margin: 5px;
}

.btn-view {
    background: linear-gradient(45deg, #e74c3c, #c0392b);
    color: white;
    box-shadow: 0 4px 12px rgba(231, 76, 60, 0.3);
}

.btn-view:hover {
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

/* Wider specific columns */
.gridview th:nth-child(1), .gridview td:nth-child(1) { width: 170px; }
.gridview th:nth-child(2), .gridview td:nth-child(2) { width: 90px; }
.gridview th:nth-child(3), .gridview td:nth-child(3) { width: 130px; } /* Name */
.gridview th:nth-child(4), .gridview td:nth-child(4) { width: 165px; } /* Email */
.gridview th:nth-child(5), .gridview td:nth-child(5) { width: 120px; } /* Address */
.gridview th:nth-child(6), .gridview td:nth-child(6) { width: 160px; } 
.gridview th:nth-child(7), .gridview td:nth-child(7) { width: 80px; } 
.gridview th:nth-child(8), .gridview td:nth-child(8) { width: 100px }
.gridview th:nth-child(9), .gridview td:nth-child(9) { width: 120px; } 
.gridview th:nth-child(10), .gridview td:nth-child(10) { width: 80px; }
.gridview th:nth-child(11), .gridview td:nth-child(11) { width: 90px; }
.gridview th:nth-child(12), .gridview td:nth-child(12) { width: 100px; }

        .rbl-custom input[type="radio"] {
    width: 12px; /* circle chhoti hogi */
        height: 12px; /* radio button ka size */
margin-right: 4px;


}
.rbl-custom{ text-align: left;
        padding: 0;
        margin: 0;}
.rbl-custom label {
    font-size: 15px; /* text ko chhota karne ke liye */
    color: black;    /* agar chaho color change bhi kar sakte ho */
    font-size: 13px; /* text chhota */
        display: flex;
        align-items: center;
        gap: 3px;
}
  .rbl-custom td {
        padding: 0 0 2px 0 !important; /* vertical gap kam */
    }

  .btn-edit, .btn-delete, .btn-update, .btn-cancel {
        font-size: 14px;
        padding: 4px 8px;
        border-radius: 6px;
        border: none;
        text-decoration: none;
        font-weight: bold;
        transition: all 0.2s ease;
        cursor: pointer;
        display: inline-block;
    }

    .btn-edit { background-color: #4CAF50; color: white; }
    .btn-delete { background-color: #f44336; color: white; }
    .btn-update { background-color: #2196F3; color: white; }
    .btn-cancel { background-color: #9E9E9E; color: white; }

    .btn-edit:hover, .btn-delete:hover, .btn-update:hover, .btn-cancel:hover {
        opacity: 0.8;
        transform: scale(1.05);
    }

</style>
     <div class="page-wrapper">
        <div class="form-container">
            <h1 class="form-title">View Customers</h1>
            <div class="subtitle">Easily manage and view all customer records in one place.</div>

            <div class="Table">
                <div class="scroll-container">
                    
                    <asp:GridView ID="GridView1" runat="server" CssClass="gridview" CellPadding="4"
                        ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE"
                        BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="False" DataKeyNames="Customer_ID" DataSourceID="SqlDataSource1" >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                        <asp:TemplateField HeaderText="Actions">
    <ItemTemplate>
        <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit" Text="Edit"
            CssClass="btn-edit"></asp:LinkButton>
        &nbsp;
        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete" Text="Delete"
            CssClass="btn-delete"
            OnClientClick="return confirm('Are you sure you want to delete this record?');">
        </asp:LinkButton>
    </ItemTemplate>

    <EditItemTemplate>
        <asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update" Text="Update"
            CssClass="btn-update"
            OnClientClick="alert('Record Updated Successfully!');"></asp:LinkButton>
        &nbsp;
        <asp:LinkButton ID="lnkCancel" runat="server" CommandName="Cancel" Text="Cancel"
            CssClass="btn-cancel"></asp:LinkButton>
    </EditItemTemplate>
</asp:TemplateField>


                           
                            <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" InsertVisible="False" ReadOnly="True" SortExpression="Customer_ID" />
                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>' Width="110px" Height="30px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvName1" runat="server"
                                    ControlToValidate="TextBox1"
                                    ErrorMessage="Name is required!"
                                    Display="Dynamic"
                                    ForeColor="Red" style="font-size:10px; color:red;text-align: left; display: block; ">
                                 </asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle Width="50%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Text='<%# Bind("Email") %>' Width="120px" Height="30px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfvName2" runat="server"
                            ControlToValidate="TextBox2"
                            ErrorMessage="Email is required!"
                            Display="Dynamic"
                            ForeColor="Red" style="font-size:10px; color:red;text-align: left; display: block; ">
</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email format is invalid!" CssClass="error-message" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  Display="Dynamic"
 ForeColor="Red" style="font-size:10px; color:red;text-align: left; display: block; "></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone_Number" SortExpression="Phone_Number">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server"  TextMode="Phone" Text='<%# Bind("Phone_Number") %> ' Width="95px" Height="30px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfvName3" runat="server"
                            ControlToValidate="TextBox3"
                            ErrorMessage="Phone no is required!"
                            Display="Dynamic"
                            ForeColor="Red" style="font-size:10px; color:red;text-align: left; display: block; ">
</asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RE2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Phone number must be 11 digits!" CssClass="error-message" ValidationExpression="^\d{11}$" Display="Dynamic"
ForeColor="Red" style="font-size:10px; color:red;text-align: left; display: block;" ></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Phone_Number") %>' ></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CNIC" SortExpression="CNIC">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CNIC") %>' Width="120px" Height="30px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfvName4" runat="server"
                            ControlToValidate="TextBox4"
                            ErrorMessage="CNIC is required!"
                            Display="Dynamic"
                            ForeColor="Red" style="font-size:10px; color:red;text-align: left; display: block; ">
</asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="CNIC format is invalid!" CssClass="error-message" ValidationExpression="^\d{5}-\d{7}-\d{1}$"  Display="Dynamic"
 ForeColor="Red" style="font-size:10px; color:red;text-align: left; display: block;"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("CNIC") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Age" SortExpression="Age">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" Text='<%# Bind("Age") %>' Width="50px" Height="30px" ></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rfvName5" runat="server"
                            ControlToValidate="TextBox5"
                            ErrorMessage="Age is required!"
                            Display="Dynamic"
                            ForeColor="Red" style="font-size:10px; color:red;text-align: left; display: block; ">
</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Age") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City" SortExpression="City">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="dd1" runat="server" SelectedValue='<%# Bind("City") %>' Width="80px" Height="30px" >
    <asp:ListItem Text="Select City" Value="" />
    <asp:ListItem Text="Kharian" Value="Kharian" />
    <asp:ListItem Text="Lalamusa" Value="Lalamusa" />
    <asp:ListItem Text="Gujrat" Value="Gujrat" />
    <asp:ListItem Text="Islamabad" Value="Islamabad" />
    <asp:ListItem Text="Jehlum" Value="Jehlum" />
    <asp:ListItem Text="Kashmir" Value="Kashmir" />
</asp:DropDownList>
                                                                  <asp:RequiredFieldValidator ID="rfvName6" runat="server"
                            ControlToValidate="dd1"
                            ErrorMessage="City is required!"
                            Display="Dynamic"
                            ForeColor="Red" style="font-size:10px; color:red;text-align: left; display: block; ">
</asp:RequiredFieldValidator>
                              
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Join_Date" SortExpression="Join_Date">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Join_Date") %>' Width="100px" Height="30px" TextMode="Date"></asp:TextBox>
                                                                                                    <asp:RequiredFieldValidator ID="rfvName7" runat="server"
                            ControlToValidate="TextBox7"
                            ErrorMessage="Join Date is required!"
                            Display="Dynamic"
                            ForeColor="Red" style="font-size:10px; color:red;text-align: left; display: block; ">
</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Join_Date") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                                <EditItemTemplate>
                                     <asp:RadioButtonList ID="rbl2" runat="server" CssClass="rbl-custom" SelectedValue='<%# Bind("Gender") %>' RepeatDirection="Vertical" >
    
    <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
</asp:RadioButtonList>

                                  
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Shift_Timming" SortExpression="Shift_Timming">
                                <EditItemTemplate>
                             <asp:RadioButtonList ID="rbl3" runat="server" CssClass="rbl-custom" SelectedValue='<%# Bind("Shift_Timming") %>' RepeatDirection="Vertical" >
    
    <asp:ListItem>Morning</asp:ListItem>
    <asp:ListItem>Evening</asp:ListItem>
</asp:RadioButtonList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Shift_Timming") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" Text='<%# Bind("Address") %>' Width="70px" Height="70px"></asp:TextBox>
                                                                                                    <asp:RequiredFieldValidator ID="rfvName10" runat="server"
                            ControlToValidate="TextBox10"
                            ErrorMessage="Address is required!"
                            Display="Dynamic"
                            ForeColor="Red" style="font-size:10px; color:red;text-align: left; display: block; ">
</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" BorderColor="#CCCCCC" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gym_hubConnectionString %>" DeleteCommand="DELETE FROM [add_Customer] WHERE [Customer_ID] = @Customer_ID" InsertCommand="INSERT INTO [add_Customer] ([Name], [Email], [Phone_Number], [CNIC], [Age], [City], [Join_Date], [Gender], [Shift_Timming], [Address]) VALUES (@Name, @Email, @Phone_Number, @CNIC, @Age, @City, @Join_Date, @Gender, @Shift_Timming, @Address)" SelectCommand="SELECT * FROM [add_Customer]" UpdateCommand="UPDATE [add_Customer] SET [Name] = @Name, [Email] = @Email, [Phone_Number] = @Phone_Number, [CNIC] = @CNIC, [Age] = @Age, [City] = @City, [Join_Date] = @Join_Date, [Gender] = @Gender, [Shift_Timming] = @Shift_Timming, [Address] = @Address WHERE [Customer_ID] = @Customer_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="Customer_ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Phone_Number" Type="String" />
                            <asp:Parameter Name="CNIC" Type="String" />
                            <asp:Parameter Name="Age" Type="Int32" />
                            <asp:Parameter Name="City" Type="String" />
                            <asp:Parameter Name="Join_Date" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="Shift_Timming" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Phone_Number" Type="String" />
                            <asp:Parameter Name="CNIC" Type="String" />
                            <asp:Parameter Name="Age" Type="Int32" />
                            <asp:Parameter Name="City" Type="String" />
                            <asp:Parameter Name="Join_Date" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="Shift_Timming" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Customer_ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>

            <asp:Button ID="btnView" runat="server" CssClass="btn btn-view" Text="Load Customers" OnClick="btnView_Click" />
            <asp:Button ID="btnBack" runat="server" CssClass="btn btn-back" Text="Back to Dashboard"
                PostBackUrl="~/Customer_Dashboard.aspx" CausesValidation="False" />
        </div>
         </div>
    </asp:Content>
