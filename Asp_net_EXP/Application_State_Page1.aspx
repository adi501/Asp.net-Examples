<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Application_State_Page1.aspx.cs"
    Inherits="Asp_net_EXP.Application_State_Page1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btn_submit" runat="server" Text="Click" OnClick="btn_submit_Click" />
        <br />
        <asp:Label ID="lbl_count" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
