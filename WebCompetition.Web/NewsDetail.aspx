<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsDetail.aspx.cs" Inherits="NewsDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NewsDetail" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="236px" AutoGenerateRows="False" DataKeyNames="nid" DataSourceID="LinqDataSource1" >
        <Fields>
            <asp:BoundField DataField="ntitle" HeaderText="新闻标题" SortExpression="ntitle" />
             <asp:BoundField DataField="ncontent" HeaderText="新闻内容" SortExpression="ncontent" />
            <asp:BoundField DataField="ntime" HeaderText="发布时间" SortExpression="ntime" />
            <asp:BoundField DataField="nid" HeaderText="nid" Visible="false" InsertVisible="False" ReadOnly="True" SortExpression="nid" />
        </Fields>
    </asp:DetailsView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebCompetition.DAL.WebCompetitionDataContext" EntityTypeName="" TableName="news"></asp:LinqDataSource>
</asp:Content>

