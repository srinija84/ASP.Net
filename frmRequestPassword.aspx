<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmRequestPassword.aspx.cs" Inherits="frmRequestPassword" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--  <script type="text/javascript">
    function PasswordSettings() {
        window.open("~/User/ChangePassword.htm", "ChangePassword", "width=310,height=160,status=no,resizable=no,top=330,left=660")
    }
</script>--%>
<style type="text/css">
        .style9
        {
            font-family: Verdana;
        }
    .style28
    {
        width: 190px;
        font-family: Verdana;
    }
    .modalBackground
{
background-color: Gray;
filter: alpha(opacity=80);
opacity: 0.8;
z-index: 10000;
}
    .style29
    {
        width: 166px;
        font-family: Verdana;
    }
    .style30
    {
        width: 166px;
    }
    </style>
    <center>
<table>
<tr>
<td align="center" class="style3" style="width: 321px">
    <br />
    <br />
    <br />
    <br />
    <asp:LinkButton ID="lnkAccountSettings" runat="server" CausesValidation="false" onclick="lnkAccountSettings_Click1" 
        >Get Password Request</asp:LinkButton>
    <br />
    <br />
    <br />
    <br />
</td>
</tr>
</table></center>
<%--<input  type="button" id="btnShowPopup" runat="server" style="display:none"/>--%>
<%--<asp:RoundedCornersExtender ID="RoundedCornersExtender4" runat="server" 
        Radius="20" Corners="All" TargetControlID="btnClear">
    </asp:RoundedCornersExtender>--%>
<asp:Button ID="btnShowPopup" runat="server" style="display:none" />
<asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlpopup"
CancelControlID="btnClear" BackgroundCssClass="modalBackground"><%-- style="display:none"--%>
</asp:ModalPopupExtender>
<asp:Panel ID="pnlpopup" runat="server" BackColor="White" Height="275px" Width="400px" style="display:none">
<center>
<table  width="100%" style="border:#627AAD;background-color:#E4E8F1;width:100%; height:100%" cellpadding="0" cellspacing="0">
<tr style="background-color:#627AAD">
<td colspan="3" style=" height:10%; color:White; font-weight:bold; font-size:larger" align="center">Password Request</td>
</tr>
<tr>
<td class="style28" align="right"><strong>Enter Id&nbsp;</strong></td>
    <td class="style29"><asp:TextBox ID="txtUserName" runat ="server" ></asp:TextBox></td>
    <td class="style9"><asp:RequiredFieldValidator ID="RFVUserName" ForeColor="Red" runat ="server" ControlToValidate="txtUserName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td></td>
        <td align="right" class="style30">
        <asp:Button ID="btnSubmit" runat ="server" CausesValidation="true" Text="Submit" 
        onclick="btnSubmit_Click" 
        Width="61px" />&nbsp;&nbsp;
    <asp:Button ID="btnClear" runat ="server" Text="Clear" CausesValidation="false" 
         Width="61px"/>
        </td>
        <td></td>
</tr>
<tr>
<td colspan="3">
    <asp:Label ID="lblMsg" runat ="server" Visible ="false" 
        style="font-family: Verdana; font-weight: 700;" ></asp:Label></td>
</tr>
</table>
</center>
</asp:Panel>
</asp:Content>

