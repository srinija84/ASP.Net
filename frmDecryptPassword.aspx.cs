using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

public partial class frmDecryptPassword : System.Web.UI.Page
{
    BusinessLayer BL = new BusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            BE.Id = Convert.ToInt32(txtUserName.Text);
            BE.Password = txtPassword.Text.Trim();
            InterfaceLayer IL = BL;
            DataSet dsDecrypt = IL.DecryptPassWord();

            if (dsDecrypt.Tables[0].Rows.Count>0)
            {
                lblMsg.Text = CryptUtil1.Decrypt(Convert.ToString(txtPassword.Text.Trim()));
                lblMsg.Visible = true;
                lblMsg.ForeColor = Color.Green;
            }
            else
            {
                lblMsg.Text = "Your Details Not Correctly...!";
                lblMsg.Visible = true;
                lblMsg.ForeColor = Color.Red;
            }
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message.ToString();
            lblMsg.ForeColor = Color.Red;
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtUserName.Text = txtPassword.Text = "";
    }
}