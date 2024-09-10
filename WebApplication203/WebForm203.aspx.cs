using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace WebApplication203
{
    public partial class WebForm203 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-0VUJ82CU;Initial Catalog=asplogin;Integrated Security=True;Encrypt=True;TrustServerCertificate=True");
            con.Open();
            string loginQuery = "SELECT COUNT(*) FROM login WHERE username=@username AND password=@password";
            SqlCommand cmd = new SqlCommand(loginQuery, con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text); // Corrected parameter name
            int count = (int)cmd.ExecuteScalar();
            con.Close();
            if (count > 0)
            {
                Response.Write("<script>alert('Login Success')</script>");
            }
            else
            {
                Response.Write("<script>alert('Login Failed')</script>");
            }
        }
    }
}
