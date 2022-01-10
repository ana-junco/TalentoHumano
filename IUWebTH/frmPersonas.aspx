<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPersonas.aspx.cs" Inherits="IUWebTH.frmPersonas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Listado de personas.</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Listado de persona<br />
        </div>
        <asp:GridView ID="GridViewPersonas" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:LinkButton ID="LinkRegistrar" runat="server" PostBackUrl="~/PersonaAgregar.aspx" ForeColor="#33CCFF" OnClick="LinkRegistrar_Click">Registrar Personas</asp:LinkButton>
    </form>
</body>
</html>
