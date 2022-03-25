using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace zhanghuazhi1029Project3CLSApp
{
    public partial class frmCreative : Form
    {
        private Icon m_ready=new Icon(SystemIcons.Information,40,40);

        public frmCreative()
        {
            InitializeComponent();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void tabDest_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            txtSource.Text = "D:\\Creative\\Source";
            txtProcessedFile.Text = "D:\\Creative\\Processed\\";
            txtDest.Text = "D:\\Creative\\Destination\\";
            opsGenerateLog.Checked = true;



        }

        private void tabSource_Click(object sender, EventArgs e)
        {

        }

        private void lebel2_Click(object sender, EventArgs e)
        {

        }

        private void txtSource_TextChanged(object sender, EventArgs e)
        {

        }

        private void optGenerateLog_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            if (!Directory.Exists(txtSource.Text))
            {
                errMessage.SetError(txtSource, "Ivalid Source Directory");
                txtSource.Focus();
                tabControl1.SelectedTab = tabSource;
                return;
            }
            else
                errMessage.SetError(txtSource, "");
            //
            if (!Directory.Exists(txtProcessedFile.Text))
            {
                errMessage.SetError(txtProcessedFile, "Ivalid Processed File Directory");
                txtProcessedFile.Focus();
                tabControl1.SelectedTab = tabSource;
                return;
            }
            else
                errMessage.SetError(txtProcessedFile, "");
            if (!Directory.Exists(txtDest.Text))
            {
                errMessage.SetError(txtDest, "Ivalid Destination Directory");
                txtDest.Focus();
                tabControl1.SelectedTab = tabDest;
                return;
            }
            else
                errMessage.SetError(txtDest, "");
            //

            //
            watchDir.EnableRaisingEvents = true;//start watching
            watchDir.Path = txtSource.Text;

            //
            mnuNotify.Icon = m_ready;
            mnuNotify.Visible = true;
            this.ShowInTaskbar = false;
            this.Hide();


        }

        private void txtSource_KeyUp(object sender, KeyEventArgs e)
        {
            //validate source
            if (Directory.Exists(txtSource.Text)) 
            {
                txtSource.BackColor = Color.White;

            }
            else
            {
                txtSource.BackColor = Color.Pink;
            }
        }

        private void txtProcessedFile_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtProcessedFile_KeyUp(object sender, KeyEventArgs e)
        {
            //validate proce
            if (Directory.Exists(txtProcessedFile.Text))
            {
                txtProcessedFile.BackColor = Color.White;

            }
            else
            {
                txtProcessedFile.BackColor = Color.Pink;
            }
        }

        private void txtDest_KeyUp(object sender, KeyEventArgs e)
        {
            //validate destination
            if (Directory.Exists(txtDest.Text))
            {
                txtDest.BackColor = Color.White;

            }
            else
            {
                txtDest.BackColor = Color.Pink;
            }
        }

        private void configuerApplicationToolStripMenuItem_Click(object sender, EventArgs e)
        {
            mnuNotify.Visible = true;
            this.ShowInTaskbar = false;
            this.Show();
        }

        private void mnuExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void mnuNotify_DoubleClick(object sender, EventArgs e)
        {
            mnuNotify.Visible=false;
            this.ShowInTaskbar=true;
            this.Show();
        }
    }
}
