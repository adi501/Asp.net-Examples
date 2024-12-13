<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REG_form.aspx.cs" Inherits="Asp_net_EXP.REG_form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center">
            <tr>
                <td colspan="3" align="center" class="auto-style1">
                    <strong style="background-color: Yellow; color: Blue; text-align: center; font-style: oblique">
                        Real-Time GridView CRUD Using Stored Procedure In Asp.Net</strong>
                </td>
            </tr>
            <tr>
                <td>
                    First Name:
                </td>
                <td style="text-align: center">
                    <asp:TextBox runat="server" ID="txtFirstName"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Last Name:
                </td>
                <td style="text-align: center">
                    <asp:TextBox runat="server" ID="txtLastName"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Phone:
                </td>
                <td style="text-align: center">
                    <asp:TextBox runat="server" ID="txtPhoneNumber"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    Email:
                </td>
                <td style="text-align: center">
                    <asp:TextBox runat="server" ID="txtEmailAddress"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Salary:
                </td>
                <td style="text-align: center">
                    <asp:TextBox runat="server" ID="txtSalary"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <asp:Button runat="server" ID="btnAddEmployee" Text="Add" OnClick="btnAddEmployee_Click"
                        class="button button4" />
                    <asp:Button runat="server" ID="btnUpdate" Text="Update" class="button button4" OnClick="btnUpdate_Click" />
                    <asp:Button runat="server" ID="btnReset" Text="Reset" class="button button4" OnClick="btnReset_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <br />
                    <asp:Label runat="server" ID="lblMessage"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <asp:GridView ID="gv_emp" runat="server" AutoGenerateColumns="false" 
            onrowcommand="gv_emp_RowCommand">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="Phone" />
                <%--                <asp:BoundField DataField="EmailAddress" HeaderText="Email" />--%>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                  Email: <%# Eval("EmailAddress")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Salary" HeaderText="Salary" />
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="link_delete" runat="server" CommandName="edelete" CommandArgument='<%# Eval("Id") %>'
                            Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="link_edit" runat="server" CommandName="eedit" CommandArgument='<%# Eval("Id") %>'
                            Text="Edit"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
