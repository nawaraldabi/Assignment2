<%@ Page Title="" Language="C#" MasterPageFile="~/Client Pages/myMasterPage.Master" AutoEventWireup="true" CodeBehind="AccountInfo.aspx.cs" Inherits="Assignment2.Client_Pages.AccountInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form>
    <div class="mb-3 mx-3 mt-3">
    <label for="exampleInputEmail1" class="form-label">Full Name</label>
    <asp:TextBox ID="fullNameInput" class="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="mb-3 mx-3 mt-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <asp:TextBox ID="emailInput" class="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="mb-3 mx-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
     <asp:TextBox ID="passwordInput" class="form-control" runat="server"></asp:TextBox>
  </div>
</form>
    <div class="d-grid">
    <button type="button" class="btn btn-primary my-3 mx-3" onserverclick="update" runat="server">Update</button>
    <button type="button" class="btn btn-primary my-3 mx-3" onserverclick="delete" runat="server">Delete</button>
    <button type="button" class="btn btn-primary my-3 mx-3" onserverclick="signOut" runat="server">Sign Out</button>
    </div>
</asp:Content>
