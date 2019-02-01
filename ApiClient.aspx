<%@ Page Async="true" Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ApiClient.aspx.vb" Inherits="ApiClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!--Get All Products-->
    <asp:Button ID="btnAllProducts" runat="server" Text="Get All Products" />
    <asp:GridView ID="gvAllProducts" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID">
        <Columns>
           
            <asp:BoundField DataField="ProductID" HeaderText="ID" 
                SortExpression="ProductID"/>
            <asp:BoundField DataField="ProductName" HeaderText="Product" 
                SortExpression="ProductName"/>
            <asp:BoundField DataField="ProductDescription" HeaderText="Description" 
                ReadOnly="True" SortExpression="ProductDescription"/>
            <asp:BoundField DataField="Price" DataFormatString="{0:c}" 
                HeaderText="Price" HtmlEncode="False" 
                SortExpression="Price"/>
            <asp:BoundField DataField="Rating" HeaderText="Rating" ReadOnly="True" SortExpression="Rating" />
            <asp:TemplateField HeaderText="Wishlist" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:CheckBox ID="ProductSelector" runat="server" />
                </ItemTemplate>
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:TemplateField>

            <asp:TemplateField HeaderText ="Reviews">
                    <ItemTemplate>

                        <!-- BUTTON CONTROL TO OPEN WINDOW  -->
                            <!-- NOTE: WRITE THE onclick EVENT IN A SINGLE LINE. -->
                        <input type="button" 
                            class="btInGrid" value="View Reviews"
                            onclick='javascript:window.open("https://localhost:44339/DefaultReviewPage.aspx")' />

                    </ItemTemplate>
                </asp:TemplateField>

            
        </Columns>

    </asp:GridView>

    <br />
    <asp:Button ID="CheckAll" runat="Server" Text="Check All" />
    <asp:Button ID="UncheckAll" runat="Server" Text="Uncheck All" />
    <br />
    <asp:Button ID="btnAddToWishlist" runat="server" Text="Add Selected Items to Wishlist" />
    <br />
    <asp:Label ID="AddedToWishlist" runat="server" EnableViewState="False" Visible="False"></asp:Label>
    <br />

    <!--Get All Products by ID-->
    <label>Get Product ID:</label>
    <input type="text" id="tbProductID" runat="server" />
    <asp:Button ID="btnProductID" runat="server" Text="Get Product by ID" />
    <asp:GridView ID="gvProductID" runat="server" ></asp:GridView>
    <br />
    <br />

    <!--Input for Add and Update Product-->
    <label for="tbProductNo">ProductNo:</label>
    <input id="tbProductNo" type="text" runat="server" />
    <br />

    <label for="tbProductName">ProductName:</label>
    <input id="tbProductName" type="text" runat="server" />
    <br />

    <label for="tbProductDescription">ProductDescription:</label>
    <input id="tbProductDescription" type="text" runat="server" />
    <br />

    <label for="tbPrice">Price:</label>
    <input id="tbPrice" type="text" runat="server" />
    <br />

    <label for="tbSubCategoryID">SubCategoryID:</label>
    <input id="tbSubcategoryID" type="text" runat="server" />
    <br />

    <label for="tbFeatured">Featured:</label>
    <input id="tbFeatured" type="text" runat="server" />
    <br />

    <label for="tbMainCategoryID">MainCategoryID:</label>
    <input id="tbMainCategoryID" type="text" runat="server" />
    <br />
    <br />

    <!--Create Product-->
    <asp:Button ID="btnCreateProduct" runat="server" Text="Add New Product" />
    <br />
    <br />

    <!--Update Product by ID-->
    <label for="tbUpdateProductID" >Update Product ID:</label>
    <input type="text" id="tbUpdateProductID" runat="server" />
    <asp:Button ID="btnUpdateProduct"  runat="server" Text="Update Existing Product"/>
    <br />
    <br />

    <!--Delete Product by ID-->
    <label>Delete Product ID</label>
    <input type="text" id="tbDeleteProductID" runat="server" />
    <asp:Button ID="btnDeleteProductID" runat="server" Text="Delete Product by ID" />
    <br />
    <br />

    <!--Get All Cart Info-->
    <asp:Button ID="btnAllCarts" runat="server" Text="Get All Cart Info" />
    <asp:GridView ID="gvAllCarts" runat="server"></asp:GridView>
    <br />
    <br />

    <!--Delete Cart Line-->
    <label>Delete Cart Row (id):</label>
    <input type="text" id="tbDeleteCartLineID" runat="server" />
    <asp:Button ID="btnDeleteCartLineID" runat="server" Text="Delete Cart Line By ID" />
    <br />
    <br />

    <!--Get Cart by CartID-->
    <label>Get Entire Cart (CartID):</label>
    <input type="text" id="tbGetCartID" runat="server" />
    <asp:Button ID="btnCartByID" runat="server" Text="Get Cart by CartID" />
    <asp:GridView ID="gvCartByID" runat="server"></asp:GridView>
    <br />
    <br />

    <!--Get Current Cart using Current Browser Cookie-->
    <asp:Button ID="btnCurrentCart" runat="server" Text="Get Current Cart" />
    <asp:GridView ID="gvCurrentCart" runat="server"></asp:GridView>
    <br />
    <br />
    
    <!--Change Cart Qty-->
    <label>Cart Line to Update (id):</label>
    <input type="text" id="tbUpdateQtyCartLineID" runat="server" />
    <label style="padding-left: 10px">New Quantity:</label>
    <input type="text" id="tbUpdateQtyAmt" runat="server" />
    <asp:Button ID="btnUpdateCartQty" runat="server" Text="Update Quantity" />
    <br />
    <br />

    <!--Import All Products-->
    <asp:button runat="server" id="btnImportAllProducts" text="Import All Products to Ecommerce DB" />
    <br />
    <br />

    <!--Import Product by ID-->
    <label>Product ID:</label>
    <input type="text" id="tbImportProductID" runat="server" />
    <asp:button runat="server" id="btnImportProductID" text="Import Product to Ecommerce DB" />
    <br />
    <br />

    <!--API Login Credentials-->
    <div id="loginDiv" runat="server" class="alignCenter">
        <label>Email:</label>
        <input type="text" id="tbEmail" runat="server" />
        <label>Password:</label>
        <input type="password" id="tbPassword" runat="server" />
        <asp:Button ID="btnApiLogin" runat="server" Text="Login" />     
    </div>

    <a href="Register.aspx">Register for API Access</a>
    <asp:Label ID="lblLoginResult" runat="server" Font-Bold="true" Text="" Visible="false" CssClass="alignCenter"></asp:Label>
    <asp:Button ID="btnApiLogout" runat="server" Text="Logout" Visible="false"/>

</asp:Content>

