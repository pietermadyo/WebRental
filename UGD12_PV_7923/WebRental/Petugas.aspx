<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Petugas.aspx.cs" Inherits="WebRental.Petugas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Beranda</asp:LinkButton>
        <br />
        <br />
    
    </div>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Log Out</asp:LinkButton>
    </form>
    <p>
        Selamat datang Petugas</p>
</body>
</html>
