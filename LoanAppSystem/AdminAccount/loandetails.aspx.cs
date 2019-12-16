using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoanAppSystem.AdminAccount
{
    public partial class loandetails : System.Web.UI.Page
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
       

        public void CheckUser()
        {

            command = Commander("[dbo].[CheckUser]");
            command.Parameters.AddWithValue("@CustomerID", customeridtxt.Text);
            int ReturnCode = (int)command.ExecuteScalar();

            if (ReturnCode == 1)
            {
                Label1.Text = "Error Customer Already Exist";
                Label1.CssClass = "alert alert-danger";
            }
            else
            {
                insertfuction();

            }

        }

        public void insertfuction()
        {


            try
            {
                command = Commander("[dbo].[spInsertLoanDetails]");
                command.Parameters.AddWithValue("@CustomerID", customeridtxt.Text);
                command.Parameters.AddWithValue("@loantype",loantxt.Text);
                command.Parameters.AddWithValue("@LoanAmount",amounttxt.Text);
                command.Parameters.AddWithValue("@Loantenure", tenuretxt.Text);
                command.Parameters.AddWithValue("@InterestRate", loantypetxt.Text);
                command.Parameters.AddWithValue("@IssueDate", datetxt.Text);
                command.Parameters.AddWithValue("@Moartgage", mortgagetxt.Text);
                command.Parameters.AddWithValue("@GuarantorName", nametxt.Text);
                command.Parameters.AddWithValue("@Address", addresstxt.Text);
                command.Parameters.AddWithValue("@ContactNo", phonetxt.Text);
               

                command.ExecuteNonQuery();

                Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.warning(' Successful')", true);
                Label1.Text = " Successful";
                Label1.CssClass = "alert alert-success";
               
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
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
            //GridView1.DataBind;
        }

      

        protected void insertButton_Click(object sender, EventArgs e)
        {
            CheckUser();
            ClearData();
        }

        public void ClearData()
        {
          
            loantxt.Text = "-1";
            amounttxt.Text = "";
            tenuretxt.Text = "";
            loantypetxt.Text = "-1";
            datetxt.Text = "";
            mortgagetxt.Text = "";
            nametxt.Text = "";
            addresstxt.Text = "";
            phonetxt.Text = "";
        }

        protected void cancelbutt_Click(object sender, EventArgs e)
        {
            ClearData();
        }
    }
}