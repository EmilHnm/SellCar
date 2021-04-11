using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SellCar
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggingin"] != null)
            {
                mainnavbar.InnerHtml = "<a href='index.aspx' class='navbar-item'>Mua xe</a>" +
                      "<a href ='Updating.aspx' class='navbar-item'>Bán xe</a>" +
                    "<a href = 'Updating.aspx' class='navbar-item'>Định giá xe</a>" +
                    "<a href = 'Updating.aspx' class='navbar-item'>Đại lý ô tô</a>" +
                    "<a href = 'Updating.aspx' class='navbar-item'>Khuyến mãi</a>" +
                    "<a href = 'Updating.aspx' class='navbar-item'>Tin tức</a>" +
                    "<a href = 'UserFavorite.aspx' class='log-button'>" + Session["loggingin"].ToString() + "</a>" +
                    "<a href = 'logout.aspx' class='log-button'>Đăng xuất</a>";
            }
        }
    }
}