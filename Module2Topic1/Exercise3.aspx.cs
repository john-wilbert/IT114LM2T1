using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs
            if (!IsPostBack)
            {
                finalGrade.Text = "Submit your grade percentage to see your final grade!";
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double percentage = 0;
            double transmuted = 0;
            if (double.TryParse(percentageGrade.Text, out percentage))
            {
                if (percentage >= 0 && percentage <= 100)
                {
                    if (percentage > 96 && percentage <= 100)
                    {
                        transmuted = 1.00;
                    }
                    else if (percentage >= 91.51 && percentage <= 96.00)
                    {
                        transmuted = 1.25;
                    }
                    else if (percentage >= 87.01 && percentage <= 91.50)
                    {
                        transmuted = 1.50;
                    }
                    else if (percentage >= 82.51 && percentage <= 87.00)
                    {
                        transmuted = 1.75;
                    }
                    else if (percentage >= 78.01 && percentage <= 82.50)
                    {
                        transmuted = 2.00;
                    }
                    else if (percentage >= 73.51 && percentage <= 78.00)
                    {
                        transmuted = 2.25;
                    }
                    else if (percentage >= 69.01 && percentage <= 73.50)
                    {
                        transmuted = 2.50;
                    }
                    else if (percentage >= 64.51 && percentage <= 69.00)
                    {
                        transmuted = 2.75;
                    }
                    else if (percentage >= 60.00 && percentage <= 64.50)
                    {
                        transmuted = 3.00;
                    }
                    else if (percentage < 60.00)
                    {
                        transmuted = 5.00;
                    }
                    finalGrade.Text = "";
                }
                else
                {
                    finalGrade.Text = "Enter percentages between 0 and 100!";
                    return;
                }
            }
            else
            {
                finalGrade.Text = "Enter valid percentage value!";
                return;
            }

            finalGrade.Text = transmuted.ToString();

            if (transmuted == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Congratulations!');", true);
            }
        }

    }
}