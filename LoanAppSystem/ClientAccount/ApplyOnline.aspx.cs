using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoanAppSystem.ClientAccount
{
    public partial class ApplyOnline : System.Web.UI.Page
    {
        public SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["AppConnection"].ConnectionString);
        public SqlCommand command = new SqlCommand();



        public SqlCommand Commander(string CommanderCommand)
        {
            connection.Close();
            command.Parameters.Clear();
            connection.Open();
            command.Connection = connection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = CommanderCommand;

            return command;
        }
        public void CloseConn()
        {

            connection.Close();
            command.Dispose();
            command.Parameters.Clear();
        }

        public void insertfuction()
        {
           
         
            try
            {
                command = Commander("[dbo].[spInsertOlineApply]");
                command.Parameters.AddWithValue("@Loantype ", loantxt.Text);
                command.Parameters.AddWithValue("@LoanAmount", amounttxt.Text);
                command.Parameters.AddWithValue("@CustomerName", nametxt.Text);
                command.Parameters.AddWithValue("@MonthlyIncome", incometxt.Text);
                
                command.Parameters.AddWithValue("@Age", agetxt.Text);
                command.Parameters.AddWithValue("@Gender", gendertxt.Text);
                command.Parameters.AddWithValue("@Address", addresstxt.Text);
                command.Parameters.AddWithValue("@WorkPhone",worktxt.Text);
                command.Parameters.AddWithValue("@Phone",phonetxt.Text );
                command.Parameters.AddWithValue("@Email", emailtxt.Text);

                command.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.success('Application Successful')", true);
                Label1.Text = "Application Successful";
                Label1.CssClass = "alert alert-success";
                Clear();
            }
            catch (Exception ex)
            {
               Console.WriteLine( ex.ToString());
                Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.error('Connection Error Applicaton unsuccessful ')", true);

                Label1.Text = "Connection Error Applicaton unsuccessful ";
                Label1.CssClass = "alert alert-danger";
            }
            finally
            {
                CloseConn();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Clear()
        {
            loantxt.Text = "-1";
            amounttxt.Text = "";
            nametxt.Text = "";
            incometxt.Text = "";
            agetxt.Text = "";
            gendertxt.Text = "";
            addresstxt.Text = "";
            worktxt.Text = "";
            phonetxt.Text = "";
            emailtxt.Text = "";
        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            insertfuction();
        }
    }
}