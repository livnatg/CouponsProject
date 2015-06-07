<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication6._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Content/style.css" />

    <div id="main_container">
        <div id="header">
            <div class="jumbotron">
                <div id="CategoryMenu" style="text-align: center">
                    <asp:ListView ID="categoryList"
                        ItemType="WebApplication6.Models.Category"
                        runat="server"
                        SelectMethod="GetCategories">
                        <ItemTemplate>
                            <b style="font-size: large; font-style: normal"></b>
                            <asp:LinkButton runat="server" OnClick="link_Click" ID="link" Text="<%#:Item.categoryName%>">
                                <asp:Label ID="Label1" name="cat" runat="server"> <div class="center_title_bar">Favourite Albums</div></asp:Label>
                            </asp:LinkButton>
                        </ItemTemplate>
                        <ItemSeparatorTemplate>|  </ItemSeparatorTemplate>
                    </asp:ListView>
                    <br />

                    <asp:DropDownList ID="city" Style="font-size: small" runat="server" DataTextField="city" DataValueField="ID" Height="20px" Width="182px"></asp:DropDownList>
                    <asp:Button Style="font-size: small" ID="search" Text="Search Location" runat="server" OnClick="search_Click" />
                </div>
            </div>
        </div>
        <div id="main_content" style="width: 1000px; height: auto; margin: auto; padding: 0px; background-color: #FFFFFF;">
            <div id="menu_tab">
            </div>
            <!-- end of menu tab -->

            <div class="left_content" style="width: 180px; float: left; padding: 0 0 0 5px">
                .
            </div>
            <!-- end of left content -->
            <div class="center_content" style="width: 600px; float: left; padding: 5px 10px 5px 15px;">
                <asp:DataList ID="productList" runat="server" RepeatColumns="3" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="prod_box">
                            <div class="center_prod_box">
                                <div class="product_title"><a href="#"><%# Eval("coupon_name") %></a></div>
                                <div class="product_img">
                                    <a href="#">
                                        <img src="images/coupon.png" style="height: 100px; width: 120px" alt="" border="0" /></a>
                                </div>
                                <div class="prod_price">Category: <span class="price"><%# Eval("category_name") %></span></div>
                                <div class="prod_price">Original Price: <span class="price"><%# Eval("original_price") %>&#8362;</span></div>
                                <div class="prod_price">After Discount: <span class="price"><%# Eval("discount_price") %>&#8362;</span></div>
                                <div class="prod_price">Business: <span class="price"><%# Eval("business_name") %></span></div>
                            </div>
                            <div class="prod_details_tab">
                                <asp:LinkButton class="prod_buy" Text="Add to Cart" ID="add_cart" runat="server" />
                                <asp:LinkButton class="prod_buy" Text="Delete" style="display:none" ID="delete" runat="server" />
                                
                                <a href="#" class="prod_details">Details </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CouponsConnectionString %>"
                    SelectCommand="SELECT coupons.coupon_name, categories.category_name, coupons.original_price, coupons.discount_price, coupons.business_name, locations.city, coupons.last_date, coupons.rate FROM categories INNER JOIN coupons ON categories.id = coupons.category_id INNER JOIN locations ON coupons.location_id = locations.ID and coupons.aproved=1"></asp:SqlDataSource>
            </div>

        </div>
        <div class="right_content" style="width: 180px; float: left; padding: 0px;">
        </div>

    </div>

</asp:Content>
