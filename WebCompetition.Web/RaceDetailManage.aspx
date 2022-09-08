<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="RaceDetailManage.aspx.cs" Inherits="RaceDetailManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="RaceDetailManage" Runat="Server">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px"  AutoGenerateRows="False"    DataKeyNames="rid"  OnItemDeleted="DvRace_ItemDeleted" OnItemInserted="DvRace_ItemInserted" 
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
                          <asp:BoundField DataField="rname" HeaderText="竞赛名" SortExpression="rstartdate"/>
                          <asp:BoundField DataField="ryear" HeaderText="竞赛年度" SortExpression="ryear" />
                          <asp:BoundField DataField="rstartdate" HeaderText="开始时间" SortExpression="rstartdate" />
                          <asp:BoundField DataField="renddate" HeaderText="结束时间" SortExpression="renddate" />
                          <asp:BoundField DataField="rcontent" HeaderText="竞赛内容" SortExpression="rcontent" />
                          <asp:BoundField DataField="rrequire" HeaderText="竞赛要求" SortExpression="rrequire" />
                          <asp:CheckBoxField DataField="rsubmit" HeaderText="附件提交" SortExpression="rsubmit" />
                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  ShowInsertButton="True"   DeleteText="<span id='del' onclick='javascript:return confirm('你确实要删除这条记录吗？')'>删除</span>"  />

              </Fields>
 
       
    </asp:DetailsView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebCompetition.DAL.WebCompetitionDataContext"  EntityTypeName="" TableName="race"  EnableDelete="True" EnableInsert="True" EnableUpdate="True"  >
      <%--   <WhereParameters>
        <asp:Parameter DefaultValue="1" Name="rid" Type="Int32" />
    </WhereParameters>--%>
    </asp:LinqDataSource>
</asp:Content>


