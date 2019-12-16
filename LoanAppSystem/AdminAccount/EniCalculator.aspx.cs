using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoanAppSystem
{
    public partial class EniCalculator : System.Web.UI.Page
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




        public double interest()
        {
            double SimpleInterest;
            double pricAmount = double.Parse(loantxt.Text);
            int Monly = int.Parse(monthtxt.Text);
            int rate = int.Parse(ratetxt.Text);
            SimpleInterest = (pricAmount * Monly * rate) / 100;

            interestAmount.Text = SimpleInterest.ToString();

            return SimpleInterest;
        }

        public double CalculateTotal()
        {
            double loan = double.Parse(amounttxt.Text);

            double total;
            total = interest() + loan;

            totalAmount.Text = total.ToString();

            return total;
        }
        public void insertfuction()
        {

            try
            {
                command = Commander("[dbo].[spInsertEMICalculator]");
                command.Parameters.AddWithValue("@CustomerID", idtxt.SelectedValue.ToString());
                command.Parameters.AddWithValue("@LendAmount", amounttxt.Text);
                command.Parameters.AddWithValue("@InerestAmount", (interest()).ToString());
                command.Parameters.AddWithValue("@Total", (CalculateTotal()).ToString());
              

                command.ExecuteNonQuery();

                Page.ClientScript.RegisterStartupScript(this.GetType(), "linkButton", " toastr.warning(' Successful')", true);
                Label1.Text = " Successful";
                Label1.CssClass = "label";
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

        }

        protected void Insertbtn_Click(object sender, EventArgs e)
        {
            insertfuction();
        }
    }
}