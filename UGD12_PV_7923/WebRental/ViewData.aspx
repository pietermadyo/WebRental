<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewData.aspx.cs" Inherits="WebRental.ViewData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Beranda</asp:LinkButton>
&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Log Out</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="190px"></asp:TextBox>
        <br />
        </div>
        <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id_CD" DataSourceID="ObjectDataSource1" PageSize="5">
                <Columns>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="deleteButton" runat="server" CommandName="Delete" Text="Delete"
                OnClientClick="return confirm('Are you sure you want to delete this data?');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="id_CD" HeaderText="id_CD" InsertVisible="False" ReadOnly="True" SortExpression="id_CD" />
                    <asp:BoundField DataField="judul_CD" HeaderText="judul_CD" SortExpression="judul_CD" />
                    <asp:BoundField DataField="stok_CD" HeaderText="stok_CD" SortExpression="stok_CD" />
                    <asp:BoundField DataField="harga_sewa" HeaderText="harga_sewa" SortExpression="harga_sewa" />
                    <asp:BoundField DataField="tanggal_rilis_CD" HeaderText="tanggal_rilis_CD" SortExpression="tanggal_rilis_CD" />
                    <asp:BoundField DataField="id_kategori_CD" HeaderText="id_kategori_CD" SortExpression="id_kategori_CD" Visible="False" />
                    <asp:TemplateField HeaderText="nama_kategori" SortExpression="nama_kategori">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource2" DataTextField="nama_kategori" DataValueField="id_kategori" SelectedValue='<%# Bind("id_kategori_CD") %>'>
                            </asp:DropDownList>
                            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="WebRental.DS_RENTALTableAdapters.TBL_KATEGORITableAdapter" UpdateMethod="Update">
                                <DeleteParameters>
                                    <asp:Parameter Name="Original_id_kategori" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="nama_kategori" Type="String" />
                                    <asp:Parameter Name="deskripsi_kategori" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="nama_kategori" Type="String" />
                                    <asp:Parameter Name="deskripsi_kategori" Type="String" />
                                    <asp:Parameter Name="Original_id_kategori" Type="Int32" />
                                </UpdateParameters>
                            </asp:ObjectDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("nama_kategori") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </div>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="SearchQuery" TypeName="WebRental.DS_RENTALTableAdapters.TBL_CDTableAdapter" UpdateMethod="UpdateQuery" DeleteMethod="DeleteQuery">
            <DeleteParameters>
                <asp:Parameter Name="ORIGINAL_id_CD" Type="Int32" />
            </DeleteParameters>
            <SelectParameters>
                <asp:FormParameter ConvertEmptyStringToNull="False" DefaultValue=" " FormField="TextBox1" Name="keyword" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="judul_CD" Type="String" />
                <asp:Parameter Name="harga_sewa" Type="Double" />
                <asp:Parameter Name="stok_CD" Type="Int32" />
                <asp:Parameter Name="id_kategori_CD" Type="Int32" />
                <asp:Parameter Name="tanggal_rilis_CD" Type="String" />
                <asp:Parameter Name="ORIGINAL_id_CD" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    
    </form>
</body>
</html>
