<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="gym_hub.view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', Arial, sans-serif;
    }

    /* --- Keep background on full page --- */
    body {
        background: 
            linear-gradient(rgba(44, 62, 80, 0.85), rgba(52, 73, 94, 0.85)),
            url('images/background.jpg');
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        color: white;
    }

    /* --- Main wrapper: centers GridView but doesn't affect header/footer --- */
    .form-container {
        background: rgba(255, 255, 255, 0.12);
        backdrop-filter: blur(10px);
        padding: 30px 40px;
        border-radius: 15px;
        border: 1px solid rgba(255, 255, 255, 0.2);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
        width: 95%;
        max-width: 1300px;
        margin: 80px auto; /* centers content vertically below header */
        text-align: center;
    }

    .form-title {
        font-size: 1.8rem;
        font-weight: 700;
        margin-bottom: 10px;
        background: linear-gradient(120deg, #ff6b35);
        -webkit-background-clip: text;
        background-clip: text;
        color: transparent;
    }

    .subtitle {
        font-size: 1rem;
        color: #ddd;
        margin-bottom: 20px;
    }

    /* --- GridView styling --- */
    .Table {
        display: flex;
        justify-content: center;
        overflow-x: auto;
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
        margin-top: 15px;
    }

    .btn-view {
        background: linear-gradient(120deg, #ff6b35);
        color: white;
        box-shadow: 0 4px 12px rgba(231, 76, 60, 0.3);
    }

    .btn-view:hover {
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

    .btn-action {
        display: inline-block;
        padding: 6px 14px;
        margin: 2px;
        border-radius: 6px;
        font-size: 0.9rem;
        font-weight: 600;
        text-decoration: none;
        border: none;
        color: white !important;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    .btn-edit { background: #28a745; }
    .btn-edit:hover { background: #218838; }

    .btn-delete { background: #dc3545; }
    .btn-delete:hover { background: #c82333; }

    .btn-update { background: #007bff; }
    .btn-update:hover { background: #0069d9; }

    .btn-cancel { background: #6c757d; }
    .btn-cancel:hover { background: #5a6268; }
</style>
    
        <div class="form-container">
            <h1 class="form-title">View Equipments</h1>
            <div class="subtitle">Easily manage and view all Equipments records in one place.</div>
            <div class="Table"> 
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="300px" Width="1170px">
   <Columns>
       <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="ID" />

    
    <asp:TemplateField HeaderText="Name" SortExpression="Name">
        <ItemTemplate>
            <%# Eval("Name") %>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>' CssClass="text-input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                ErrorMessage="Name required" ForeColor="Red" Display="Dynamic" />
        </EditItemTemplate>
    </asp:TemplateField>

    
    <asp:TemplateField HeaderText="Type" SortExpression="Type">
        <ItemTemplate>
            <%# Eval("Type") %>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtType" runat="server" Text='<%# Bind("Type") %>' CssClass="text-input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvType" runat="server" ControlToValidate="txtType"
                ErrorMessage="Type required" ForeColor="Red" Display="Dynamic" />
        </EditItemTemplate>
    </asp:TemplateField>

    
    <asp:TemplateField HeaderText="Brand" SortExpression="Brand">
        <ItemTemplate>
            <%# Eval("Brand") %>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtBrand" runat="server" Text='<%# Bind("Brand") %>' CssClass="text-input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvBrand" runat="server" ControlToValidate="txtBrand"
                ErrorMessage="Brand required" ForeColor="red" Display="Dynamic" />
        </EditItemTemplate>
    </asp:TemplateField>

    
    <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
        <ItemTemplate>
            <%# Eval("Quantity") %>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtQuantity" runat="server" Type="Number" Text='<%# Bind("Quantity") %>'
                CssClass="numeric-input" onkeypress="return isNumberKey(event)"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvQuantity" runat="server" ControlToValidate="txtQuantity"
                ErrorMessage="Required" ForeColor="red" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revQuantity" runat="server" ControlToValidate="txtQuantity"
                ValidationExpression="^\d+$" ErrorMessage="Numbers only" ForeColor="red" Display="Dynamic" />
        </EditItemTemplate>
    </asp:TemplateField>

    
    <asp:TemplateField HeaderText="PurchaseDate" SortExpression="PurchaseDate">
        <ItemTemplate>
            <%# Eval("PurchaseDate", "{0:yyyy-MM-dd}") %>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtPurchaseDate" runat="server" Text='<%# Bind("PurchaseDate", "{0:yyyy-MM-dd}") %>'
                CssClass="text-input" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtPurchaseDate"
                ErrorMessage="Date required" ForeColor="red" Display="Dynamic" />
        </EditItemTemplate>
    </asp:TemplateField>

    
    <asp:TemplateField HeaderText="Condition" SortExpression="Condition">
        <ItemTemplate>
            <%# Eval("Condition") %>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:DropDownList ID="ddlCondition" runat="server"
                SelectedValue='<%# Bind("Condition") %>' CssClass="dropdown-field">
                <asp:ListItem>Good</asp:ListItem>
                <asp:ListItem>Average</asp:ListItem>
                <asp:ListItem>Needs to repair</asp:ListItem>
            </asp:DropDownList>
        </EditItemTemplate>
    </asp:TemplateField>

    
    <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />

   
    <asp:TemplateField HeaderText="Actions">
        <ItemTemplate>
            <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit"
                Text="Edit" CssClass="btn-action btn-edit"></asp:LinkButton>
            <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete"
                Text="Delete"
                OnClientClick="return confirm('Are you sure you want to delete this record?');"
                CssClass="btn-action btn-delete"></asp:LinkButton>
        </ItemTemplate>
        <EditItemTemplate>
            <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Update"
                Text="Update" CssClass="btn-action btn-update"></asp:LinkButton>
            <asp:LinkButton ID="btnCancel" runat="server" CommandName="Cancel"
                Text="Cancel" CssClass="btn-action btn-cancel"></asp:LinkButton>
        </EditItemTemplate>
    </asp:TemplateField>
</Columns>

                </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gym_hubConnectionString %>" DeleteCommand="DELETE FROM [addequipment] WHERE [id] = @id" InsertCommand="INSERT INTO [addequipment] ([Name], [Type], [Brand], [Quantity], [PurchaseDate], [Condition], [Notes]) VALUES (@Name, @Type, @Brand, @Quantity, @PurchaseDate, @Condition, @Notes)" SelectCommand="SELECT * FROM [addequipment]" UpdateCommand="UPDATE [addequipment] SET [Name] = @Name, [Type] = @Type, [Brand] = @Brand, [Quantity] = @Quantity, [PurchaseDate] = @PurchaseDate, [Condition] = @Condition, [Notes] = @Notes WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Brand" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter DbType="Date" Name="PurchaseDate" />
            <asp:Parameter Name="Condition" Type="String" />
            <asp:Parameter Name="Notes" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Brand" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter DbType="Date" Name="PurchaseDate" />
            <asp:Parameter Name="Condition" Type="String" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
             <asp:Button ID="btnView" runat="server" CssClass="btn btn-view" Text="Load Equipments" />
 <asp:Button ID="btnBack" runat="server" CssClass="btn btn-back" Text="Back to Dashboard"
     PostBackUrl="~/mainmenu.aspx" CausesValidation="False" />
        </div>
    
</asp:Content>
