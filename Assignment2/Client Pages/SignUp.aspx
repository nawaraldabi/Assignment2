<%@ Page Title="" Language="C#" MasterPageFile="~/Client Pages/myMasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Assignment2.Client_Pages.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form>
        <div class="mb-3 mx-3 mt-3">
    <label for="exampleInputEmail1" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="fullNameInput" aria-describedby="emailHelp">
  </div>
  <div class="mb-3 mx-3 mt-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3 mx-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
          <input type="password" class="form-control" id="inputPassword">
      <label for="exampleInputPassword1" class="form-label">Confirm Password</label>
          <input type="password" class="form-control" id="confirmInputPassword">
  </div>
</form>
    <div class="d-grid">
  <button type="submit" class="btn btn-primary my-3 mx-3" >Sign Up</button>
  <a class="btn btn-secondary my-3 mx-3" href="SignIn.aspx" role="button">Already have an account? Sign In!</a>
</div>
</asp:Content>
