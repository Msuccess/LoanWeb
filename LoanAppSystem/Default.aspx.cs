using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LoanAppSystem.ClientAccount;

namespace LoanAppSystem
{
    public partial class Default : Page
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

/// <summary>
/// Registration Function 
/// </summary>

        public void insertfuction()
        {
            try
            {
                command = Commander("[dbo].[spInsertCustomer]");
                command.Parameters.AddWithValue("@fullname", fullnametxt.Text);
                command.Parameters.AddWithValue("@UserName", regusertxt.Text);
                command.Parameters.AddWithValue("@Password", regpasstxt.Text);
                command.Parameters.AddWithValue("@PhoneNumber", phonetxt.Text);
                command.Parameters.AddWithValue("@Email",emailtxt.Text);

                SqlParameter Outpara = new SqlParameter();
                Outpara.ParameterName = "@CustomerID";
                Outpara.SqlDbType = SqlDbType.Int;
                Outpara.Direction = ParameterDirection.Output;

                command.Parameters.Add(Outpara);
                int ReturnCode = (int)command.ExecuteScalar();

                if (ReturnCode == 1)
                {
                  
                   Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.warning('UserName Already exist')", true);
                }
                else
                {
                    string CustomerID = Outpara.Value.ToString();

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.success('Registration Successfull')", true);
                    Label1.Text = "YOU CUSTOMER ID NUMBER IS ="+CustomerID.ToString();
                    Label1.CssClass = "label";


                }



            }
            catch (Exception ex)
            {
                ex.ToString();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.error('Connection Error Registration unsuccessfull ')", true);
               
            }
            finally
            {
                CloseConn();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void regbtn_Click(object sender, EventArgs e)
        {
            insertfuction();
        }

        protected void regcancel_Click(object sender, EventArgs e)
        {
            fullnametxt.Text = "";
            regusertxt.Text="";
            regpasstxt.Text="";
            phonetxt.Text = "";
            emailtxt.Text="";
          
           
        }

        /// <summary>
        /// Login Function 
        /// </summary>
        /// 
        public string  ReturnUser( string userId)
        {
            
            return userId;

        }
        public void loginfunction()
        {
            try
            {
                command = Commander("[dbo].[spLoginCustomer]");     
                command.Parameters.AddWithValue("@UserName", userlogintxt.Text);
                command.Parameters.AddWithValue("@Password", passtxt.Text);
                command.Parameters.AddWithValue("@CustomerID", findtxt.Text);
                int ReturnCode = (int)command.ExecuteScalar();

                if (ReturnCode == 1)
                {
                    
                    Response.Redirect("ClientAccount/CustomerHome.aspx");
                    ReturnUser(userlogintxt.Text);

                 
                }
                else
                {


                    Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.error('Error Check Details','Error')", true);
                }



            }
            catch (Exception ex)
            {
                ex.ToString();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.info('Error Connection!')", true); ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.error('Connection Error Registration unsuccessfull','Error')", true);
            }
            finally
            {
                CloseConn();
            }
        }
        protected void loginbtn_Click(object sender, EventArgs e)
        {
            Session["UserID"] = findtxt.Text;
            
            loginfunction();
        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            userlogintxt.Text = "";
            regpasstxt.Text = "";
        }
    }
}

