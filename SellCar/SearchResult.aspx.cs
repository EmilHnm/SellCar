using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace SellCar
{
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Car cars = new Car();
            string[,] CarInfo = cars.NewCarInfo;
            string Manu = Request.QueryString["manu"];
            string Model = Request.QueryString["model"];
            string Classify = Request.QueryString["Classify"];
            if (Session["loggingin"] != null)
            {
                mainnavbar.InnerHtml = "<a href='index.html' class='navbar-item'>Mua xe</a>" +
                      "<a href ='' class='navbar-item'>Bán xe</a>" +
                    "<a href = '' class='navbar-item'>Định giá xe</a>" +
                    "<a href = '' class='navbar-item'>Đại lý ô tô</a>" +
                    "<a href = '' class='navbar-item'>Khuyến mãi</a>" +
                    "<a href = '' class='navbar-item'>Tin tức</a>" +
                    "<a href = '' class='log-button'>" + Session["loggingin"].ToString() + "</a>" +
                    "<a href = 'logout.aspx' class='log-button'>Đăng xuất</a>";
            }
            if (Classify == null)
            {
                for (int i = 1; i < 101; i++)
                {
                    if (Manu == CarInfo[i, 0])
                    {
                        result.InnerHtml += "<a href='" + 1 + "'>" +
                                                "<div class='car-result'>" +
                                                    "<div class='picture'>" +
                                                        "<img src = '" + CarInfo[i, 8] + "1.jpg' >" +
                                                    "</div>" +
                                                   "<div class='decribe'>" +
                                                        "<div class='title'>" + CarInfo[i, 0] + " " + CarInfo[i, 1] + "</div>" +
                                                        "<div class='classify'>" + CarInfo[i, 3] + "</div>" +
                                                        "<div class='price'>" + CarInfo[i, 7] + "</div>" +
                                                        "<div class='color'>" + CarInfo[i, 2] + "</div>" +
                                                        "<div class='decribe-content'>" + CarInfo[i, 9] + "</div>" +
                                                   "</div>" +
                                                "</div>" +
                                            "</a>";
                    }
                }
            }
            else
            {
                for (int i = 1; i < 101; i++)
                {
                    if (Classify == CarInfo[i, 3])
                    {
                        result.InnerHtml += "<a href='" + 1 + "'>" +
                                                "<div class='car-result'>" +
                                                    "<div class='picture'>" +
                                                        "<img src = '" + CarInfo[i, 8] + "1.jpg' >" +
                                                    "</div>" +
                                                   "<div class='decribe'>" +
                                                        "<div class='title'>" + CarInfo[i, 0] + " " + CarInfo[i, 1] + "</div>" +
                                                        "<div class='classify'>" + CarInfo[i, 3] + "</div>" +
                                                        "<div class='price'>" + CarInfo[i, 7] + "</div>" +
                                                        "<div class='color'>" + CarInfo[i, 2] + "</div>" +
                                                        "<div class='decribe-content'>" + CarInfo[i, 9] + "</div>" +
                                                   "</div>" +
                                                "</div>" +
                                            "</a>";
                    }
                }
            }

        }
    }
}