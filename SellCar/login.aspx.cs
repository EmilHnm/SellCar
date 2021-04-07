using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SellCar
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggingin"] != null)
            {
                string username = Request.Form["username"];
                string password = Request.Form["password"];
                List<UserList> listuser = (List<UserList>)Application["listuser"];
                int count = 0;
                foreach(UserList checkuser in listuser)
                {
                    if(username == checkuser.username && password == checkuser.password)
                    {
                        Session["loggingin"] = username;
                        count++;
                        if (Request.Cookies[username] != null) {
                            Response.Cookies[username].Value = "";
                        }
                        alert.InnerHtml = "<span>Xin chào " + username + "<br> <a href='index.aspx'>Quay lại trang chủ</a>";
                    }
                }
                if(count == 0)
                {

                    alert.InnerHtml = "<span>Sai tên người dùng hoặc mật khẩu</span><br><a href='login resgister.html'>Quay lại trang đăng nhập</a>";
                
                } 
            } else
            {
                alert.InnerHtml = "<span>Một tài khoản khác đã được đăng nhập trên thiết bị này, hãy đăng xuất trước khi đăng nhập một tài khoản khác</span><br><a href='index.html'>Quay lại trang chủ</a>";
            }
            
        }
    }
}