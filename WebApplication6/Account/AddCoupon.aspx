<%@ Page Title="Add Coupon" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCoupon.aspx.cs" Inherits="WebApplication6.Account.AddCoupon" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <script src="../Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
        <script src="../Scripts/general.js" type="text/javascript"></script>
    <h2><%: Title %>.</h2>

    <div class="form-horizontal">
        <h4> Add a new Coupon</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="coupon_name" CssClass="col-md-2 control-label">Web Name:</asp:Label>
            <div class="col-md-10" style="margin-bottom:10px">
                <asp:TextBox runat="server" ID="coupon_name" CssClass="form-control"  />
            </div>
            <br />
        </div>
        <div class="form-group">
            <asp:Label ID="Label1" AssociatedControlID="cities" runat="server" CssClass="col-md-2 control-label">City:</asp:Label>
            <div class="col-md-10" style="margin-bottom:10px">
                <asp:DropDownList ID="cities" runat="server" DataSourceID="SqlDataSource1" DataTextField="city" DataValueField="ID" Height="31px" Width="199px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CouponsConnectionString %>" SelectCommand="SELECT [ID], [city] FROM [locations]"></asp:SqlDataSource>
            </div>
            <br />
        </div>
         <div class="form-group">
            <asp:Label ID="Label2" runat="server" AssociatedControlID="categories" CssClass="col-md-2 control-label">Category:</asp:Label>
            <div class="col-md-10" style="margin-bottom:10px">
                <asp:DropDownList ID="categories" runat="server" DataSourceID="SqlDataSource2" DataTextField="category_name" DataValueField="id" Height="31px" Width="199px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CouponsConnectionString %>" SelectCommand="SELECT [id], [category_name] FROM [categories]"></asp:SqlDataSource>
            </div>
            <br />
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" name="add" OnClick="Unnamed_Click"
                    Text="Add" CssClass="btn btn-default" Width="199px" />
            </div>
        </div>
    </div>
</asp:Content>
