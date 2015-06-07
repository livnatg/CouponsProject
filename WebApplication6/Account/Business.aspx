<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Business.aspx.cs" Inherits="WebApplication6.Account.Business" %>

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
                    <asp:Button runat="server" ID="new_business" Text="Add New Business" OnClick="new_business_Click" />
                </div>
                <hr />
                <div id="main_content" style="width: 1000px; height: auto; margin: auto; padding: 0px; background-color: #FFFFFF;">
                    <div id="menu_tab"></div>
                    <div class="center_content" style="width: 600px; float: left; padding: 5px 10px 5px 15px;">
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="business_name" DataSourceID="SqlDataSource1" RepeatColumns="4">
                            <ItemTemplate>
                                <div class="prod_box" style="margin:20px">
                                    <div class="center_prod_box" >
                                        <div class="product_title"><a href="#"><%# Eval("business_name") %></a></div>
                                        <%--<div class="product_img">
                                            <a href="#">
                                                <img src="images/coupon.png" style="height: 100px; width: 120px" alt="" border="0" /></a>
                                        </div>--%>
                                        <div class="prod_price">Description: <span class="price"><%# Eval("description") %></span></div>
                                        <div class="prod_price">Location: <span class="price"><%# Eval("city") %></span></div>
                                       
                                    </div>
                                    
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CouponsConnectionString %>" SelectCommand="SELECT business.business_name, business.description, locations.city FROM business INNER JOIN locations ON business.location_id = locations.ID"></asp:SqlDataSource>
                    </div>
                 </div>
                
            </div>
        </div>
    </div>

</asp:Content>
