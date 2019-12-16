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
    public partial class Receivepayment : System.Web.UI.Page
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


        /*public double CheckAmount()
        {
            double AmountPaid = 0;

            double left=0;
            ENI_CALCULATOR check = new ENI_CALCULATOR();
            double TotalLoan = check.CalculateTotal();

            AmountPaid = double.Parse(paytxt.Text);

            if (TotalLoan == AmountPaid)
            {
                Label1.Text = "Client is done paying for Loan";
            }
            else
            {
                
               left = TotalLoan - AmountPaid;
                Label1.Text = left.ToString();
            }
           return left;
        }*/


        public void insertfuction()
        {


            try
            {
                command = Commander("[dbo].[spInsertPayment]");
                command.Parameters.AddWithValue("@CustomerID", idtxt.Text);
                command.Parameters.AddWithValue("@numberOFPayment", numberpaytxt.Text);
                command.Parameters.AddWithValue("@DatePayed", datetxt.Text);
                command.Parameters.AddWithValue("@AmountPayed",paytxt.Text);
               

            

                command.ExecuteNonQuery();

                Page.ClientScript.RegisterStartupScript(this.GetType(), "Label1", " toastr.warning(' Successful')", true);
                Label1.Text = " Successful";
                Label1.CssClass = "alert alert-success";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Label1", " toastr.error('Connection Error Applicaton unsuccessful ')", true);

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

        protected void insertbtn_Click(object sender, EventArgs e)
        {
            insertfuction();
            //CheckAmount();

        }

        protected void cancelbtn_Click(object sender, EventArgs e)
        {
            idtxt.Text="";
             numberpaytxt.Text="";
            datetxt.Text ="";
            paytxt.Text="";
        }
    }
}