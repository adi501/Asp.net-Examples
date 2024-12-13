<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_State.aspx.cs" Inherits="Asp_net_EXP.View_State" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
   <center>
   Html Text box:<input id="Text1" type="text" /><br />
   Asp.net Text box:<asp:TextBox ID="txt_id" runat="server"></asp:TextBox><br />

   <asp:Button ID="btn_submit" runat="server" Text="Submit" />
   </center>
    </div>
    </form>
</body>
</html>
