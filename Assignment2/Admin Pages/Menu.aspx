<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Pages/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Assignment2.Admin_Pages.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="Admin Scripts/Admin Log In.js"></script>
    <style type="text/css">
        .auto-style1 {
            border-collapse: collapse;
            height: 250px;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style4 {
            width: 128px;
        }
        .auto-style5 {
            width: 412px;
        }
        .auto-style6 {
            height: 42px;
        }
        .auto-style7 {
            margin-left: 179;
        }
        .auto-style8 {
            width: 128px;
            height: 38px;
        }
        .auto-style9 {
            width: 412px;
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p align="center">Add or Modify Menu</p>
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style4">Item Id</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtName" runat="server" CssClass="auto-style7"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Description</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Price</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Image Url</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtImage" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style6" align="center">
                <asp:Button ID="btnAdd" runat="server" Text="Add New Item" OnClick="btnAdd_Click" />
&nbsp;<asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
&nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
            </td>
        </tr>
    </table>
    <br />
    <p align="center">Currently on the Menu</p>
    <p align="center">
        <asp:Button ID="btnViewMenu" runat="server" OnClick="btnViewMenu_Click" Text="View Menu Items" />
    </p>
    <p align="center">
        &nbsp;</p>
    <p align="center">&nbsp;</p>
&nbsp;
</asp:Content>
