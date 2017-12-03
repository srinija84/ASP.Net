using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Drawing;
using System.Web.Mail;
using System.Web.Script.Services;
using System.Configuration;
using System.IO;

using System.Net;
using System.Net.Mail;

public partial class frmRequestPassword : System.Web.UI.Page
{
    Email em = new Email();

    BusinessLayer BL = new BusinessLayer();
    string Result1 = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //public void SendEmailNew(string to, string ky)
    //{
    //    message = "<hr><br>" + "" + ky + "  </b><br><br>";
    //    //to = emailid;
    //    NetworkCredential loginInfo = new NetworkCredential(gMailAccount, password);
    //    MailMessage msg = new MailMessage();
    //    msg.From = new MailAddress(gMailAccount);
    //    msg.To.Add(new MailAddress(to));
    //    msg.Subject = subject;
    //    msg.Body = message;
    //    msg.IsBodyHtml = true;

    //    try
    //    {

    //        SmtpClient client = new SmtpClient("smtp.gmail.com");
    //        client.EnableSsl = true;
    //        client.UseDefaultCredentials = false;
    //        client.Credentials = loginInfo;
    //        client.Send(msg);
    //    }
    //    catch (Exception ex)
    //    {

    //        Console.WriteLine(ex);

    //    }
    //}


    protected void Page_Init(object sender, EventArgs e)
    {
        this.PreRender += new EventHandler(AddressType_PreRender);

    }
    protected void AddressType_PreRender(object sender, EventArgs e)
    {
        ClientScriptManager cs = Page.ClientScript;
        StringBuilder sbClientIDs = new StringBuilder();
        sbClientIDs.AppendLine("<script language=JavaScript>");
        sbClientIDs.AppendLine("var  btnShowPopup = '" + btnShowPopup.ClientID + "';");
        sbClientIDs.AppendLine("var  pnlpopup = '" + pnlpopup.ClientID + "';");
        sbClientIDs.AppendLine("var  btnCancel = '" + btnClear.ClientID + "';");
        sbClientIDs.AppendLine("</script>");
        cs.RegisterStartupScript(typeof(Page), "CIDS", sbClientIDs.ToString());
    }

    protected void lnkAccountSettings_Click1(object sender, EventArgs e)
    {
        this.ModalPopupExtender1.Show();
    }


    //private void sendemail(string to, string subject, string body)
    //{
    //    string sender = ConfigurationManager.AppSettings["EmailFromAddress"];
    //    try
    //    {
    //        var MailHelper = new MailHelper
    //        {
    //            Sender = sender,
    //            Recipient = to,
    //            RecipientCC = null,
    //            Subject = subject,
    //            Body = body,
    //        };
    //        MailHelper.Send();
    //    }
    //    catch (Exception)
    //    {

    //        throw;
    //    }
    //}
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string strPassWord = string.Empty;
            string[] GenerateList = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };
            Random r = new Random();
            for (int i = 0; i < 6; i++)
            {
                int j;
                j = r.Next(GenerateList.Length);
                strPassWord += GenerateList[j];
            }
            BE.Id = Convert.ToInt32(txtUserName.Text);
            BE.Password = CryptUtil1.Encrypt(Convert.ToString(strPassWord.Trim()));
            InterfaceLayer IL = BL;
            int Result = IL.GetPassWord();

            if (Result == 1)
            {
                //SendMails();
                BE.Email = IL.GetMailId();
                //em.SendEmail(BE.Email, BE.Password.ToString());
                //sendemail(BE.Email, "Password", "Your Password Info is: " + BE.Password.ToString() + "");
                //sendemail(Properties.EmailId, "Password", "Your Password Info is: " + password.ToString() + "");


                Result1 = "Your Password is"+BE.Password.ToString();
                //Result1 = "Your Password Info is " + CryptUtil1.Encrypt(Convert.ToString(strPassWord.Trim())).ToString();
                Page.RegisterClientScriptBlock("balu", "<script>alert('" + Result1 + "')</script>");
                txtUserName.Text = string.Empty;
                lblMsg.Text = string.Empty;
            }
            else
            {
                Result1 = "Already your password has been displayed";
                Page.RegisterClientScriptBlock("Balu", "<script>alert('" + Result1 + "')</script>");
                txtUserName.Text = string.Empty;
                lblMsg.Text = string.Empty;
            }
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message.ToString();
            lblMsg.ForeColor = Color.Red;
        }
    }

    //void SendMails()
    //{
    //    MailMessage objMail = new MailMessage();
    //    objMail.From = "PublishSearchLogs.Com";
    //    objMail.To = "LocalHost";
    //    objMail.Subject = "send pasword";
    //    objMail.Body = "Your Password Encrypt Is :'" + BE.Password + "'";
    //    SmtpMail.SmtpServer = "LocalHost";
    //    SmtpMail.Send(objMail);

    //}
}