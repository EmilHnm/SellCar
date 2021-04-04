using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SellCar
{
    public partial class SearchReuilt : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Car cars = new Car();
            string[,] CarInfo = cars.NewCarInfo;
            string Manu = Request.QueryString["manu"];
            string Model = Request.QueryString["Model"];
            string Classify = Request.QueryString["Classify"];
            if (Classify == null)
            {
                for (int i = 1; i< 101;i++)
                {   
                    if (Manu == CarInfo[i,0])
                    {
                        result.InnerHtml += "<a href='"+ 1 + "'>" +
                                                "<div class='car-result'>" +
                                                    "<div class='picture'>"+
                                                        "<img src = '"+ CarInfo[i,8]+"1.jpg' >" +
                                                    "</div>" +
                                                   "<div class='decribe'>" +
                                                        "<div class='title'>" + CarInfo[i,0] + " " + CarInfo[i,1] + "</div>" +
                                                        "<div class='classify'>" + CarInfo[i,3] + "</div>" +
                                                        "<div class='price'>" + CarInfo[i,7] + "</div>" +
                                                        "<div class='color'>" + CarInfo[i,2] + "</div>" +
                                                        "<div class='decribe-content'>" + CarInfo[i,9] + "</div>"+
                                                   "</div>" +
                                                "</div>" +
                                            "</a>"; 
                    }
                } 
            } else
            {
                for (int i = 1; i < 101; i++)
                {
                    if(Classify == CarInfo[i,3])
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