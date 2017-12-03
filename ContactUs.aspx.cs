using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string Batch = string.Empty, Class = string.Empty, Section = string.Empty, Student = string.Empty, Month = string.Empty, Year = string.Empty;
        ////Batch = ddlBatch.Items[ddlBatch.SelectedIndex].Value;
        ////Class = ddlClasses.Items[ddlClasses.SelectedIndex].Value;
        ////Section = ddlSections.Items[ddlSections.SelectedIndex].Value;
        ////Student = ddlStudent.Items[ddlStudent.SelectedIndex].Value;

        //MyReportViewer.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Remote;
        //MyReportViewer.ServerReport.ReportServerUrl = new Uri(ConfigurationManager.AppSettings["ReportsURI"].ToString()); // Report Server URL
        //MyReportViewer.ServerReport.ReportPath = ConfigurationManager.AppSettings["ReportsFolder"].ToString() + "StudentFeesCollection"; // Report Name
        //MyReportViewer.ShowParameterPrompts = false;
        //MyReportViewer.ShowPrintButton = true;
        //MyReportViewer.ShowToolBar = true;

        //// Below code demonstrate the Parameter passing method. User only if you have parameters into the reports.

        //Microsoft.Reporting.WebForms.ReportParameter[] reportParameterCollection = new Microsoft.Reporting.WebForms.ReportParameter[4];
        //reportParameterCollection[0] = new Microsoft.Reporting.WebForms.ReportParameter("Batch", Batch);
        //reportParameterCollection[1] = new Microsoft.Reporting.WebForms.ReportParameter("Class", Class);
        //reportParameterCollection[2] = new Microsoft.Reporting.WebForms.ReportParameter("Section", Section);
        //reportParameterCollection[3] = new Microsoft.Reporting.WebForms.ReportParameter("Student", Student);
        //MyReportViewer.ServerReport.SetParameters(reportParameterCollection);

        //MyReportViewer.ServerReport.Refresh();

    }
}