<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Competition.aspx.cs" Inherits="Competition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Competition" Runat="Server">
            <ContentTemplate>
        <asp:GridView Width="1500px" ID="GridViewRace" runat="server" AutoGenerateColumns="False"
                AllowPaging="True" PageSize="10" DataKeyNames="rid" >
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
                    <asp:HyperLinkField DataNavigateUrlFields="rid" DataNavigateUrlFormatString="~/RaceDetail.aspx?rid={0}" HeaderText="" Text="查看" />
                    <asp:HyperLinkField DataNavigateUrlFields="rid" DataNavigateUrlFormatString="~/ErollRace.aspx?rid={0}" HeaderText="" Text="报名" />
                </Columns>
               
            </asp:GridView>
      
        </ContentTemplate>
</asp:Content>

