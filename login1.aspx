<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;</center>
<center>&nbsp;&nbsp;</center>
<center>&nbsp;</center>
<%--#B9A3B7
#ADB9CD--%>
    <table border="0" cellpadding="0" cellspacing="0" align="center">
<tr>
<td height="20" width="230" bgcolor="#627AAD"><font face="verdana,arial" size=2><b>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Label ID="lblLogin" runat="server" Text="lblLogin" Visible="false" 
            CssClass="style5" style="color: #FFFFFF"></asp:Label></b></font></td>
 <td >&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

</tr>

<tr><%--#ADB9CD--%>
<td colspan=4 bgcolor="#E4E8F1"><font face="verdana,arial" size=2> <br>
<table border="0" cellspacing="0" cellpadding="0">
  
		<table border="0" cellpadding=2 cellspacing=0 height="0" ID="Table2" 
        style="width: 100%">
		<tr>
		<td align=right style="width: 41%"><b><font face="Verdana" SIZE=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Id</font></b></td>
		<td width='60%' align=left><font face="Verdana" SIZE=2>
            <b>
        <asp:TextBox ID="txtLoginId"    runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtLoginId" ErrorMessage="*"></asp:RequiredFieldValidator>
            </b>
		</td>
<tr>
		<td align=right style="width: 41%"><b><font face="Verdana" SIZE=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</font></b></td>
		<td width='60%' align=left><b><font face="Verdana" SIZE=2>
		<asp:TextBox  ID="txtPassWord" runat="server" TextMode="Password"></asp:TextBox> </td>
		</tr>
		
		<tr>
		<td style="width: 41%">&nbsp;</td>

		<td>&nbsp;</td>
		</tr>
		<tr>
		<td width='40%' align=right colspan=2><b><font face="Verdana" size=1>  <asp:Button ID="LoginButton" runat="server" Text="Login" ForeColor="Black" 
            onclick="LoginButton_Click1" Width="61px" />&nbsp;&nbsp;  <asp:Button ID="btnReset" 
                runat="server" Text="Reset" ForeColor="Black" Width="61px" 
                CausesValidation="False" /></font>&nbsp;</td>
            <tr>
            <td colspan="2">
            <center>
             <asp:LinkButton ID="lnkForgot" ForeColor="Black" PostBackUrl="~/frmForgotPassword.aspx" runat="server" OnClick="lnkForgot_Click"><b><font face="Verdana,arial" SIZE=2>Forgot 
                Username or Password?</font></b></asp:LinkButton></center>
            </td>
            </tr>
		</table>
        </div>
      </td>
      </table> <center><asp:Label ID="lblMsg" Visible="false" runat="server" Text="lblMsg" ForeColor="Red" ></asp:Label>
        <br />
        <br />
    </center> 


</asp:Content>

