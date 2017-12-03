<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmDecryptPassword.aspx.cs" Inherits="frmDecryptPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <br />
     <br />
     <br />
<center>
<table  style="border:#627AAD;background-color:#E4E8F1;" cellpadding="0" cellspacing="0">
<tr style="background-color:#627AAD">
<td colspan="3" style=" height:10%; color:White; font-weight:bold; font-size:larger" align="center">
    Decrypt Password</td>
</tr>
<tr>
<td align="right"><strong>Enter Id&nbsp;</strong></td>
    <td ><asp:TextBox ID="txtUserName" runat ="server" ></asp:TextBox></td>
    <td style="width: 44px" ><asp:RequiredFieldValidator ID="RFVUserName" ForeColor="Red" runat ="server" ControlToValidate="txtUserName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td align="right"><strong>Enter Password&nbsp;</strong></td>
    <td ><asp:TextBox ID="txtPassword" runat ="server" ></asp:TextBox></td>
    <td style="width: 44px" ><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat ="server" ControlToValidate="txtPassword" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td></td>
        <td align="right">
        <asp:Button ID="btnSubmit" runat ="server" CausesValidation="true" Text="Submit" 
        
        Width="61px" onclick="btnSubmit_Click" />&nbsp;&nbsp;
    <asp:Button ID="btnClear" runat ="server" Text="Clear" CausesValidation="false" 
         Width="61px" OnClick="btnClear_Click"/>
        </td>
        <td style="width: 44px"></td>
</tr>
<tr>
<td colspan="3">
    <asp:Label ID="lblMsg" runat ="server" Visible ="false" 
        style="font-family: Verdana; font-weight: 700;" ></asp:Label></td>
</tr>
</table>
    <br />
    <br />
    <br />
</center>
</asp:Content>

