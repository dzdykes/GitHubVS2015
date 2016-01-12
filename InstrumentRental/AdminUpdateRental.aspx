<%@ Page Title="" Language="C#" MasterPageFile="~/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="AdminUpdateRental.aspx.cs" Inherits="InstrumentRental.AdminUpdateRental" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <article class="article100">
        <header class="adminArticleHeader">
            Update/Delete Rental
        </header>
        <table>
            <tr>
                <td>
                    Enter Rental ID:
                </td>
                <td>
                    <asp:TextBox ID="TB_RentalID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp
                </td>
            </tr>
            <tr>
                <td>
                    Rental ID:
                </td>
                <td>
                    <asp:Label ID="LabelRentalID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    User ID:
                </td>
                <td>
                    <asp:Label ID="LabelUserID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Total Cost:
                </td>
                <td>

                </td>
            </tr>
        </table>
    </article>
</asp:Content>
