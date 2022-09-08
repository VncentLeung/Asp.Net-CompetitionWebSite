<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyRace.aspx.cs" Inherits="MyRace" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MyRace" Runat="Server">
             <ContentTemplate>
        <asp:GridView  ID="GridViewMyRace" Width="1500px"   runat="server" AutoGenerateColumns="False"
                AllowPaging="True" PageSize="10" DataKeyNames="rid" >
                <Columns >
                    <asp:TemplateField HeaderText="竞赛名">
                        <ItemTemplate  >
                            <table border="1" style="border-collapse: collapse" class="auto-style1">
                                <tr>
                                    <asp:Label ID="LabelTitle" runat="server" Text='<%# Bind("rname") %>'></asp:Label>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="上传文件状态" DataField="estatus" />
                    <asp:BoundField HeaderText="评定奖项" DataField="eawards" />
                    <asp:HyperLinkField DataNavigateUrlFields="rid" DataNavigateUrlFormatString="~/MyRaceDetail.aspx?rid={0}" HeaderText="" Text="查看" />
                    
                </Columns>
               
            </asp:GridView>
      
        </ContentTemplate>
    
</asp:Content>

