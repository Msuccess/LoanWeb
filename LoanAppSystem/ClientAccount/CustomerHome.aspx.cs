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
    public partial class CustomerHome : Page
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


        public void loginfunction()
        {
            try
            {
                command = Commander("[dbo].[spChangePassword]");
                command.Parameters.AddWithValue("@UserName", usertxt.Text);
                command.Parameters.AddWithValue("@Password", oldpasstxt.Text);
                command.Parameters.AddWithValue("@NewPassword", newpasstxt.Text);
                int ReturnCode = (int)command.ExecuteScalar();

                if (ReturnCode == 1)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.success('Update SUCCESSFUL!')", true); ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.success('UPDATE SUCCESSFULL')", true);
                   
                }
                else
                {

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.error('Update Error')", true); ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.error('Erro Check Details','Error')", true);
                }



            }
            catch (Exception ex)
            {
                ex.ToString();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.warning('Error Updating')", true); ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.error('Connection Error Registration unsuccessfull','Error')", true);
            }
            finally
            {
                CloseConn();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void changebutt_Click(object sender, EventArgs e)
        {
            loginfunction();
        }
    }
}