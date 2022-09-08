<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RaceDetail.aspx.cs" Inherits="RaceDetailspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="RaceDetail" Runat="Server">
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
                          <asp:BoundField DataField="ryear" HeaderText="ryear" SortExpression="ryear" />
                          <asp:BoundField DataField="rstartdate" HeaderText="rstartdate" SortExpression="rstartdate" />
                          <asp:BoundField DataField="renddate" HeaderText="renddate" SortExpression="renddate" />
                          <asp:BoundField DataField="rcontent" HeaderText="rcontent" SortExpression="rcontent" />
                          <asp:BoundField DataField="rrequire" HeaderText="rrequire" SortExpression="rrequire" />
                          <asp:CheckBoxField DataField="rsubmit" HeaderText="rsubmit" SortExpression="rsubmit" />
                 

              </Fields>
 <%--       <asp:Button ID="btnDelete" runat="server" CausesValidation="False"   CommandName="Delete"  Text="删除 " OnClientClick="return confirm(' 确定要更新该学⽣信息吗？ ');" /> --%>
       
    </asp:DetailsView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebCompetition.DAL.WebCompetitionDataContext"  EntityTypeName="" TableName="race"  EnableDelete="True" EnableInsert="True" EnableUpdate="True"  Where="rid == @rid" OnSelecting="LinqDataSource1_Selecting">
         <WhereParameters>
        <asp:Parameter DefaultValue="1" Name="rid" Type="Int32" />
    </WhereParameters>
    </asp:LinqDataSource>
</asp:Content>


