<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmForgotPassword.aspx.cs" Inherits="frmForgotPassword" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 99%;
            height: 252px;
        }
        .style8
        {            height: 47px;
        }
        .style12
        {
            color: #006600;
            font-weight: bold;
            font-size: large;
        }
        .style13
        {
            height: 104px;
        width: 372px;
    }
        .style16
        {
            height: 232px;
        }
        .style18
        {
            height: 100px;
        width: 372px;
    }
        .style20
        {
            width: 139px;
            height: 18px;
        }
        .style23
        {
            width: 139px;
            font-size: large;
            font-weight: bold;
            color: #666666;
            height: 26px;
        }
        .style25
        {
            height: 26px;
        }
        .style28
        {
            width: 139px;
            height: 23px;
        }
        .style29
        {
            height: 23px;
        }
        .style34
        {
            width: 139px;
            font-size: large;
            font-weight: bold;
            color: #666666;
            height: 27px;
        }
        .style35
        {
            height: 27px;
        }
        .style36
        {
            width: 139px;
            font-size: large;
            font-weight: bold;
            color: #666666;
            height: 23px;
        }
        .style38
        {
            height: 18px;
        }
        .style39
        {
            height: 36px;
        }
        .style40
        {
            color: #999999;
            font-weight: bold;
            font-size: large;
        }
    .style41
    {
            height: 23px;
            width: 60px;
        }
    .style42
    {
        height: 18px;
        width: 60px;
    }
    .style43
    {
        height: 27px;
        width: 60px;
    }
    .style44
    {
        height: 26px;
        width: 60px;
    }
    .style45
    {
        height: 36px;
        width: 60px;
    }
    .style46
    {
        height: 47px;
        width: 60px;
    }
    .style47
    {
        height: 36px;
        width: 139px;
    }
        .auto-style1 {
            width: 113px;
            height: 23px;
        }
        .auto-style2 {
            width: 113px;
            height: 18px;
        }
        .auto-style3 {
            width: 113px;
            font-size: large;
            font-weight: bold;
            color: #666666;
            height: 23px;
        }
        .auto-style4 {
            width: 113px;
            font-size: large;
            font-weight: bold;
            color: #666666;
            height: 27px;
        }
        .auto-style5 {
            width: 113px;
            font-size: large;
            font-weight: bold;
            color: #666666;
            height: 26px;
        }
        .auto-style6 {
            height: 36px;
            width: 113px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style5">
        <tr bgcolor="#EFDE68">
            <td width="50%" class="style40" >
                Welcome</td><td align="right">
                                    <asp:LinkButton ID="lnkBack" runat="server" Font-Bold="True" 
                                        ForeColor="#999999" PostBackUrl="~/Login.aspx" style="font-size: large" 
                                        ValidationGroup="back">Back</asp:LinkButton>
                                </td>
        </tr>
        <tr>
            <td width="50%" class="style16" >
                <table class="style5">
                    <tr>
                        <td class="style18">
                            <h2>
                                Forgot your password?</h2>
                            <p>
                                To reset your password, type the full User Name you use to sign in to your <span class="style12"></span> 
                                If you are a <span class="style12">,</span>type your <span class="style12"></span>&nbsp;username.</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="background-image:url('Images/bgForgotpwd.jpg'); background-repeat:no-repeat;" 
                                                class="style13">
                                                </td>
                                        </tr>
                                        
                                    </table>
                </td>
            <td bgcolor="Black" 
                style="background-image:url('Images/ForgotPwd.JPG'); background-position:center; background-repeat:no-repeat;" 
                class="style16" width="50%">
                <table class="style5">
                <tr>
                        <td class="style41">
                            </td>
                        <td align="center" class="auto-style1">
                            </td>
                        <td class="style29">
                            </td>
                    </tr>
                    <tr>
                        <td class="style42">
                            </td>
                        <td align="center" class="auto-style2">
                            </td>
                        <td class="style38">
                            </td>
                    </tr>
                    <tr>
                        <td class="style41">
                            </td>
                        <td align="center" class="auto-style3">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UserName</td>
                        <td class="style29">
                            <asp:TextBox ID="txtUname" runat="server" Width="135px" Height="20px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtUname" ErrorMessage="Required" 
                                style="font-size: small; font-weight: 700"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style43">
                            </td>
                        <td align="center" class="auto-style4">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            HintQuestion</td>
                        <td class="style35">
                            <asp:DropDownList ID="ddlQtns" runat="server" Height="16px" Width="137px">
                            <asp:ListItem>Choose a Question?</asp:ListItem>
                            <asp:ListItem>What is your first name?</asp:ListItem>
                            <asp:ListItem>what is your first phone number?</asp:ListItem>
                            <asp:ListItem>Favourate sports?</asp:ListItem>
                            <asp:ListItem>Favourate cricketer?</asp:ListItem>
                            <asp:ListItem>First crush?</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="ddlQtns" ErrorMessage="Required" 
                                style="font-size: small; font-weight: 700"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style44">
                            </td>
                        <td align="center" class="auto-style5">
                            &nbsp;&nbsp;&nbsp; Answer</td>
                        <td class="style25">
                            <asp:TextBox ID="txtAnswer" runat="server" Width="135px" Height="18px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtAnswer" ErrorMessage="Required" 
                                style="font-size: small; font-weight: 700"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style45">
                            </td>
                        <td align="center" class="auto-style6" ></td><td class="style39">
&nbsp;<asp:Button ID="btnGetPwd" runat="server" BackColor="#0053B0" 
                                BorderStyle="None" Font-Bold="True" Font-Size="Small" ForeColor="White" 
                                Height="28px" Text="Get Password" Width="117px" 
                            onclick="btnGetPwd_Click" />
                            <asp:Button ID="btnCancel" runat="server" BackColor="#0053B0" 
                                BorderStyle="None" Font-Bold="True" Font-Size="Small" ForeColor="White" 
                                Height="28px" Text="Cancel" Width="74px" ValidationGroup="c" 
                            onclick="btnCancel_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style46">
                            </td>
                        <td align="left" class="style8" colspan="2">
                            <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="Red"></asp:Label>
                        </td>
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


<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>

 <style type="text/css">
        .style9
        {
            font-family: Verdana;
        }
    </style>
<center>
<h3 style="text-decoration: underline" class="style9">Forgot Password</h3>
<center>&nbsp;</center>
<asp:Panel ID="pnl" runat="server" Width="383px" Height="185px">
<center>&nbsp;</center>
<center>&nbsp;</center>
<table>
<tr>
<td align="left" class="style9">UserId</td><td align="left"><asp:TextBox ID="txtUserName" runat ="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RFVUserName" runat ="server" ControlToValidate="txtUserName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td align="left" class="style9">Hint Question</td><td align="left">
                        <asp:DropDownList ID="ddlHintQuestion" runat="server" Height="17px" 
                            Width="127px">
                          <asp:ListItem>Select a Question</asp:ListItem>
                <asp:ListItem>What is your pet's name?</asp:ListItem>
                <asp:ListItem>What was the name of your first school?</asp:ListItem>
                <asp:ListItem>What is your fathers middle name?</asp:ListItem>
                <asp:ListItem>What is your all-time favorite sports team?</asp:ListItem>
                <asp:ListItem>Who was your childhood hero?</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="ddlHintQuestion"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
</tr>
<tr>
<td align="left" class="style9">Answer</td><td align="left"><asp:TextBox ID="txtAnswer" runat ="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server" ControlToValidate="txtAnswer" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td></td><td></td>
</tr>
<tr>
<td colspan="2"><asp:Button ID="btnSubmit" runat ="server" Text="Get Password" 
        onclick="btnSubmit_Click" 
        OnClientClick="return confirm('are you sure Hint Answer is Correct!')" />
    <asp:Button ID="btnClear" runat ="server" Text="Clear" CausesValidation="false" 
        onclick="btnClear_Click" /></td>
</tr>
<tr>
<td colspan="2"><asp:Label ID="lblMsg" runat ="server" Visible ="false" 
        style="font-family: Verdana" ></asp:Label></td>
</tr>
</table>
<center>&nbsp;</center>
</asp:Panel>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</center>
<cc1:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" 
        BorderColor="Black" Radius="15" Corners="All" TargetControlID="pnl">
    </cc1:RoundedCornersExtender>
</asp:Content>--%>

