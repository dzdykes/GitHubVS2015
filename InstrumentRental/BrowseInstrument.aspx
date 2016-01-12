<%@ Page Title="" Language="C#" MasterPageFile="~/SitePublic.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="BrowseInstrument.aspx.cs" Inherits="InstrumentRental.BrowseInstrument" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article class="article50">
        <header class="publicArticleHeader">
            Choose an Instrument
        </header>
        <asp:GridView ID="GV_Instrument" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="gvFull" DataSourceID="SDS_InstrumentShort" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GV_SelectedIndexChanged" DataKeyNames="Instrument_ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Instrument_ID" HeaderText="ID" SortExpression="Instrument_ID" InsertVisible="False" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="Instrument_Type" HeaderText="Type" SortExpression="Instrument_Type" />
                <asp:BoundField DataField="Instrument_Price" HeaderText="Price" SortExpression="Instrument_Price" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    </article>
    <asp:Panel ID="PanelDetails" runat="server" Visible="false">
        <article class="article50">
            <header class="publicArticleHeader">
                Details
            </header>
            <table class="detailsTable" style="border-color:white">
                <tr>
                    <td class="detailsTableColorBox">
                        Type:
                    </td>
                    <td>
                        <asp:Label ID="LabelType" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="detailsTableColorBox">
                        Description:
                    </td>
                    <td>
                        <asp:Label ID="LabelDescription" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="detailsTableColorBox">
                        Price/Day:
                    </td>
                    <td>
                        <asp:Label ID="LabelPrice" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="detailsTableColorBox">
                        Photo:
                    </td>
                    <td>
                        <asp:Image ID="ImagePhoto" runat="server" CssClass="img50" />
                    </td>
                </tr>
                <tr>
                    <td class="detailsTableColorBox">
                        &nbsp
                    </td>
                    <td>
                        <asp:Button ID="ButtonRent" runat="server" Text="Rent Me" OnClick="ButtonRent_Click"/>
                    </td>
                </tr>
            </table>
        </article>
    </asp:Panel>
    <asp:SqlDataSource ID="SDS_InstrumentShort" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BandRentalDB %>" 
        ProviderName="<%$ ConnectionStrings:BandRentalDB.ProviderName %>" 
        SelectCommand="SELECT [Instrument_ID], [Instrument_Type], [Instrument_Price], [Instrument_Available] FROM [Instruments] WHERE ([Instrument_Available] = 1)">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SDS_InstrumentDetails" runat="server" ConnectionString="<%$ ConnectionStrings:BandRentalDB %>" ProviderName="<%$ ConnectionStrings:BandRentalDB.ProviderName %>" SelectCommand="SELECT [Instrument_ID], [Instrument_Type], [Instrument_Description], [Instrument_Price], [Instrument_Photo] FROM [Instruments] WHERE ([Instrument_ID] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GV_Instrument" Name="Instrument_ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
