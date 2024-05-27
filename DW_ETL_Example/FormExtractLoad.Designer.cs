
namespace DW_ETL_Example
{
    partial class FormExtractLoad
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.cbDBNameOLTP = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.cbTable = new System.Windows.Forms.ComboBox();
            this.btnExtract = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.tbUserOLTP = new System.Windows.Forms.TextBox();
            this.tbPassOLTP = new System.Windows.Forms.TextBox();
            this.btnConnectOLTP = new System.Windows.Forms.Button();
            this.btnDiscOLTP = new System.Windows.Forms.Button();
            this.dgvExtractedData = new System.Windows.Forms.DataGridView();
            this.label6 = new System.Windows.Forms.Label();
            this.btnTL = new System.Windows.Forms.Button();
            this.tbHostOLAP = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.tbDBNameOLAP = new System.Windows.Forms.TextBox();
            this.btnDiscOLAP = new System.Windows.Forms.Button();
            this.btnConnectOLAP = new System.Windows.Forms.Button();
            this.tbPassOLAP = new System.Windows.Forms.TextBox();
            this.tbUserOLAP = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.lblStatOLTP = new System.Windows.Forms.Label();
            this.lblStatOLAP = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvExtractedData)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(18, 53);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(181, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "EXTRACT FROM :";
            // 
            // cbDBNameOLTP
            // 
            this.cbDBNameOLTP.FormattingEnabled = true;
            this.cbDBNameOLTP.Items.AddRange(new object[] {
            "[select OLTP]",
            "DW_OLTP1",
            "DW_OLTP2",
            "DW_OLTP3"});
            this.cbDBNameOLTP.Location = new System.Drawing.Point(207, 50);
            this.cbDBNameOLTP.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cbDBNameOLTP.Name = "cbDBNameOLTP";
            this.cbDBNameOLTP.Size = new System.Drawing.Size(378, 33);
            this.cbDBNameOLTP.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(49, 219);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(150, 25);
            this.label3.TabIndex = 4;
            this.label3.Text = "TABLE NAME :";
            // 
            // cbTable
            // 
            this.cbTable.FormattingEnabled = true;
            this.cbTable.Items.AddRange(new object[] {
            "[select Table Name]",
            "Customers",
            "Orders",
            "OrderDetails"});
            this.cbTable.Location = new System.Drawing.Point(207, 216);
            this.cbTable.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cbTable.Name = "cbTable";
            this.cbTable.Size = new System.Drawing.Size(378, 33);
            this.cbTable.TabIndex = 5;
            this.cbTable.SelectedIndexChanged += new System.EventHandler(this.cbTable_SelectedIndexChanged);
            // 
            // btnExtract
            // 
            this.btnExtract.Location = new System.Drawing.Point(601, 209);
            this.btnExtract.Name = "btnExtract";
            this.btnExtract.Size = new System.Drawing.Size(124, 45);
            this.btnExtract.TabIndex = 6;
            this.btnExtract.Text = "EXTRACT";
            this.btnExtract.UseVisualStyleBackColor = true;
            this.btnExtract.Click += new System.EventHandler(this.btnExtract_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(55, 94);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(145, 25);
            this.label4.TabIndex = 7;
            this.label4.Text = "DB Username :";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(59, 130);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(141, 25);
            this.label5.TabIndex = 8;
            this.label5.Text = "DB Password :";
            // 
            // tbUserOLTP
            // 
            this.tbUserOLTP.Location = new System.Drawing.Point(207, 91);
            this.tbUserOLTP.Name = "tbUserOLTP";
            this.tbUserOLTP.Size = new System.Drawing.Size(378, 30);
            this.tbUserOLTP.TabIndex = 9;
            this.tbUserOLTP.Text = "root";
            // 
            // tbPassOLTP
            // 
            this.tbPassOLTP.Location = new System.Drawing.Point(207, 127);
            this.tbPassOLTP.Name = "tbPassOLTP";
            this.tbPassOLTP.Size = new System.Drawing.Size(378, 30);
            this.tbPassOLTP.TabIndex = 10;
            this.tbPassOLTP.Text = "root";
            // 
            // btnConnectOLTP
            // 
            this.btnConnectOLTP.Location = new System.Drawing.Point(207, 163);
            this.btnConnectOLTP.Name = "btnConnectOLTP";
            this.btnConnectOLTP.Size = new System.Drawing.Size(124, 45);
            this.btnConnectOLTP.TabIndex = 11;
            this.btnConnectOLTP.Text = "CONNECT";
            this.btnConnectOLTP.UseVisualStyleBackColor = true;
            this.btnConnectOLTP.Click += new System.EventHandler(this.btnConnectOLTP_Click);
            // 
            // btnDiscOLTP
            // 
            this.btnDiscOLTP.Location = new System.Drawing.Point(337, 163);
            this.btnDiscOLTP.Name = "btnDiscOLTP";
            this.btnDiscOLTP.Size = new System.Drawing.Size(161, 45);
            this.btnDiscOLTP.TabIndex = 13;
            this.btnDiscOLTP.Text = "DISCONNECT";
            this.btnDiscOLTP.UseVisualStyleBackColor = true;
            this.btnDiscOLTP.Click += new System.EventHandler(this.btnDiscOLTP_Click);
            // 
            // dgvExtractedData
            // 
            this.dgvExtractedData.AllowUserToAddRows = false;
            this.dgvExtractedData.AllowUserToDeleteRows = false;
            this.dgvExtractedData.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvExtractedData.Location = new System.Drawing.Point(12, 330);
            this.dgvExtractedData.Name = "dgvExtractedData";
            this.dgvExtractedData.ReadOnly = true;
            this.dgvExtractedData.RowHeadersWidth = 51;
            this.dgvExtractedData.RowTemplate.Height = 24;
            this.dgvExtractedData.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvExtractedData.ShowEditingIcon = false;
            this.dgvExtractedData.Size = new System.Drawing.Size(1360, 410);
            this.dgvExtractedData.TabIndex = 14;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(18, 302);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(210, 25);
            this.label6.TabIndex = 15;
            this.label6.Text = "EXTRACTED DATA : ";
            // 
            // btnTL
            // 
            this.btnTL.Location = new System.Drawing.Point(601, 269);
            this.btnTL.Name = "btnTL";
            this.btnTL.Size = new System.Drawing.Size(236, 45);
            this.btnTL.TabIndex = 16;
            this.btnTL.Text = "LOAD TO DW / OLAP";
            this.btnTL.UseVisualStyleBackColor = true;
            this.btnTL.Click += new System.EventHandler(this.btnTL_Click);
            // 
            // tbHostOLAP
            // 
            this.tbHostOLAP.Location = new System.Drawing.Point(994, 53);
            this.tbHostOLAP.Name = "tbHostOLAP";
            this.tbHostOLAP.Size = new System.Drawing.Size(378, 30);
            this.tbHostOLAP.TabIndex = 37;
            this.tbHostOLAP.Text = "sub14.sift-uc.id";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(799, 56);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(188, 25);
            this.label2.TabIndex = 36;
            this.label2.Text = "LOAD TO (HOST) :";
            // 
            // tbDBNameOLAP
            // 
            this.tbDBNameOLAP.Location = new System.Drawing.Point(994, 89);
            this.tbDBNameOLAP.Name = "tbDBNameOLAP";
            this.tbDBNameOLAP.Size = new System.Drawing.Size(378, 30);
            this.tbDBNameOLAP.TabIndex = 35;
            this.tbDBNameOLAP.Text = "subsif15_dw_olap";
            // 
            // btnDiscOLAP
            // 
            this.btnDiscOLAP.Location = new System.Drawing.Point(1124, 202);
            this.btnDiscOLAP.Name = "btnDiscOLAP";
            this.btnDiscOLAP.Size = new System.Drawing.Size(161, 46);
            this.btnDiscOLAP.TabIndex = 34;
            this.btnDiscOLAP.Text = "DISCONNECT";
            this.btnDiscOLAP.UseVisualStyleBackColor = true;
            this.btnDiscOLAP.Click += new System.EventHandler(this.btnDiscOLAP_Click);
            // 
            // btnConnectOLAP
            // 
            this.btnConnectOLAP.Location = new System.Drawing.Point(994, 202);
            this.btnConnectOLAP.Name = "btnConnectOLAP";
            this.btnConnectOLAP.Size = new System.Drawing.Size(124, 46);
            this.btnConnectOLAP.TabIndex = 33;
            this.btnConnectOLAP.Text = "CONNECT";
            this.btnConnectOLAP.UseVisualStyleBackColor = true;
            this.btnConnectOLAP.Click += new System.EventHandler(this.btnConnectOLAP_Click);
            // 
            // tbPassOLAP
            // 
            this.tbPassOLAP.Location = new System.Drawing.Point(994, 161);
            this.tbPassOLAP.Name = "tbPassOLAP";
            this.tbPassOLAP.Size = new System.Drawing.Size(378, 30);
            this.tbPassOLAP.TabIndex = 32;
            this.tbPassOLAP.Text = "D2eM1lNrYw{Q";
            // 
            // tbUserOLAP
            // 
            this.tbUserOLAP.Location = new System.Drawing.Point(994, 125);
            this.tbUserOLAP.Name = "tbUserOLAP";
            this.tbUserOLAP.Size = new System.Drawing.Size(378, 30);
            this.tbUserOLAP.TabIndex = 31;
            this.tbUserOLAP.Text = "subsif15_dw_olap_user";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(846, 164);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(141, 25);
            this.label7.TabIndex = 30;
            this.label7.Text = "DB Password :";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(842, 128);
            this.label8.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(145, 25);
            this.label8.TabIndex = 29;
            this.label8.Text = "DB Username :";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(879, 92);
            this.label9.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(107, 25);
            this.label9.TabIndex = 28;
            this.label9.Text = "DB Name :";
            // 
            // lblStatOLTP
            // 
            this.lblStatOLTP.AutoSize = true;
            this.lblStatOLTP.Location = new System.Drawing.Point(332, 20);
            this.lblStatOLTP.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblStatOLTP.Name = "lblStatOLTP";
            this.lblStatOLTP.Size = new System.Drawing.Size(138, 25);
            this.lblStatOLTP.TabIndex = 38;
            this.lblStatOLTP.Text = "status OLTP : ";
            this.lblStatOLTP.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // lblStatOLAP
            // 
            this.lblStatOLAP.AutoSize = true;
            this.lblStatOLAP.Location = new System.Drawing.Point(1146, 20);
            this.lblStatOLAP.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblStatOLAP.Name = "lblStatOLAP";
            this.lblStatOLAP.Size = new System.Drawing.Size(139, 25);
            this.lblStatOLAP.TabIndex = 39;
            this.lblStatOLAP.Text = "status OLAP : ";
            this.lblStatOLAP.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // FormExtractLoad
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1401, 766);
            this.Controls.Add(this.lblStatOLAP);
            this.Controls.Add(this.lblStatOLTP);
            this.Controls.Add(this.tbHostOLAP);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.tbDBNameOLAP);
            this.Controls.Add(this.btnDiscOLAP);
            this.Controls.Add(this.btnConnectOLAP);
            this.Controls.Add(this.tbPassOLAP);
            this.Controls.Add(this.tbUserOLAP);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.btnTL);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.dgvExtractedData);
            this.Controls.Add(this.btnDiscOLTP);
            this.Controls.Add(this.btnConnectOLTP);
            this.Controls.Add(this.tbPassOLTP);
            this.Controls.Add(this.tbUserOLTP);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.btnExtract);
            this.Controls.Add(this.cbTable);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cbDBNameOLTP);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "FormExtractLoad";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormExtract";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormExtractLoad_FormClosing);
            this.Load += new System.EventHandler(this.FormExtractLoad_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvExtractedData)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbDBNameOLTP;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cbTable;
        private System.Windows.Forms.Button btnExtract;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox tbUserOLTP;
        private System.Windows.Forms.TextBox tbPassOLTP;
        private System.Windows.Forms.Button btnConnectOLTP;
        private System.Windows.Forms.Button btnDiscOLTP;
        private System.Windows.Forms.DataGridView dgvExtractedData;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnTL;
        private System.Windows.Forms.TextBox tbHostOLAP;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tbDBNameOLAP;
        private System.Windows.Forms.Button btnDiscOLAP;
        private System.Windows.Forms.Button btnConnectOLAP;
        private System.Windows.Forms.TextBox tbPassOLAP;
        private System.Windows.Forms.TextBox tbUserOLAP;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label lblStatOLTP;
        private System.Windows.Forms.Label lblStatOLAP;
    }
}

