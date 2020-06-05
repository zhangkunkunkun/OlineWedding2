using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WEbApplication1
{
    public partial class WEbForm1 : System.Web.UI.Page
    {
        public string ConnectionStr;
        public SqlConnection con;
        public SqlCommand com;
        public string Mem;
        public SqlDataAdapter ad;
        public string err;
        public string pwd = "890227";
        public string ip;
        public int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
             ip = Request.UserHostAddress;
             ConnectionStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
             con = new SqlConnection(ConnectionStr);
             con.Open();

            //此ip有几条记录？
            string checkIp = "select count(*) from oiwai where ip = '" + ip + "'";
            com = new SqlCommand(checkIp, con);
            count = (int)com.ExecuteScalar();

            com = new SqlCommand("select * from oiwai where flg = '0' order by rowNum desc", con);
            ad = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        
       public void delete(object sender, EventArgs e)
       {
            Response.Write("<script language=javascript>");
            Response.Write("var password;");
            Response.Write("password = prompt('请输入密码（PassWordを入力してください）: ', '');");
            Response.Write("if(password == '890227'){location.href='d_eleteP_age.aspx';}else{location.href='WEbForm1.aspx';};");
            Response.Write("</script>");
        }
       public void cal_DayRender(Object sender, DayRenderEventArgs e)
        {
            string date = e.Day.Date.ToString("yyyy/MM/dd");
            date = date.Substring(0, 10);
            date = date.Replace("/", "");
            string sqlSelect = "select TOP(1) * from test1 where date = " + "'" + date + "'";
            com = new SqlCommand(sqlSelect, con);
            SqlDataReader cellColorReader = com.ExecuteReader();
            if (cellColorReader.HasRows)
            {
                e.Cell.BackColor = Color.Pink;
            }
            cellColorReader.Close();

        }
            public void cal_Changed(object sender, EventArgs e)
        { 
            string date = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
            date = date.Substring(0, 10);
            date = date.Replace("/", "");

            //HtmlTextArea mem = (HtmlTextArea)(form1.FindControl("textarea2"));
            //mem.Value = string.Empty;
            string sqlSelect = "select TOP(1) * from test1 where date = " + "'" + date + "'";
            com = new SqlCommand(sqlSelect, con);
            SqlDataReader sdr = com.ExecuteReader();
            if (sdr.Read() == true)
            {
               this.labelCalender.Text = sdr["text"].ToString();


            }
            else
            {
                this.labelCalender.Text = "";
            }
            sdr.Close();
            com.Dispose();
        }
        public void BtInsert(object sender, EventArgs e)
        {
            HtmlTextArea mem = (HtmlTextArea)(form1.FindControl("textarea2"));
            string date = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
            date = date.Substring(0, 10);
            date = date.Replace("/", "");
            string existCheck = "select TOP(1) * from test1 where date =" + date;
            com = new SqlCommand(existCheck, con);
            SqlDataReader reader = com.ExecuteReader();

            if (reader.HasRows) {
                reader.Close();
                string sqlUpdate = "update test1 set text = N'" + mem.Value +"' where date = '" + date +"'" ;
                com = new SqlCommand(sqlUpdate, con);
                com.ExecuteNonQuery();
                
                com.Dispose();
            }
            else {
                reader.Close();
                string sqlInsert = "insert into test1 (date, text) values ( "+ "'" + date + "' , N'" + mem.Value + "')";
                com = new SqlCommand(sqlInsert, con);
                com.ExecuteNonQuery();
                
                com.Dispose();
            }
            
        }


        public void BtInsertOiwai(object sender, EventArgs e)
        {

            HtmlTextArea mem = (HtmlTextArea)(form1.FindControl("textareaOiwai"));
            if (this.name.Text.ToString() != "" && this.name.Text.Length<=10 && mem.Value.Length<=45 )
            {
                //此ip有几条记录？
                string checkIp = "select count(*) from oiwai where ip = '" + ip + "'";
                com = new SqlCommand(checkIp, con);
                count = (int)com.ExecuteScalar();

                if (count < 5)
                {
                    string insertInto = "insert into oiwai (name, oiwaiMem ,ip) values ( N'" + this.name.Text + "',N'" + mem.Value + "','" + ip + "')";
                    com = new SqlCommand(insertInto, con);
                    com.ExecuteNonQuery();
                }
                else
                {
      
                }
                //Response.Redirect(Request.Url.ToString());

                com = new SqlCommand("select * from oiwai where flg = '0' order by rowNum desc", con);
                ad = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                ad.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
                
                ScriptManager.RegisterStartupScript(UpdatePanel1, this.Page.GetType(), "", "CsharpUse();", true);

            }
            else
            {
                //Response.Write("<script language=javascript>");
                //Response.Write("alert('文字过多，请重试！！！');");

                //Response.Write("</script>");
            }
            ScriptManager.RegisterStartupScript(UpdatePanel1, this.Page.GetType(), "", "CsharpUse();", true);
        }




    }
}