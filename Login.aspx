<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="frmLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 296px;
        }
        .style6
        {
            width: 100%;
        }
        .style7
        {
            width: 69px;
        }
        .style8
        {
            font-size: large;
            font-weight: bold;
            width: 270px;
        }
        .style9
        {
            width: 270px;
        }
        .style10
        {
            font-size: large;
            font-weight: bold;
            width: 270px;
            color: #666666;
        }
        .style11
        {
            font-size: large;
            font-weight: bold;
            color: #666666;
        }
        .style13
        {
            height: 178px;
        }
        .auto-style1 {
            width: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td width="50%" bgcolor="#EFDF65" class="style11" colspan="2" 
                style="width: 100%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="50%" class="style5">
                <table class="style6">
                    <tr>
                        <td>
                            <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="background-image:url('Images/Bglogin1.jpg'); background-position:center; background-repeat:no-repeat;" 
                                                class="style13">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                </td>
            <td style="background-image:url('Images/LoginPage.JPG'); background-position:center; background-repeat:no-repeat;" align="center" bgcolor="#F3F3F3" width="50%">
                
                <table class="style6">
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="style9">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td align="left" class="style8">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td align="left" class="style10">
                            User ID:</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td align="left" class="style8">
                            <asp:TextBox ID="txtUname" runat="server" BorderStyle="None" Height="23px" 
                                Width="175px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtUname" ErrorMessage="Required" style="font-size: small"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td align="left" class="style10">
                            Password:</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td align="left" class="style9">
                            <asp:TextBox ID="txtPassword" runat="server" BorderStyle="None" Height="23px" 
                                Width="175px" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtPassword" ErrorMessage="Required" 
                                style="font-size: small; font-weight: 700"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td align="left" class="style9">
                            <asp:LinkButton ID="lnkForGot" runat="server" 
                                style="color: #0000FF; font-weight: 700" onclick="lnkForGot_Click" 
                                ValidationGroup="forgot">ForGot Your Password?</asp:LinkButton>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td align="left" class="style9">
                            <asp:CheckBox ID="chkRemember" runat="server" 
                                style="font-weight: 700; color: #666666" Text="Remember Me Next Time" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td align="left" class="style9">
                            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" 
                                Visible="False"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td align="right" class="style9">
                            <asp:Button ID="btnLogin" runat="server" BackColor="#0053B0" BorderStyle="None" 
                                Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Login" 
                                onclick="btnLogin_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td align="left" class="style9">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                
                </td>
        </tr>
        <tr>
            <td width="50%">
                &nbsp;</td>
            <td width="50%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

