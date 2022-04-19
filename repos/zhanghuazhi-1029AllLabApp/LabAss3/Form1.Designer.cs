namespace LabAss3
{
    partial class frmCustomerDataEntry
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.lblName = new System.Windows.Forms.Label();
            this.lblCountry = new System.Windows.Forms.Label();
            this.txtName = new System.Windows.Forms.TextBox();
            this.radioMale = new System.Windows.Forms.RadioButton();
            this.radioFemale = new System.Windows.Forms.RadioButton();
            this.groupGender = new System.Windows.Forms.GroupBox();
            this.chkReading = new System.Windows.Forms.CheckBox();
            this.chkPainting = new System.Windows.Forms.CheckBox();
            this.lblHobbies = new System.Windows.Forms.Label();
            this.groupStatus = new System.Windows.Forms.GroupBox();
            this.radioMarried = new System.Windows.Forms.RadioButton();
            this.radioUnmarried = new System.Windows.Forms.RadioButton();
            this.btnPreview = new System.Windows.Forms.Button();
            this.cmbCountry = new System.Windows.Forms.ComboBox();
            this.groupGender.SuspendLayout();
            this.groupStatus.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblName
            // 
            this.lblName.AccessibleDescription = "";
            this.lblName.AutoSize = true;
            this.lblName.Location = new System.Drawing.Point(153, 63);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(125, 18);
            this.lblName.TabIndex = 0;
            this.lblName.Text = "Customer Name";
            // 
            // lblCountry
            // 
            this.lblCountry.AutoSize = true;
            this.lblCountry.Location = new System.Drawing.Point(153, 98);
            this.lblCountry.Name = "lblCountry";
            this.lblCountry.Size = new System.Drawing.Size(71, 18);
            this.lblCountry.TabIndex = 1;
            this.lblCountry.Text = "Country";
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(312, 60);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(196, 28);
            this.txtName.TabIndex = 2;
            // 
            // radioMale
            // 
            this.radioMale.AutoSize = true;
            this.radioMale.Location = new System.Drawing.Point(0, 42);
            this.radioMale.Name = "radioMale";
            this.radioMale.Size = new System.Drawing.Size(69, 22);
            this.radioMale.TabIndex = 4;
            this.radioMale.TabStop = true;
            this.radioMale.Text = "Male";
            this.radioMale.UseVisualStyleBackColor = true;
            // 
            // radioFemale
            // 
            this.radioFemale.AutoSize = true;
            this.radioFemale.Location = new System.Drawing.Point(172, 42);
            this.radioFemale.Name = "radioFemale";
            this.radioFemale.Size = new System.Drawing.Size(87, 22);
            this.radioFemale.TabIndex = 5;
            this.radioFemale.TabStop = true;
            this.radioFemale.Text = "Female";
            this.radioFemale.UseVisualStyleBackColor = true;
            // 
            // groupGender
            // 
            this.groupGender.Controls.Add(this.radioMale);
            this.groupGender.Controls.Add(this.radioFemale);
            this.groupGender.Location = new System.Drawing.Point(156, 144);
            this.groupGender.Name = "groupGender";
            this.groupGender.Size = new System.Drawing.Size(352, 83);
            this.groupGender.TabIndex = 6;
            this.groupGender.TabStop = false;
            this.groupGender.Text = "Gender";
            // 
            // chkReading
            // 
            this.chkReading.AutoSize = true;
            this.chkReading.Location = new System.Drawing.Point(299, 255);
            this.chkReading.Name = "chkReading";
            this.chkReading.Size = new System.Drawing.Size(97, 22);
            this.chkReading.TabIndex = 7;
            this.chkReading.Text = "Reading";
            this.chkReading.UseVisualStyleBackColor = true;
            // 
            // chkPainting
            // 
            this.chkPainting.AutoSize = true;
            this.chkPainting.Location = new System.Drawing.Point(402, 254);
            this.chkPainting.Name = "chkPainting";
            this.chkPainting.Size = new System.Drawing.Size(106, 22);
            this.chkPainting.TabIndex = 8;
            this.chkPainting.Text = "Painting";
            this.chkPainting.UseVisualStyleBackColor = true;
            // 
            // lblHobbies
            // 
            this.lblHobbies.AutoSize = true;
            this.lblHobbies.Location = new System.Drawing.Point(156, 255);
            this.lblHobbies.Name = "lblHobbies";
            this.lblHobbies.Size = new System.Drawing.Size(71, 18);
            this.lblHobbies.TabIndex = 9;
            this.lblHobbies.Text = "Hobbies";
            // 
            // groupStatus
            // 
            this.groupStatus.Controls.Add(this.radioUnmarried);
            this.groupStatus.Controls.Add(this.radioMarried);
            this.groupStatus.Location = new System.Drawing.Point(156, 302);
            this.groupStatus.Name = "groupStatus";
            this.groupStatus.Size = new System.Drawing.Size(352, 83);
            this.groupStatus.TabIndex = 10;
            this.groupStatus.TabStop = false;
            this.groupStatus.Text = "Status";
            // 
            // radioMarried
            // 
            this.radioMarried.AutoSize = true;
            this.radioMarried.Location = new System.Drawing.Point(6, 43);
            this.radioMarried.Name = "radioMarried";
            this.radioMarried.Size = new System.Drawing.Size(96, 22);
            this.radioMarried.TabIndex = 0;
            this.radioMarried.TabStop = true;
            this.radioMarried.Text = "Married";
            this.radioMarried.UseVisualStyleBackColor = true;
            // 
            // radioUnmarried
            // 
            this.radioUnmarried.AutoSize = true;
            this.radioUnmarried.Location = new System.Drawing.Point(172, 43);
            this.radioUnmarried.Name = "radioUnmarried";
            this.radioUnmarried.Size = new System.Drawing.Size(114, 22);
            this.radioUnmarried.TabIndex = 1;
            this.radioUnmarried.TabStop = true;
            this.radioUnmarried.Text = "Unmarried";
            this.radioUnmarried.UseVisualStyleBackColor = true;
            // 
            // btnPreview
            // 
            this.btnPreview.Location = new System.Drawing.Point(202, 392);
            this.btnPreview.Name = "btnPreview";
            this.btnPreview.Size = new System.Drawing.Size(240, 23);
            this.btnPreview.TabIndex = 11;
            this.btnPreview.Text = "Preview";
            this.btnPreview.UseVisualStyleBackColor = true;
            this.btnPreview.Click += new System.EventHandler(this.btnPreview_Click);
            // 
            // cmbCountry
            // 
            this.cmbCountry.FormattingEnabled = true;
            this.cmbCountry.Location = new System.Drawing.Point(312, 98);
            this.cmbCountry.Name = "cmbCountry";
            this.cmbCountry.Size = new System.Drawing.Size(196, 26);
            this.cmbCountry.TabIndex = 12;
            this.cmbCountry.SelectedIndexChanged += new System.EventHandler(this.cmbCountry_SelectedIndexChanged);
            // 
            // frmCustomerDataEntry
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 18F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.cmbCountry);
            this.Controls.Add(this.btnPreview);
            this.Controls.Add(this.groupStatus);
            this.Controls.Add(this.lblHobbies);
            this.Controls.Add(this.chkPainting);
            this.Controls.Add(this.chkReading);
            this.Controls.Add(this.groupGender);
            this.Controls.Add(this.txtName);
            this.Controls.Add(this.lblCountry);
            this.Controls.Add(this.lblName);
            this.Name = "frmCustomerDataEntry";
            this.Text = "Customer Data Entry Screen";
            this.groupGender.ResumeLayout(false);
            this.groupGender.PerformLayout();
            this.groupStatus.ResumeLayout(false);
            this.groupStatus.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblName;
        private System.Windows.Forms.Label lblCountry;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.RadioButton radioMale;
        private System.Windows.Forms.RadioButton radioFemale;
        private System.Windows.Forms.GroupBox groupGender;
        private System.Windows.Forms.CheckBox chkReading;
        private System.Windows.Forms.CheckBox chkPainting;
        private System.Windows.Forms.Label lblHobbies;
        private System.Windows.Forms.GroupBox groupStatus;
        private System.Windows.Forms.RadioButton radioUnmarried;
        private System.Windows.Forms.RadioButton radioMarried;
        private System.Windows.Forms.Button btnPreview;
        private System.Windows.Forms.ComboBox cmbCountry;
    }
}

