<%@ Page Title="Business Coupons" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BusinessCoupons.aspx.cs" Inherits="WebApplication6.Account.BusinessCoupons" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
     <script src="../Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
        <script src="../Scripts/general.js" type="text/javascript"></script>
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            
        </asp:PlaceHolder>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4><asp:label runat="server" ID="business_user"  />, Manage your businesses 

                </h4>
                <div style="text-align:right;">
                    <asp:Button runat="server" ID="new_coupon" Text="Add New Coupon" OnClick="new_businessCoupon_Click" />
                </div>
                <hr />
                <div class="center_content" style="width: 600px; float: left; padding: 5px 10px 5px 15px;">
                <asp:DataList ID="productList" runat="server" RepeatColumns="4" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <div class="prod_box">
                            <div class="center_prod_box">
                                <div class="product_title"><a href="#"><%# Eval("coupon_name") %></a></div>
                                <div class="product_img">
                                    <a href="#">
                                        <img src="../images/coupon.png" style="height: 100px; width: 120px" alt="" border="0" /></a>
                                </div>
                                <div class="prod_price">Category: <span class="price"><%# Eval("category_name") %></span></div>
                                <div class="prod_price">Original Price: <span class="price"><%# Eval("original_price") %>&#8362;</span></div>
                                <div class="prod_price">After Discount: <span class="price"><%# Eval("discount_price") %>&#8362;</span></div>
                                <div class="prod_price">Business: <span class="price"><%# Eval("rate") %></span></div>
                            </div>
                            <div class="prod_details_tab">
                                
                                <a href="#" class="prod_details">Details </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CouponsConnectionString %>"
                    SelectCommand="SELECT coupons.coupon_name, categories.category_name, coupons.original_price, coupons.discount_price, coupons.business_name, locations.city, coupons.last_date, coupons.rate FROM categories INNER JOIN coupons ON categories.id = coupons.category_id INNER JOIN locations ON coupons.location_id = locations.ID and coupons.aproved=1"></asp:SqlDataSource>
            </div>

       </div>
            </div>
    </div>

</asp:Content>
