<%@ Page Title="" Language="C#" MasterPageFile="~/SitePublic.Master" AutoEventWireup="true" CodeBehind="PublicBrowseInstruments.aspx.cs" Inherits="InstrumentRental.PublicBrowseInstruments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article class="article100">
        <asp:GridView ID="GV_Instruments" runat="server" AutoGenerateColumns="False" CssClass="dvFull" DataKeyNames="Instrument_ID" DataSourceID="SDS_Instruments">
            <Columns>
                <asp:ImageField DataImageUrlField="Instrument_Photo" HeaderText="Photo" DataImageUrlFormatString="images/instruments/{0}" ControlStyle-CssClass="img50">
                </asp:ImageField>
                <asp:BoundField DataField="Instrument_Type" HeaderText="Instrument_Type" SortExpression="Instrument_Type" />
                <asp:BoundField DataField="Instrument_Description" HeaderText="Instrument_Description" SortExpression="Instrument_Description" />
                <asp:BoundField DataField="Instrument_Price" HeaderText="Instrument_Price" SortExpression="Instrument_Price" />
            </Columns>
        </asp:GridView>
    </article>
    <asp:SqlDataSource ID="SDS_Instruments" runat="server" ConnectionString="<%$ ConnectionStrings:BandRentalDB %>" ProviderName="<%$ ConnectionStrings:BandRentalDB.ProviderName %>" SelectCommand="SELECT [Instrument_ID], [Instrument_Type], [Instrument_Description], [Instrument_Price], [Instrument_Photo], [Instrument_Available] FROM [Instruments] WHERE ([Instrument_Available] = ?)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="Instrument_Available" Type="Int16" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
