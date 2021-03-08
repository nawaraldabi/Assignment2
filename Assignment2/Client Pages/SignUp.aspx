<%@ Page Title="" Language="C#" MasterPageFile="~/Client Pages/myMasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Assignment2.Client_Pages.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form>
        <div class="mb-3 mx-3 mt-3">
    <label for="exampleInputEmail1" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="fullNameInput" aria-describedby="emailHelp" name="fullNameInput">
  </div>
  <div class="mb-3 mx-3 mt-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="emailInput" aria-describedby="emailHelp" name="emailInput">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3 mx-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
          <input type="password" class="form-control" id="passwordInput" name="passwordInput">
  </div>
</form>
    <div class="d-grid">
  <button class="btn btn-primary my-3 mx-3" id="signUpButton" aria-dropeffect="none" onserverclick="signUp" runat="server">Sign Up</button>
  <a class="btn btn-secondary my-3 mx-3" href="SignIn.aspx" role="button">Already have an account? Sign In!</a>
</div>
</asp:Content>
