<%@ Page Title="Aprove Coupons" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApproveCoupons.aspx.cs" Inherits="WebApplication6.ApproveCoupons" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <div class="form-horizontal">
         <br />

        <h4> Aprove Coupons</h4>
         
        <hr />
     </div>

    <div class="row">

        <asp:ListView ID="productList" runat="server"   DataSourceID="SqlDataSource1" DataKeyNames="ID">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="coupon_nameLabel" runat="server" Text='<%# Eval("coupon_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="category_nameLabel" runat="server" Text='<%# Eval("category_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="original_priceLabel" runat="server" Text='<%# Eval("original_price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="discount_priceLabel" runat="server" Text='<%# Eval("discount_price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="business_nameLabel" runat="server" Text='<%# Eval("business_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="last_dateLabel" runat="server" Text='<%# Eval("last_date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="rateLabel" runat="server" Text='<%# Eval("rate") %>' />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Aprove" CommandArgument='<%# Eval("ID") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="coupon_nameTextBox" runat="server" Text='<%# Bind("coupon_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="category_nameTextBox" runat="server" Text='<%# Bind("category_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="original_priceTextBox" runat="server" Text='<%# Bind("original_price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="discount_priceTextBox" runat="server" Text='<%# Bind("discount_price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="business_nameTextBox" runat="server" Text='<%# Bind("business_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="last_dateTextBox" runat="server" Text='<%# Bind("last_date") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="rateTextBox" runat="server" Text='<%# Bind("rate") %>' />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Aprove" CommandArgument='<%# Eval("ID") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="coupon_nameTextBox" runat="server" Text='<%# Bind("coupon_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="category_nameTextBox" runat="server" Text='<%# Bind("category_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="original_priceTextBox" runat="server" Text='<%# Bind("original_price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="discount_priceTextBox" runat="server" Text='<%# Bind("discount_price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="business_nameTextBox" runat="server" Text='<%# Bind("business_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="last_dateTextBox" runat="server" Text='<%# Bind("last_date") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="rateTextBox" runat="server" Text='<%# Bind("rate") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="coupon_nameLabel" runat="server" Text='<%# Eval("coupon_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="category_nameLabel" runat="server" Text='<%# Eval("category_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="original_priceLabel" runat="server" Text='<%# Eval("original_price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="discount_priceLabel" runat="server" Text='<%# Eval("discount_price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="business_nameLabel" runat="server" Text='<%# Eval("business_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="last_dateLabel" runat="server" Text='<%# Eval("last_date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="rateLabel" runat="server" Text='<%# Eval("rate") %>' />
                    </td>
                    <td>
                        
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Aprove" CommandArgument='<%# Eval("ID") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">coupon_name</th>
                                    <th runat="server">category_name</th>
                                    <th runat="server">original_price</th>
                                    <th runat="server">discount_price</th>
                                    <th runat="server">business_name</th>
                                    <th runat="server">city</th>
                                    <th runat="server">last_date</th>
                                    <th runat="server">rate</th>
                                    <th runat="server">ID</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="coupon_nameLabel" runat="server" Text='<%# Eval("coupon_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="category_nameLabel" runat="server" Text='<%# Eval("category_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="original_priceLabel" runat="server" Text='<%# Eval("original_price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="discount_priceLabel" runat="server" Text='<%# Eval("discount_price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="business_nameLabel" runat="server" Text='<%# Eval("business_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="last_dateLabel" runat="server" Text='<%# Eval("last_date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="rateLabel" runat="server" Text='<%# Eval("rate") %>' />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Aprove" CommandArgument='<%# Eval("ID") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
           
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CouponsConnectionString %>" 
            SelectCommand="SELECT coupons.coupon_name, categories.category_name, coupons.original_price, coupons.discount_price, coupons.business_name, locations.city, coupons.last_date, coupons.rate, coupons.ID FROM categories INNER JOIN coupons ON categories.id = coupons.category_id INNER JOIN locations ON coupons.location_id = locations.ID and coupons.aproved =0"></asp:SqlDataSource>
    </div>

</asp:Content>
