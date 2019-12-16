using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI;

namespace LoanAppSystem.AdminAccount
{
    public partial class AdminHome : System.Web.UI.Page
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


        public void Updatepasswordfunction()
        {
            try
            {
                command = Commander("[dbo].[spChangeAdminPassword]");
                command.Parameters.AddWithValue("@UserName", usertxt.Text);
                command.Parameters.AddWithValue("@Password", oldpasstxt.Text);
                command.Parameters.AddWithValue("@NewPassword", newpasstxt.Text);
                int ReturnCode = (int)command.ExecuteScalar();

                if (ReturnCode == 1)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.success('Update SUCCESSFUL!')", true); ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.success('UPDATE SUCCESSFULL')", true);
                    Label1.Text = "Update SUCCESSFUL!";
                    Label1.CssClass = "alert alert-success";
                    
                }
                else
                {

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.error('LOGIN SUCCESSFUL!')", true); ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.error('Erro Check Details','Error')", true);
                    Label1.Text = "Update Error!";
                    Label1.CssClass = "alert alert-danger";
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

        public void ClearfixData()
        {
            fixloantypetxt.Text = "-1";
            fixdurationtxt.Text = "";
            fixratetxt.Text = "";
        }

        protected void cancelfixbtn_Click(object sender, EventArgs e)
        {
            ClearfixData();
        }
        //FIXED RATE BUTTON CLICK
        protected void fixedbtn_Click(object sender, EventArgs e)
        {
            try
            {
                command = Commander("[dbo].[spInsertFixedInterest]");
                command.Parameters.AddWithValue("@Loantype", fixloantypetxt.Text);
                command.Parameters.AddWithValue("@Duration", fixdurationtxt.Text);
                command.Parameters.AddWithValue("@Rate", fixratetxt.Text);
                command.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.success(' SUCCESSFUL!')", true); ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.success('UPDATE SUCCESSFULL')", true);
                Label1.Text = " SUCCESSFULLY Inserted!";
                Label1.CssClass = "alert alert-success";
                ClearfixData();
            }
            catch (Exception ex)
            {
                ex.ToString();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.warning('Error Updating')", true); ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.error('Connection Error Registration unsuccessfull','Error')", true);
                Label1.Text = " Error!";
                Label1.CssClass = "alert alert-danger";
           
            }
            finally
            {
                CloseConn();
            }
        }

        protected void setbutt_Click(object sender, EventArgs e)
        {
            Updatepasswordfunction();
        }
        //FLOAT RATE BUTTON CLICK
        protected void insertflbtn_Click(object sender, EventArgs e)
        {
            try
            {
                command = Commander("[dbo].[spInsertFloatInterest]");
                command.Parameters.AddWithValue("@Loantype", loantxt.Text);
                command.Parameters.AddWithValue("@Duration", durationtxt.Text);
                command.Parameters.AddWithValue("@Rate", ratetxt.Text);
                command.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.success(' SUCCESSFUL!')", true); ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.success('UPDATE SUCCESSFULL')", true);
                Label1.Text = " SUCCESSFULLY Inserted!";
                Label1.CssClass = "alert alert-success";
                ClearflData();

            }
            catch (Exception ex)
            {
                ex.ToString();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.warning('Error Updating')", true); ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.error('Connection Error Registration unsuccessfull','Error')", true);
                Label1.Text = " Error!";
                Label1.CssClass = "alert alert-danger";
            }
            finally
            {
                CloseConn();
            }
        }

       

        public void ClearflData()
        {
            loantxt.Text = "-1";
            durationtxt.Text = "";
            ratetxt.Text = "";
        } 
        protected void cancelbtn_Click(object sender, EventArgs e)
        {

            ClearflData();
        }

        protected void LoanGridView_RowDeleted(object sender, System.Web.UI.WebControls.GridViewDeletedEventArgs e)
        {
         

            if (e.AffectedRows > 0)
            {
                Label1.Text = "Deleting Successful";
                Label1.CssClass = "alert alert-success";
            }
            else
            {
                Label1.Text = "Error Deleting";
                   
                Label1.Text = "alert alert-warning";

            }
        }

        protected void GridView1_RowDeleted(object sender, System.Web.UI.WebControls.GridViewDeletedEventArgs e)
        {
            if (e.AffectedRows > 0)
            {
                Label1.Text = "Deleting Successful";
                Label1.CssClass = "alert alert-success";
            }
            else
            {
                Label1.Text = "Error Deleting";

                Label1.Text = "alert alert-warning";

            }
        }

        protected void GridView2_RowDeleted(object sender, System.Web.UI.WebControls.GridViewDeletedEventArgs e)
        {
            if (e.AffectedRows > 0)
            {
                Label1.Text = "Deleting Successful";
                Label1.CssClass = "alert alert-success";
            }
            else
            {
                Label1.Text = "Error Deleting";

                Label1.Text = "alert alert-warning";

            }
        }
    }
}