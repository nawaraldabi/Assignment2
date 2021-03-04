<%@ Page Title="" Language="C#" MasterPageFile="~/Client Pages/myMasterPage.Master" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="Assignment2.Client_Pages.Reviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="m-3">
  <label for="exampleFormControlInput1" class="form-label">Full Name</label>
  <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="john Miller">
</div>
<div class="m-3">
  <label for="exampleFormControlTextarea1" class="form-label">Review</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
</div>
    <div class="d-grid">
  <button class="btn btn-primary my-3 mx-3" type="button">Submit</button>
  <button class="btn btn-secondary my-3 mx-3" type="button">Download Newsletter</button>
</div>
</asp:Content>
