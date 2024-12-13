using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Asp_net_EXP
{
    public partial class REG_form : System.Web.UI.Page
    {

        private string strConnectionString = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        private SqlCommand _sqlCommand;
        private SqlDataAdapter _sqlDataAdapter;
        DataSet _dtSet;
        protected void Page_Load(object sender, EventArgs e)
        {

            //http://www.c-sharpcorner.com/article/crud-using-stored-procedure-in-asp-net-gridview-real-time/
            BindEmployeeData();
        }
        public void CreateConnection()
        {
            SqlConnection _sqlConnection = new SqlConnection(strConnectionString);
            _sqlCommand = new SqlCommand();
            _sqlCommand.Connection = _sqlConnection;
        }
        public void OpenConnection()
        {
            _sqlCommand.Connection.Open();
        }
        public void CloseConnection()
        {
            _sqlCommand.Connection.Close();
        }
        public void DisposeConnection()
        {
            _sqlCommand.Connection.Dispose();
        }
        protected void btnAddEmployee_Click(object sender, EventArgs e)
        {
            try
            {
                CreateConnection();
                OpenConnection();

                _sqlCommand.CommandText = "Sp_GridCrud";
                _sqlCommand.CommandType = CommandType.StoredProcedure;
                _sqlCommand.Parameters.AddWithValue("@Event", "Add");
                _sqlCommand.Parameters.AddWithValue("@FirstName", Convert.ToString(txtFirstName.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@LastName", Convert.ToString(txtLastName.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@PhoneNumber", Convert.ToString(txtPhoneNumber.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@EmailAddress", Convert.ToString(txtEmailAddress.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@Salary", Convert.ToDecimal(txtSalary.Text));
                int result = Convert.ToInt32(_sqlCommand.ExecuteNonQuery());
                if (result > 0)
                {

                    lblMessage.Text = "Record Is Inserted Successfully";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    BindEmployeeData();
                    ClearControls();
                }
                else
                {

                    lblMessage.Text = "Failed";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
            }
        }
        public void BindEmployeeData()
        {
            try
            {
                CreateConnection();
                OpenConnection();
                _sqlCommand.CommandText = "Sp_GridCrud";
                _sqlCommand.CommandType = CommandType.StoredProcedure;
                _sqlCommand.Parameters.AddWithValue("@Event", "Select");
                _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                // _dtSet = new DataSet();
                DataTable dt = new DataTable();
                _sqlDataAdapter.Fill(dt);
                gv_emp.DataSource = dt;
                gv_emp.DataBind();
            }
            catch (Exception ex)
            {
                Response.Redirect("The Error is " + ex);
            }
            finally
            {
                CloseConnection();
                DisposeConnection();
            }
        }
        public void ClearControls()
        {
            txtEmailAddress.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtPhoneNumber.Text = "";
            txtSalary.Text = "";
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

        }

        protected void gv_emp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "edelete")
                {
                    CreateConnection();
                    OpenConnection();
                    int id = Convert.ToInt32(e.CommandArgument);
                    _sqlCommand.CommandText = "Sp_GridCrud";
                    _sqlCommand.Parameters.AddWithValue("@Event", "Delete");
                    _sqlCommand.Parameters.AddWithValue("@EmpId", Convert.ToInt32(id));
                    _sqlCommand.CommandType = CommandType.StoredProcedure;
                    int result = Convert.ToInt32(_sqlCommand.ExecuteNonQuery());
                    if (result > 0)
                    {

                        lblMessage.Text = "Record Is Deleted Successfully";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        BindEmployeeData();
                    }
                    else
                    {
                        lblMessage.Text = "Failed";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        BindEmployeeData();
                    }

                }
                else
                    if (e.CommandName == "eedit")
                    {
                    }
            }
            catch (Exception ex)
            {
            }
        }
    }
}