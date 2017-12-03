using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using DAL;
using System.Web.Script.Services;

public partial class frmRegistration : System.Web.UI.Page
{
    string Emailid = string.Empty;
    string Result = string.Empty;
    int Result1 = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        
    }

    public static string RandomNumber()
    {
        Random num = new Random();
        return num.Next(99999).ToString();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        Emailid = txtEmail.Text;
        SqlParameter[] p1 = new SqlParameter[1];
        p1[0] = new SqlParameter(SpVariables.Email.ToString(), txtEmail.Text);
        DataSet ds = DataAccessLayer.ExecuteDataSet(StoredProcedure.Sp_GetEmailId.ToString(), p1);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Result1 = 1;
        }

        if (Result1 != 0)
        {
            Result = "Emailid Already Existing";
            Page.RegisterClientScriptBlock("balu", "<script>alert('" + Result + "')</script>");           
        }
        else
        {
            string Id = RandomNumber().ToString();
            
            SqlParameter[] p = new SqlParameter[16];
            p[0] = new SqlParameter(SpVariables.Name.ToString(), txtName.Text);
            p[1] = new SqlParameter(SpVariables.Id.ToString(), Convert.ToInt32(Id));
            p[2] = new SqlParameter(SpVariables.Place.ToString(), txtPlace.Text);
            p[3] = new SqlParameter(SpVariables.Option.ToString(), "Provider Service");
            p[4] = new SqlParameter(SpVariables.Date.ToString(), Convert.ToDateTime(txtBirth.Text));
            p[5] = new SqlParameter(SpVariables.Gender.ToString(), rblGender.SelectedItem.Text);
            p[6] = new SqlParameter(SpVariables.Address.ToString(), txtAddress.Text);
            p[7] = new SqlParameter(SpVariables.Pin.ToString(), txtPin.Text);
            p[8] = new SqlParameter(SpVariables.City.ToString(), txtCity.Text);
            p[9] = new SqlParameter(SpVariables.State.ToString(), txtState.Text);
            p[10] = new SqlParameter(SpVariables.Email.ToString(), txtEmail.Text);
            p[11] = new SqlParameter(SpVariables.Phone.ToString(), txtPhone.Text);
            p[12] = new SqlParameter(SpVariables.Designation.ToString(), txtDesignation.Text);
            p[13] = new SqlParameter(SpVariables.Hint.ToString(), ddlHint.SelectedItem.Text);
            p[14] = new SqlParameter(SpVariables.Answer.ToString(), txtAnswer.Text);
            p[15] = new SqlParameter(SpVariables.Message.ToString(), SqlDbType.VarChar, 500);
            p[15].Direction = ParameterDirection.Output;
            int i = DataAccessLayer.ExecuteNonQuery(StoredProcedure.Sp_Registration.ToString(), p);
            if (i > 0)
            {
                Result = p[15].Value.ToString();
                Page.RegisterClientScriptBlock("balu", "<script>alert('" + Result + "')</script>");
                //ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "UniqueScript", "<script>alert('" + Result + "')</script>", true);

            }
            else
            {
                Result = p[15].Value.ToString();
                Page.RegisterClientScriptBlock("balu", "<script>alert('" + Result + "')</script>");
                //ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "UniqueScript", "<script>alert('" + Result + "')</script>", true);

            }

        }
    }
}