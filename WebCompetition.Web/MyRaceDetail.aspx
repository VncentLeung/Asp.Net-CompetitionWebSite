<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyRaceDetail.aspx.cs" Inherits="MyRaceDetail" %>


<asp:Content ID="Content4" ContentPlaceHolderID="MyRaceDetail" Runat="Server">
          <asp:DetailsView ID="DetailsView1" runat="server" Height="50px"  AutoGenerateRows="False"    DataKeyNames="rid"  
Width="1000px" DataSourceID="LinqDataSource1">
                      <Fields>
             
                          <asp:BoundField DataField="rname" HeaderText="竞赛名" SortExpression="rstartdate"/>
                          <asp:BoundField DataField="ryear" HeaderText="竞赛年度" SortExpression="ryear" />
                          <asp:BoundField DataField="rstartdate" HeaderText="开始时间" SortExpression="rstartdate" />
                          <asp:BoundField DataField="renddate" HeaderText="结束时间" SortExpression="renddate" />
                          <asp:BoundField DataField="rcontent" HeaderText="竞赛内容" SortExpression="rcontent" />
                          <asp:BoundField DataField="rrequire" HeaderText="竞赛要求" SortExpression="rrequire" />
                          <asp:CheckBoxField DataField="rsubmit" HeaderText="附件提交" SortExpression="rsubmit" />
                       

              </Fields>
 
       
    </asp:DetailsView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebCompetition.DAL.WebCompetitionDataContext"  EntityTypeName="" TableName="race"  EnableDelete="True" EnableInsert="True" EnableUpdate="True"  >
     
    </asp:LinqDataSource>
    <asp:FileUpload  ID="FileUpload1"  runat="server" />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
 
</asp:Content>


