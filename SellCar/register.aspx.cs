using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SellCar
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<UserList> listuser = (List<UserList>)Application["listuser"];

            string username = Request.Form["rusername"];
            string password = Request.Form["rpassword"];
            UserList user = new UserList(username, password);
            int count = 0;
            foreach (UserList checkuser in listuser)
            {
                if (checkuser.username == username)
                {
                    alert.InnerText = "Tên người dùng đã tồn tại, hãy sử dụng tên người dùng khác";
                    Response.Redirect("login resgister.html");
                    count++;
                    break;
                }
            }
            if (count == 0)
            {
                listuser.Add(user);
                
                Application["listuser"] = listuser;
                Session["loggingin"] = username;
                Response.Redirect("index.aspx");            
            }
        }
    }
}