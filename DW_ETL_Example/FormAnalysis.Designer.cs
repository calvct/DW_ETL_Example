
namespace DW_ETL_Example
{
    partial class FormAnalysis
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
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.label1 = new System.Windows.Forms.Label();
            this.cbReport1 = new System.Windows.Forms.ComboBox();
            this.btnReport1 = new System.Windows.Forms.Button();
            this.tbOrigin = new System.Windows.Forms.TextBox();
            this.lblStatOLAP = new System.Windows.Forms.Label();
            this.tbHostOLAP = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.tbDBNameOLAP = new System.Windows.Forms.TextBox();
            this.btnDiscOLAP = new System.Windows.Forms.Button();
            this.btnConnectOLAP = new System.Windows.Forms.Button();
            this.tbPassOLAP = new System.Windows.Forms.TextBox();
            this.tbUserOLAP = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.btnReport2 = new System.Windows.Forms.Button();
            this.cbReport2 = new System.Windows.Forms.ComboBox();
            this.dgvResult = new System.Windows.Forms.DataGridView();
            this.chart1 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            ((System.ComponentModel.ISupportInitialize)(this.dgvResult)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(368, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Metric 3 : Customer Purchase Frequency";
            // 
            // cbReport1
            // 
            this.cbReport1.FormattingEnabled = true;
            this.cbReport1.Items.AddRange(new object[] {
            "ALL",
            "Specific Origin",
            "ALL, Group by Origin",
            "[choose filter]"});
            this.cbReport1.Location = new System.Drawing.Point(17, 37);
            this.cbReport1.Name = "cbReport1";
            this.cbReport1.Size = new System.Drawing.Size(232, 33);
            this.cbReport1.TabIndex = 1;
            // 
            // btnReport1
            // 
            this.btnReport1.Location = new System.Drawing.Point(255, 36);
            this.btnReport1.Name = "btnReport1";
            this.btnReport1.Size = new System.Drawing.Size(126, 33);
            this.btnReport1.TabIndex = 2;
            this.btnReport1.Text = "Get Report";
            this.btnReport1.UseVisualStyleBackColor = true;
            this.btnReport1.Click += new System.EventHandler(this.btnReport1_Click);
            // 
            // tbOrigin
            // 
            this.tbOrigin.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbOrigin.Location = new System.Drawing.Point(17, 76);
            this.tbOrigin.Name = "tbOrigin";
            this.tbOrigin.Size = new System.Drawing.Size(96, 27);
            this.tbOrigin.TabIndex = 3;
            this.tbOrigin.Text = "Nganjuk";
            // 
            // lblStatOLAP
            // 
            this.lblStatOLAP.AutoSize = true;
            this.lblStatOLAP.Location = new System.Drawing.Point(876, 9);
            this.lblStatOLAP.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblStatOLAP.Name = "lblStatOLAP";
            this.lblStatOLAP.Size = new System.Drawing.Size(139, 25);
            this.lblStatOLAP.TabIndex = 61;
            this.lblStatOLAP.Text = "status OLAP : ";
            this.lblStatOLAP.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // tbHostOLAP
            // 
            this.tbHostOLAP.Location = new System.Drawing.Point(724, 42);
            this.tbHostOLAP.Name = "tbHostOLAP";
            this.tbHostOLAP.Size = new System.Drawing.Size(378, 30);
            this.tbHostOLAP.TabIndex = 60;
            this.tbHostOLAP.Text = "sub14.sift-uc.id";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(578, 47);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(139, 25);
            this.label3.TabIndex = 59;
            this.label3.Text = "OLAP HOST :";
            // 
            // tbDBNameOLAP
            // 
            this.tbDBNameOLAP.Location = new System.Drawing.Point(724, 78);
            this.tbDBNameOLAP.Name = "tbDBNameOLAP";
            this.tbDBNameOLAP.Size = new System.Drawing.Size(378, 30);
            this.tbDBNameOLAP.TabIndex = 58;
            this.tbDBNameOLAP.Text = "subsif15_dw_olap";
            // 
            // btnDiscOLAP
            // 
            this.btnDiscOLAP.Location = new System.Drawing.Point(854, 191);
            this.btnDiscOLAP.Name = "btnDiscOLAP";
            this.btnDiscOLAP.Size = new System.Drawing.Size(161, 46);
            this.btnDiscOLAP.TabIndex = 57;
            this.btnDiscOLAP.Text = "DISCONNECT";
            this.btnDiscOLAP.UseVisualStyleBackColor = true;
            this.btnDiscOLAP.Click += new System.EventHandler(this.btnDiscOLAP_Click);
            // 
            // btnConnectOLAP
            // 
            this.btnConnectOLAP.Location = new System.Drawing.Point(724, 191);
            this.btnConnectOLAP.Name = "btnConnectOLAP";
            this.btnConnectOLAP.Size = new System.Drawing.Size(124, 46);
            this.btnConnectOLAP.TabIndex = 56;
            this.btnConnectOLAP.Text = "CONNECT";
            this.btnConnectOLAP.UseVisualStyleBackColor = true;
            this.btnConnectOLAP.Click += new System.EventHandler(this.btnConnectOLAP_Click);
            // 
            // tbPassOLAP
            // 
            this.tbPassOLAP.Location = new System.Drawing.Point(724, 150);
            this.tbPassOLAP.Name = "tbPassOLAP";
            this.tbPassOLAP.Size = new System.Drawing.Size(378, 30);
            this.tbPassOLAP.TabIndex = 55;
            this.tbPassOLAP.Text = "D2eM1lNrYw{Q";
            // 
            // tbUserOLAP
            // 
            this.tbUserOLAP.Location = new System.Drawing.Point(724, 114);
            this.tbUserOLAP.Name = "tbUserOLAP";
            this.tbUserOLAP.Size = new System.Drawing.Size(378, 30);
            this.tbUserOLAP.TabIndex = 54;
            this.tbUserOLAP.Text = "subsif15_dw_olap_user";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(576, 153);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(141, 25);
            this.label7.TabIndex = 53;
            this.label7.Text = "DB Password :";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(572, 117);
            this.label8.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(145, 25);
            this.label8.TabIndex = 52;
            this.label8.Text = "DB Username :";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(609, 81);
            this.label9.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(107, 25);
            this.label9.TabIndex = 51;
            this.label9.Text = "DB Name :";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 200);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(106, 25);
            this.label4.TabIndex = 63;
            this.label4.Text = "RESULT : ";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 119);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(284, 25);
            this.label5.TabIndex = 64;
            this.label5.Text = "Metric 4 : Best-Selling Products";
            // 
            // btnReport2
            // 
            this.btnReport2.Location = new System.Drawing.Point(255, 153);
            this.btnReport2.Name = "btnReport2";
            this.btnReport2.Size = new System.Drawing.Size(126, 33);
            this.btnReport2.TabIndex = 65;
            this.btnReport2.Text = "Get Report";
            this.btnReport2.UseVisualStyleBackColor = true;
            this.btnReport2.Click += new System.EventHandler(this.btnReport2_Click);
            // 
            // cbReport2
            // 
            this.cbReport2.FormattingEnabled = true;
            this.cbReport2.Items.AddRange(new object[] {
            "ALL",
            "Monthly",
            "Yearly"});
            this.cbReport2.Location = new System.Drawing.Point(17, 154);
            this.cbReport2.Name = "cbReport2";
            this.cbReport2.Size = new System.Drawing.Size(232, 33);
            this.cbReport2.TabIndex = 66;
            // 
            // dgvResult
            // 
            this.dgvResult.AllowUserToAddRows = false;
            this.dgvResult.AllowUserToDeleteRows = false;
            this.dgvResult.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvResult.Location = new System.Drawing.Point(17, 228);
            this.dgvResult.Name = "dgvResult";
            this.dgvResult.ReadOnly = true;
            this.dgvResult.RowHeadersWidth = 51;
            this.dgvResult.RowTemplate.Height = 24;
            this.dgvResult.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvResult.Size = new System.Drawing.Size(526, 227);
            this.dgvResult.TabIndex = 67;
            // 
            // chart1
            // 
            chartArea1.Name = "ChartArea1";
            this.chart1.ChartAreas.Add(chartArea1);
            legend1.Name = "Legend1";
            this.chart1.Legends.Add(legend1);
            this.chart1.Location = new System.Drawing.Point(17, 478);
            this.chart1.Name = "chart1";
            series1.ChartArea = "ChartArea1";
            series1.Legend = "Legend1";
            series1.Name = "Series1";
            this.chart1.Series.Add(series1);
            this.chart1.Size = new System.Drawing.Size(1085, 300);
            this.chart1.TabIndex = 68;
            this.chart1.Text = "chart1";
            // 
            // FormAnalysis
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1120, 796);
            this.Controls.Add(this.chart1);
            this.Controls.Add(this.dgvResult);
            this.Controls.Add(this.cbReport2);
            this.Controls.Add(this.btnReport2);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.lblStatOLAP);
            this.Controls.Add(this.tbHostOLAP);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.tbDBNameOLAP);
            this.Controls.Add(this.btnDiscOLAP);
            this.Controls.Add(this.btnConnectOLAP);
            this.Controls.Add(this.tbPassOLAP);
            this.Controls.Add(this.tbUserOLAP);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.tbOrigin);
            this.Controls.Add(this.btnReport1);
            this.Controls.Add(this.cbReport1);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "FormAnalysis";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormAnalysis";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormAnalysis_FormClosing);
            this.Load += new System.EventHandler(this.FormAnalysis_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvResult)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chart1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbReport1;
        private System.Windows.Forms.Button btnReport1;
        private System.Windows.Forms.TextBox tbOrigin;
        private System.Windows.Forms.Label lblStatOLAP;
        private System.Windows.Forms.TextBox tbHostOLAP;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox tbDBNameOLAP;
        private System.Windows.Forms.Button btnDiscOLAP;
        private System.Windows.Forms.Button btnConnectOLAP;
        private System.Windows.Forms.TextBox tbPassOLAP;
        private System.Windows.Forms.TextBox tbUserOLAP;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnReport2;
        private System.Windows.Forms.ComboBox cbReport2;
        private System.Windows.Forms.DataGridView dgvResult;
        private System.Windows.Forms.DataVisualization.Charting.Chart chart1;
    }
}