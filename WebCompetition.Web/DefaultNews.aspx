<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DefaultNews.aspx.cs" Inherits="_Default" %>

<%-- 在此处添加内容控件 --%>
<asp:Content ID="DefaultNews" ContentPlaceHolderID="DefaultNews" runat="Server">
        <ContentTemplate>
        <asp:GridView Width="1500px" ID="GridViewNews" runat="server" AutoGenerateColumns="False"
                AllowPaging="True" PageSize="10" DataKeyNames="nid" >
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table border="1" style="border-collapse: collapse" class="auto-style1">
                                <tr>
                                    <asp:Label ID="LabelTitle" runat="server" Text='<%# Bind("ntitle") %>'></asp:Label>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:HyperLinkField DataNavigateUrlFields="nid" DataNavigateUrlFormatString="~/NewsDetail.aspx?nid={0}" HeaderText="" Text="查看" />
                </Columns>
               
            </asp:GridView>
            <asp:LinqDataSource  ID="LinqNewDate"   runat="server"></asp:LinqDataSource>
        </ContentTemplate>
</asp:Content>