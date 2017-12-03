using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class login : System.Web.UI.Page
{
    BusinessLayer BL=new BusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        string url = Request.Url.ToString();
        string[] split = url.Split('/');
        for (int i = 0; i < split.Length; i++)
        {
            if (split[i] == "User")
            {
                lblLogin.Text = "User Login";
                lblLogin.Visible = true;
                lnkForgot.Visible = false;
            }
            else if (split[i] == "Admin")
            {
                lblLogin.Text = "Admin Login";
                lblLogin.Visible = true;
                lnkForgot.Visible = false;
            }
            
        }
    }
    protected void LoginButton_Click1(object sender, EventArgs e)
    {
            string[] LoginId = null;            
            string str1 = "";
            try
            {
                if (txtLoginId.Text.Contains("/"))
                {
                    string str = txtLoginId.Text;
                    LoginId = str.Split('/');
                    BE.Id =Convert.ToInt32(LoginId[0].ToString());
                    BE.Password = LoginId[1].ToString();
                    str1 = LoginId[0].ToString();
                }
                else
                {
                    BE.Id =Convert.ToInt32(txtLoginId.Text.Trim());
                    BE.Password = txtPassWord.Text.Trim();
                    str1 = txtLoginId.Text.Trim();
                }

                int id, Flag;
                //string Name;
                if (FormsAuthentication.Authenticate(txtLoginId.Text,txtPassWord.Text))
                {
                    Session["UserName"] = "admin";
                    Session["UserId"] = Convert.ToInt32(txtLoginId.Text);
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
                            Session["UserId"] = Convert.ToInt32(txtLoginId.Text);
                            Session.Timeout = 60;
                            BE.Id =Convert.ToInt32(txtLoginId.Text);
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
                ErrHandler.WriteError(ex.Message,"Error");
                lblMsg.Text = ex.Message;
                lblMsg.Visible = true;
            }

        }
    protected void lnkForgot_Click(object sender, EventArgs e)
    {

    }
}