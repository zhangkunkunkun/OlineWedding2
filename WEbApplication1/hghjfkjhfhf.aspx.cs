using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WEbApplication1
{
    public partial class WEbForm2 : System.Web.UI.Page
    {
        public string ConnectionStr;
        public SqlConnection con;
        public SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(ConnectionStr);
            con.Open();

            
        }
        public void delete(object sender, EventArgs e) {
            
            com = new SqlCommand("update oiwai set flg = '1' where rowNum = '" +  this.deleteRowNum.Text +"'", con);
            com.ExecuteNonQuery();
            Server.Transfer("WEbForm1.aspx");
        }
    }
}