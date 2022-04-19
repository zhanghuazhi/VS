using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Security;

namespace LabAss3
{
    public partial class frmCustomerDataEntry : Form
    {
        public frmCustomerDataEntry()
        {
            InitializeComponent();
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            string Gender, Hobby, Status = "";
            if (radioMale.Checked) Gender = "Male";
            else Gender = "female";
            if (chkReading.Checked) Hobby = "Reading";
            else Hobby = "Painting";
            if (radioMarried.Checked) Status = "Married";
            else Status = "Unmarried";

            frmCustomerDataEntry objPeview = new frmCustomerPreview();
            objPeview.SetValues(txtName.Text, cmbCountry.Text, Gender, Hobby, Status);

            try
            {
                CustomerValidation objVal = new CustomerValidation();
                objVal.CheckCustomerName(txtName.Text);

                frmCustomerPreview objPreview = new frmCustomerPreview();
                objPeview.SetValues(txtName.Text, cmbCountry.Text, Gender, Hobby, Status);
                objPreview.Show();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void SetValues(string text1, string text2, string gender, string hobby, string status)
        {
            throw new NotImplementedException();
        }

        private void cmbCountry_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        public static implicit operator frmCustomerDataEntry(frmCustomerPreview v)
        {
            throw new NotImplementedException();
        }
    }
}
