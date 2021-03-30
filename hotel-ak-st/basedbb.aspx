<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="basedbb.aspx.cs" Inherits="hotel_ak_st.basedbb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idinscription" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="idinscription" HeaderText="idinscription" ReadOnly="True" SortExpression="idinscription" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="adresse" HeaderText="adresse" SortExpression="adresse" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:new-dbConnectionString %>" DeleteCommand="DELETE FROM [inscription] WHERE [idinscription] = @idinscription" InsertCommand="INSERT INTO [inscription] ([idinscription], [date], [adresse], [email]) VALUES (@idinscription, @date, @adresse, @email)" SelectCommand="SELECT * FROM [inscription]" UpdateCommand="UPDATE [inscription] SET [date] = @date, [adresse] = @adresse, [email] = @email WHERE [idinscription] = @idinscription">
                <DeleteParameters>
                    <asp:Parameter Name="idinscription" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="idinscription" Type="Decimal" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="adresse" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="adresse" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="idinscription" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
