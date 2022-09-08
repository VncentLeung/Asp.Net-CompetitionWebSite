<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="NewsDetailManage.aspx.cs" Inherits="NewsDetailManage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="NewsDetailManage" Runat="Server">
           <asp:DetailsView ID="DetailsView1" runat="server" Height="50px"  AutoGenerateRows="False"    DataKeyNames="nid"  OnItemDeleted="Dv_ItemDeleted" OnItemInserted="Dv_ItemInserted" 
Width="1000px" DataSourceID="LinqDataSource1">
                      <Fields>
                <%--<asp:BoundField  DataField="rid" HeaderText="rid" ReadOnly="True" SortExpression="rid" />--%>
             <%--   <asp:BoundField DataField="rname" HeaderText="竞赛名" />--%>
                <%--<asp:BoundField DataField="rname" HeaderText="rname" SortExpression="rname" />--%>
              <%--  <asp:BoundField DataField="UnitCost" HeaderText="UnitCost" />
                <asp:BoundField DataField="SuppId" HeaderText="SuppId" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Descn" HeaderText="Descn" />
                <asp:BoundField DataField="Image" HeaderText="Image" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" />--%>
                          <asp:BoundField DataField="ntitle" HeaderText="新闻标题" SortExpression="ntitle"/>
                          <asp:BoundField DataField="ncontent" HeaderText="新闻内容" SortExpression="ncontent" />
                          <asp:BoundField DataField="ntime" HeaderText="发布时间" SortExpression="ntime" />
                          
                           <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  ShowInsertButton="True"   DeleteText="<span id='del' onclick='javascript:return confirm('你确实要删除这条新闻吗？')'>删除</span>"  />

              </Fields>
 
       
    </asp:DetailsView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebCompetition.DAL.WebCompetitionDataContext"  EntityTypeName="" TableName="news"  EnableDelete="True" EnableInsert="True" EnableUpdate="True"  >
    </asp:LinqDataSource>
</asp:Content>

