<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DefaultReviewPage.aspx.vb" Inherits="DefaultReviewPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="reviewPageForm" runat="server">
        <div>
            <asp:Label ID="userLabel" runat="server" Text="User: "></asp:Label>
        &nbsp;<asp:Label ID="usernameLabel" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Rating: "></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Comments:"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="There is a comment in this area!"></asp:Label>
        </div>
    </form>
</body>
</html>
