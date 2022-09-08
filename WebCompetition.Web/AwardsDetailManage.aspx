<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AwardsDetailManage.aspx.cs" Inherits="AwardsDetailManage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="AwardsDetailManage" Runat="Server">
               <ContentTemplate>
        <asp:GridView Width="1500px" ID="GridViewNews" runat="server" AutoGenerateColumns="False"
                AllowPaging="True" DataKeyNames="rid" DataSourceID="LinqDataSource1" >
                <Columns>
                    <asp:BoundField HeaderText="竞赛名称" ReadOnly="true" DataField="rname" />
                    <asp:BoundField HeaderText="学号" ReadOnly="true" DataField="sid" />
                    <%--<asp:BoundField  HeaderText="提交状态"   ReadOnly="true" DataField="estatus" />--%>
                    <asp:BoundField HeaderText="提交文件" ReadOnly="true"  DataField="esubmitfile" />
                    <asp:BoundField  HeaderText="奖项"  DataField="eawards"/>
                    <asp:CommandField ShowEditButton="true"  EditText="评奖" HeaderText="评奖" />
                    
                </Columns>
               
            </asp:GridView>
            <asp:LinqDataSource  ID="LinqDataSource1"   runat="server" ContextTypeName="WebCompetition.DAL.WebCompetitionDataContext" EnableUpdate="True" EntityTypeName="" TableName="eroll"></asp:LinqDataSource>
        </ContentTemplate>
</asp:Content>

