<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Query_String_Page1.aspx.cs"
    Inherits="Asp_net_EXP.Query_String_Page1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:HyperLink ID="hyl_page2" runat="server" Text="page2" NavigateUrl="~/Query_String_Page2.aspx"></asp:HyperLink>
    <asp:LinkButton ID="link_page2" runat="server" Text="page2" 
            onclick="link_page2_Click" ></asp:LinkButton>

        <table>
            <tr>
                <td>
                    Enter Msg1
                </td>
                <td>
                    :<asp:TextBox ID="txx_msg1" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    Enter Msg 2
                </td>
                <td>
                    :<asp:TextBox ID="txx_msg2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btn_submit" runat="server" Text="Send MSG" 
                        onclick="btn_submit_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
