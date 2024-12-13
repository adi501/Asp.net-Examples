<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validations.aspx.cs" Inherits="Asp_net_EXP.Validations" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/mystyle.css" rel="stylesheet" type="text/css" />
    <%--<style type="text/css">
        .mytextbox
        {
            width:300px;
            height:30px;
            background-color:Aqua;
            border-color:Green;
           
        }
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    Name:
                </td>
                <td>
                    <asp:TextBox ID="txt_name" CssClass="mytextbox" 
                        runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="plz enter name"
                        ControlToValidate="txt_name" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Age:
                </td>
                <td>
                    <asp:TextBox ID="txt_age" CssClass="mytextbox" 
                        runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="plz enter Age"
                        ControlToValidate="txt_age" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="rvv1" runat="server" ErrorMessage="RangeValidator" ControlToValidate="txt_age"
                        MaximumValue="100" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    PWD:
                </td>
                <td>
                    <asp:TextBox ID="txt_pwd" CssClass="mytextbox" 
                        runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="plz enter PWD"
                        ControlToValidate="txt_pwd" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    C PWD:
                </td>
                <td>
                    <asp:TextBox ID="txt_C_pwd" CssClass="mytextbox" 
                        runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="plz enter C PWD"
                        ControlToValidate="txt_C_pwd" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="cv1" runat="server" ErrorMessage="CompareValidator" ControlToValidate="txt_pwd"
                        ValueToCompare="txt_C_pwd"></asp:CompareValidator>
                    <p>
                </td>
            </tr>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    <asp:TextBox ID="txt_email" CssClass="mytextbox" 
                        runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="plz enter C PWD"
                        ControlToValidate="txt_email" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"
                        ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <p>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btn_submit" runat="server" Text="Submit" ValidationGroup="valid1" />
                </td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="valid1" />
        <br />
        <br />
        <br />
        <asp:TextBox ID="txt_user_Id" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="UserCustomValidate"
            ControlToValidate="txt_user_Id" ErrorMessage="User ID should have atleast a capital, small and digit and should be greater than 5 and less
than 26 letters" SetFocusOnError="True"></asp:CustomValidator>
    </div>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    </form>
</body>
</html>
