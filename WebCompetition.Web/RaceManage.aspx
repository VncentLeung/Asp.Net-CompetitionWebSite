<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="RaceManage.aspx.cs" Inherits="RaceManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="RaceManage" Runat="Server">
     <ContentTemplate>
        <asp:GridView Width="1500px" ID="GridViewRace" runat="server" AutoGenerateColumns="False"
                AllowPaging="True" DataKeyNames="rid" DataSourceID="LinqRace" >
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table border="1" style="border-collapse: collapse" class="auto-style1">
                                <tr>
                                    <asp:Label ID="LabelTitle" runat="server" Text='<%# Bind("rname") %>'></asp:Label>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                 <%--这里改成管理，而非编辑和删除，简化一下--%>
                    <asp:HyperLinkField DataNavigateUrlFields="rid" DataNavigateUrlFormatString="~/RaceDetailManage.aspx?rid={0}" HeaderText="" Text="管理" />
                    <%-- <asp:HyperLinkField DataNavigateUrlFields="nid" DataNavigateUrlFormatString="~/DeleteRace.aspx?nid={0}" HeaderText="" Text="删除" />--%>
                </Columns>
               
            </asp:GridView>
            <asp:LinqDataSource  ID="LinqRace"   runat="server" ContextTypeName="WebCompetition.DAL.WebCompetitionDataContext" EntityTypeName="" TableName="race"></asp:LinqDataSource>
        </ContentTemplate>
</asp:Content>



