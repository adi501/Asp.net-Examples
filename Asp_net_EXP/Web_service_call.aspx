<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web_service_call.aspx.cs"
    Inherits="Asp_net_EXP.Web_service_call" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    1st Num:
                </td>
                <td>
                    <asp:TextBox ID="txt_num1" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    2nd Num:
                </td>
                <td>
                    <asp:TextBox ID="txt_num2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td>
            
            </td>
            <td>
            <asp:Button ID="btn_add" runat="server" Text="Add" onclick="btn_add_Click" />
            </td>
            </tr>
            <tr>
            <td>
            Result:
            </td>
            <td>
            <asp:Label ID="lbl_result" runat="server"></asp:Label>
            </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
