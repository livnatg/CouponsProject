<%@ Page Title="Add Coupon Business" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCouponBusiness.aspx.cs" Inherits="WebApplication6.Account.AddCouponBusiness" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <script src="../Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
        <script src="../Scripts/general.js" type="text/javascript"></script>
    <h2><%: Title %>.</h2>

    <div class="form-horizontal">
        <h4><asp:label runat="server" ID="business_user"  /> , Add a new Coupon</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="coupon_name" CssClass="col-md-2 control-label">Coupon Name:</asp:Label>
            <div class="col-md-10" style="margin-bottom:10px">
                <asp:TextBox runat="server" ID="coupon_name" CssClass="form-control"  />
            </div>
            <br />
             <asp:Label runat="server" AssociatedControlID="orig_price" CssClass="col-md-2 control-label">Original Price:</asp:Label>
            <div class="col-md-10" style="margin-bottom:10px">
                <asp:TextBox runat="server" ID="orig_price" CssClass="form-control"  />
                
            </div>
            <br />
            <asp:Label runat="server" AssociatedControlID="disc_price" CssClass="col-md-2 control-label">Discount Price:</asp:Label>
            <div class="col-md-10" style="margin-bottom:10px">
                <asp:TextBox runat="server" ID="disc_price" CssClass="form-control"  />
               
            </div>
            <br />
            <asp:Label runat="server" AssociatedControlID="last_date" CssClass="col-md-2 control-label">Last Date:</asp:Label>
            <div class="col-md-10" style="margin-bottom:10px">
                <asp:TextBox runat="server" ID="last_date" CssClass="form-control" TextMode="Date" Height="30px" Width="200px"  />
               
            </div>
            
            <asp:Label runat="server"  CssClass="col-md-2 control-label"><b>Business:</b></asp:Label>
            <div class="col-md-10" style="margin-bottom:10px">
                <asp:DropDownList ID="business_name_list" runat="server" DataSourceID="SqlDataSource2" AutoPostBack="true" ViewStateMode="Enabled" EnableViewState="true"  DataTextField="business_name" DataValueField="business_name" Height="21px" Width="199px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CouponsConnectionString %>" SelectCommand="SELECT business_name FROM business WHERE (business_user = @Param1)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="business_user" Name="Param1" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <br />
            <asp:Label runat="server"  CssClass="col-md-2 control-label"><b>Category:</b></asp:Label>
            <div class="col-md-10" style="margin-bottom:10px">
                <asp:DropDownList ID="category" runat="server" DataSourceID="SqlDataSource3" DataTextField="category_name" DataValueField="id" Height="21px" Width="199px"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CouponsConnectionString %>" SelectCommand="SELECT category_name, id FROM categories">
                </asp:SqlDataSource>
            </div>
            <br />
           
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" name="add" OnClick="Unnamed_Click"
                    Text="Add" CssClass="btn btn-default" Height="32px" Width="203px" />
            </div>
        </div>
    </div>
</asp:Content>
