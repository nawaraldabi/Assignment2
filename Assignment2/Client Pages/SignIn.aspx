<%@ Page Title="" Language="C#" MasterPageFile="~/Client Pages/myMasterPage.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Assignment2.Client_Pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form>
  <div class="mb-3 mx-3 mt-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3 mx-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
</form>
    <div class="d-grid">
  <button type="submit" class="btn btn-primary my-3 mx-3" ">Log In</button>
  <a class="btn btn-secondary my-3 mx-3" href="SignUp.aspx" role="button">Don't have an account? Sign up!</a>
</div>
</asp:Content>
