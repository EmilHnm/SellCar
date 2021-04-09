using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SellCar
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Car car = new Car();
            string[,] CarInfo = car.NewCarInfo;
            string model = Request.QueryString["model"];
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
            for (int i =0; i<101; i++){
                if(model == CarInfo[i,1])
                {
                    title.InnerText = CarInfo[i, 0] + ' ' + CarInfo[i, 1];
                    img1.InnerHtml = "<img src='" + CarInfo[i, 8] + "1.jpg' style='width: 100%; height: 60vh'>";
                    img2.InnerHtml = "<img src='" + CarInfo[i, 8] + "2.jpg' style='width: 100%; height: 60vh'>";
                    img3.InnerHtml = "<img src='" + CarInfo[i, 8] + "3.jpg' style='width: 100%; height: 60vh'>";
                    img4.InnerHtml = "<img src='" + CarInfo[i, 8] + "4.jpg' style='width: 100%; height: 60vh'>";
                    thumbnail1.InnerHtml = "<img src = '"+CarInfo[i,8]+ "1.jpg' class='demo' style='width:100%' onclick='currentSlide(1)'>";
                    thumbnail2.InnerHtml = "<img src = '" + CarInfo[i, 8] + "2.jpg' class='demo' style='width:100%' onclick='currentSlide(2)'>";
                    thumbnail3.InnerHtml = "<img src = '" + CarInfo[i, 8] + "3.jpg' class='demo' style='width:100%' onclick='currentSlide(3)'>";
                    thumbnail4.InnerHtml = "<img src = '" + CarInfo[i, 8] + "4.jpg' class='demo' style='width:100%' onclick='currentSlide(4)'>";
                    price.InnerText = CarInfo[i, 7];
                    color.InnerText = CarInfo[i, 2];
                    classify.InnerText = CarInfo[i, 3];
                    transission.InnerText = CarInfo[i, 5];
                    fuel.InnerText = CarInfo[i, 6];
                    engine.InnerText = CarInfo[i, 4];
                    decribe.InnerText = CarInfo[i, 9];
                }
            }
        }
    }
}