<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="d_eleteP_age.aspx.cs" Inherits="WEbApplication1.d_eleteP_age" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <asp:TextBox ID="deleteID" runat="server" Text="連番NO"></asp:TextBox>
            <asp:Button runat="server"  OnClick="delete" Text="削除"/>
        </div>
    </form>
</body>
</html>
