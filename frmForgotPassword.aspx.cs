using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Script.Services;

public partial class frmForgotPassword : System.Web.UI.Page
{
    BusinessLayer BL = new BusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btnGetPwd_Click(object sender, EventArgs e)
    {
        try
        {
            lblResult.Visible = false;
            BE.Id = Convert.ToInt32(txtUname.Text);
            BE.Hint = ddlQtns.SelectedItem.Text;
            BE.Answer = txtAnswer.Text;
            InterfaceLayer IL = BL;
            string password = IL.RecoverPassWord();
            Page.RegisterClientScriptBlock("balu", "<script>alert('Your Password: " + password.ToUpper() + "')</script>");

        }
        catch (Exception ex)
        {
            lblResult.Visible = true;
            lblResult.Text = ex.Message;
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtUname.Text = "";
        txtAnswer.Text = "";
        ddlQtns.SelectedIndex = 0;
        txtUname.Focus();
    }
}
