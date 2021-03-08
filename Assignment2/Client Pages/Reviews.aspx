<%@ Page Title="" Language="C#" MasterPageFile="~/Client Pages/myMasterPage.Master" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="Assignment2.Client_Pages.Reviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="m-3">
  <label for="exampleFormControlInput1" class="form-label">Full Name</label>
  <input type="text" class="form-control" id="fullNameInput" placeholder="john Miller" name="fullNameInput">
</div>
<div class="m-3">
  <label for="exampleFormControlTextarea1" class="form-label">Review</label>
  <textarea class="form-control" id="commentInput" rows="3" name="commentInput"></textarea>
</div>
    <div class="d-grid">
  <button class="btn btn-primary my-3 mx-3" type="button" onserverclick="submitReview" runat="server">Submit</button>
  <button class="btn btn-secondary my-3 mx-3" type="button" onserverclick="download" runat="server">Download Newsletter</button>
        <br />
        <br />
</div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1176px" style=" margin:0 auto;">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
</asp:Content>
