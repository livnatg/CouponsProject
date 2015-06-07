<%@ Page Title="Add Business" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBusiness.aspx.cs" Inherits="WebApplication6.Account.AddBusiness" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <script src="../Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
        <script src="../Scripts/general.js" type="text/javascript"></script>
    <h2><%: Title %>.</h2>

    <div class="form-horizontal">
        <h4>Add a new Business</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="business_name" CssClass="col-md-2 control-label">Business Name:</asp:Label>
            <div class="col-md-10" style="margin-bottom:10px">
                <asp:TextBox runat="server" ID="business_name" CssClass="form-control"  />
            </div>
            <br />
             <asp:Label runat="server" AssociatedControlID="description" CssClass="col-md-2 control-label">Description:</asp:Label>
            <div class="col-md-10" style="margin-bottom:10px">
                <asp:TextBox runat="server" ID="description" CssClass="form-control"  />
                
            </div>
            <br />
            <asp:Label runat="server" AssociatedControlID="address" CssClass="col-md-2 control-label">Address:</asp:Label>
            <div class="col-md-10" style="margin-bottom:10px">
                <asp:TextBox runat="server" ID="address" CssClass="form-control"  />
               
            </div>
            <br />
            <asp:Label runat="server"  CssClass="col-md-2 control-label"><b>City:</b></asp:Label>
            <div class="col-md-10" style="margin-bottom:10px">
                <asp:DropDownList ID="cities" runat="server" DataSourceID="SqlDataSource1" DataTextField="city" DataValueField="ID" Height="23px" Width="199px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CouponsConnectionString %>" SelectCommand="SELECT ID, city FROM locations"></asp:SqlDataSource>
            </div>
            <br />
           
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" name="add" OnClick="add_business_Click"
                    Text="Add" CssClass="btn btn-default" Height="30px" Width="199px" />
            </div>
        </div>
    </div>
</asp:Content>
