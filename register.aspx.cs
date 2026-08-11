using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace mobilehub
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgrid();
            }
        }

        protected void registerbtn_Click(object sender, ImageClickEventArgs e)
        {
            if (Page.IsValid)
            {
                if (chkTerms.Checked == true)
                {
                    getcon();

                    cmd = new SqlCommand(
                        "insert into reg_tbl(First_name, Last_name, Email, Phone, Password, Confirm_Password) " +
                        "Values('" +
                        txtFirstName.Text + "','" +
                        txtLastName.Text + "','" +
                        txtEmail.Text + "','" +
                        txtPhone.Text + "','" +
                        txtPassword.Text + "','" +
                        txtConfirmPassword.Text + "')",
                        con);

                    cmd.ExecuteNonQuery();

                    con.Close();

                    fillgrid();
                    clear();
                }
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillgrid()
        {
            getcon();

            string query = "SELECT * FROM reg_tbl";

            SqlDataAdapter da = new SqlDataAdapter(query, con);

            DataSet ds = new DataSet();

            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }

        void clear()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";

            chkTerms.Checked = false;
        }
    }
}