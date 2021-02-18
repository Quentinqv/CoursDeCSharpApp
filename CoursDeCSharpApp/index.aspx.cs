using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CoursDeCSharpApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        SqlConnection cnn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;
            connetionString = @"Data Source=localhost\SQLEXPRESS;Trusted_Connection=True;Database=CoursC ;User ID=user1;Password=123456789";

            cnn = new SqlConnection(connetionString);

            cnn.Open();

            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "Select name, email from students";

            command = new SqlCommand(sql, cnn);
            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0) + " - " + dataReader.GetValue(1) + "</br>";
            }

            Response.Write(Output);

            dataReader.Close();
            command.Dispose();

            cnn.Close();
        }

		protected void btnSubmit_Click(object sender, EventArgs e)
		{
			Session["Name"] = txtName.Text;

			Response.Write(Session["Name"]);

		}
    }
}