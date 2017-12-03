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
using System.Web.Security;

public partial class frmLogin : System.Web.UI.Page
{
    BusinessLayer BL = new BusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Session["count"] = 0;
        }
    }


    protected void lnkForGot_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/frmForgotPassword.aspx");
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string[] LoginId = null;
        string str1 = "";
        try
        {
            if (txtUname.Text.Contains("/"))
            {
                string str = txtUname.Text;
                LoginId = str.Split('/');
                BE.Id = Convert.ToInt32(LoginId[0].ToString());
                BE.Password = LoginId[1].ToString();
                str1 = LoginId[0].ToString();
            }
            else
            {
                BE.Id = Convert.ToInt32(txtUname.Text.Trim());
                BE.Password = txtPassword.Text.Trim();
                str1 = txtUname.Text.Trim();
            }

            int id, Flag;
            //string Name;
            if (FormsAuthentication.Authenticate(txtUname.Text, txtPassword.Text))
            {
                Session["UserName"] = "admin";
                Session["UserId"] = Convert.ToInt32(txtUname.Text);
                Session.Timeout = 60;
                FormsAuthentication.RedirectFromLoginPage("Admin", false);
            }
            else
            {
                InterfaceLayer IL = BL;
                string UserName = IL.GetUserLogin(out Flag);
                if (Flag == 1)
                {
                    if (UserName == "NoUser")
                    {
                        lblMsg.Text = "User Name and PassWord Mismatch....Try again.";
                        lblMsg.Visible = true;
                    }
                    else
                    {
                        Session["UserName"] = UserName;
                        Session["UserId"] = Convert.ToInt32(txtUname.Text);
                        Session.Timeout = 60;
                        BE.Id = Convert.ToInt32(txtUname.Text);
                        BE.LogInDate = System.DateTime.Now.Date;
                        BE.LogInTime = System.DateTime.Now.ToShortTimeString();
                        IL.InsertUserLogInHistory();
                        FormsAuthentication.RedirectFromLoginPage("User", false);
                    }
                }
                else if (Flag == 2)
                {
                    lblMsg.Text = "UserName and Password also wrong";
                }
                else if (Flag == 3)
                {
                    lblMsg.Text = "Password is Wrong";
                }
                else if (Flag == 4)
                {
                    lblMsg.Text = "User Name Wrong";
                }
            }



        }
        catch (Exception ex)
        {
            ErrHandler.WriteError(ex.Message, "Error");
            lblMsg.Text = ex.Message;
            lblMsg.Visible = true;
        }

    }
}