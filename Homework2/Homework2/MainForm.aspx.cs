using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Homework2
{
    public partial class MainForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDivided_Click(object sender, EventArgs e)
        {
            double divided = 0, divider = 0;
            bltList.Items.Clear();
            try
            {
                divided = Convert.ToDouble(TDividend.Text);
            }
            catch (Exception ex)
            {
                LDividend.Text = ex.Message;
                bltList.Items.Add(ex.Message);
            }

            try
            {
                divider = Convert.ToDouble(TDivider.Text);
                if (divider == 0)
                {
                    throw new Exception("Недопустимое значение");
                }
                else
                {
                    double res = divided / divider;
                    LAnswer.Text = res.ToString();
                }
            }
            catch (Exception ex)
            {
                LDivider.Text = ex.Message;
                bltList.Items.Add(ex.Message);
            }
        }

        protected void TDividend_TextChanged(object sender, EventArgs e)
        {
            LDividend.Text = "";
            LAnswer.Text = "";
        }

        protected void TDivider_TextChanged(object sender, EventArgs e)
        {
            LDivider.Text = "";
            LAnswer.Text = "";
        }
    }
}