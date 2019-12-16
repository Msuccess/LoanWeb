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
    public partial class CustomerDetails : System.Web.UI.Page
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
                command = Commander("[dbo].[spInsertCustomerDetails]");
                command.Parameters.AddWithValue("@CustomerName ", nametxt.Text);
                command.Parameters.AddWithValue("@Gender", gendertxt.Text);
                command.Parameters.AddWithValue("@City", citytxt.Text);
                command.Parameters.AddWithValue("@Address", addreestxt.Text);
                command.Parameters.AddWithValue("@PhoneNumber", phonetxt.Text);

                command.Parameters.AddWithValue("@Email", emailtxt.Text);
                command.Parameters.AddWithValue("@DateOfbrith", dbtxt.Text);

                command.ExecuteNonQuery();
                Clear();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.warning(' Successful')", true);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.error('Connection Error Applicaton unsuccessful ')", true);

                //  Label1.Text = "Connection Error Applicaton unsuccessful ";
                //  Label1.CssClass = "alert alert-danger";
            }
            finally
            {
                CloseConn();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void insertbtn_Click(object sender, EventArgs e)
        {
            insertfuction();
        }

        public void Clear()
        {
            nametxt.Text = "";
            gendertxt.Text = "";
            citytxt.Text = "";
            addreestxt.Text = "";
            phonetxt.Text = "";

            emailtxt.Text = "";
            dbtxt.Text = "";
        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}