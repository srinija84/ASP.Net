<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true"
    CodeFile="frmRegistration.aspx.cs" Inherits="frmRegistration" %>

<%@ Register Assembly="eWorld.UI" Namespace="eWorld.UI" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManagerProxy ID="ScriptManager1" runat="server">
    </asp:ScriptManagerProxy>
    <table  align="center">
        <tr>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                 <asp:UpdatePanel ID="up" runat="server">
        <Triggers>
            <%--<asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />--%>
            <asp:PostBackTrigger ControlID="btnSubmit" />
        </Triggers>
        <ContentTemplate>
            <center>
            <table align="center" style="border:#627AAD;background-color:#E4E8F1; height: 534px; width: 309px;" cellpadding="0" cellspacing="0">
                <caption >
                    <p style="color: #FF0000; font-size: large;">Registration
                        &nbsp;</p>
                </caption>               
              
                    
                <tr>                   
                    <td class="auto-style2">Name:
                        <td class="auto-style6">
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" 
                    ControlToValidate="txtName" ErrorMessage="only char" ForeColor="Red"  
                    ValidationExpression="[a-zA-Z ]*"></asp:RegularExpressionValidator>
                </tr>

                <tr>
                    <td class="auto-style2">Place:<td class="auto-style6">
                        <asp:TextBox ID="txtPlace" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPlace" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <%--<td>Account Type:<td>
                        <asp:DropDownList ID="ddlOption" runat="server" Height="16px" Width="171px">
                            <asp:ListItem>Provider Service</asp:ListItem>
                            <asp:ListItem>Service Consumer</asp:ListItem>
                            <asp:ListItem>Both</asp:ListItem>
                        </asp:DropDownList>
                    </td>--%>
                </tr>
                <tr>
                    <td class="auto-style2">Date of birth:<td class="auto-style6">
                        <asp:TextBox ID="txtBirth" runat="server"></asp:TextBox>
                        </font>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" Format="MM/dd/yyyy"
                                PopupButtonID="Img5" TargetControlID="txtBirth" />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBirth" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <td class="auto-style2">Gender:
                        <td class="auto-style6">
                            <asp:RadioButtonList ID="rblGender" runat="server" Height="16px" RepeatDirection="Horizontal"
                                Width="204px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                            <tr>
                                <td class="auto-style2">Address :
                                    <td class="auto-style6">
                                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </tr>
                            <tr>
                                <td class="auto-style2">Pin:
                                    <td class="auto-style6">
                                        <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPin" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </tr>
                            <tr>
                                <td class="auto-style2">City:
                                    <td class="auto-style6">
                                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCity" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </tr>
                            <tr>
                                <td class="auto-style2">State:
                                    <td class="auto-style6">
                                        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtState" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </tr>
                            <tr>
                                <td class="auto-style2">Email:
                                    <td class="auto-style6">
                                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </tr>
                            <tr>
                                <td class="auto-style2">Phone Number:
                                    <td class="auto-style6">
                                        <font>
                                            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPhone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </tr>
                            <tr>
                                <td class="auto-style2">Designation:
                                    <td class="auto-style6">
                                        <asp:TextBox ID="txtDesignation" runat="server"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtDesignation" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </tr>
                            <tr>
                                <td class="auto-style2">Security question:
                                    <td class="auto-style6">
                                        <asp:DropDownList ID="ddlHint" runat="server" Height="17px" Width="182px">
                                            <asp:ListItem>Select a Question</asp:ListItem>
                                            <asp:ListItem>What is your pet's name?</asp:ListItem>
                                            <asp:ListItem>What was the name of your first school?</asp:ListItem>
                                            <asp:ListItem>What is your fathers middle name?</asp:ListItem>
                                            <asp:ListItem>What is your all-time favorite sports team?</asp:ListItem>
                                            <asp:ListItem>Who was your childhood hero?</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Your answer:
                                </td>
                                <td align="left" class="auto-style6">
                                    &nbsp;&nbsp;
                                    <asp:TextBox ID="txtAnswer" runat="server" style="margin-bottom: 0px"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtAnswer" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <div id="message">
                                    </div>
                                </td>
                            </tr>
            </table>
                
            <center>
                <asp:Button ID="btnSubmit" Text="Save" runat="server" OnClick="btnSubmit_Click" style="height: 26px" />
                   </center>
        </ContentTemplate>
     
    </asp:UpdatePanel>
            </td>
        </tr>
    </table>
   
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            width: 106px;
        }
        .auto-style5 {
            width: 241px;
        }
        .auto-style6 {
            width: 217px;
        }
    </style>
</asp:Content>

