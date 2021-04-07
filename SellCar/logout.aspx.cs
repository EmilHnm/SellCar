using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SellCar
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            alert.InnerHtml = "<span>Đăng xuất thành công</span><br><a href='login resgister.html'>Quay lại trang đăng nhập</a>";
        }
    }
}