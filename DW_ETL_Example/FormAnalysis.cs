using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using OxyPlot.Wpf;

namespace DW_ETL_Example
{
    public partial class FormAnalysis : Form
    {
        MySqlConnection myConnOLAP;
        MySqlCommand myCmdOLAP = new MySqlCommand();
        MySqlDataAdapter myAdapter;
        DataTable dt;

        public FormAnalysis()
        {
            InitializeComponent();
        }

        private void FormAnalysis_Load(object sender, EventArgs e)
        {
            cbReport1.SelectedIndex = 3;
            disconnectedOLAPComponent();
        }

        private void btnConnectOLAP_Click(object sender, EventArgs e)
        {
            connToOLAPDB(tbHostOLAP.Text, tbUserOLAP.Text, tbPassOLAP.Text, tbDBNameOLAP.Text);
            connectedOLAPComponent();
        }

        private void btnDiscOLAP_Click(object sender, EventArgs e)
        {
            disconnectedOLAPComponent();
            MessageBox.Show("Koneksi DATA WAREHOUSE / OLAP DIPUTUS!");
            myConnOLAP.Close();
        }

        private void connectedOLAPComponent()
        {
            tbHostOLAP.Enabled = false;
            tbDBNameOLAP.Enabled = false;
            tbUserOLAP.Enabled = false;
            tbPassOLAP.Enabled = false;
            btnConnectOLAP.Enabled = false;
            btnDiscOLAP.Enabled = true;
            lblStatOLAP.Text = "Status OLAP : Connected";
        }

        private void disconnectedOLAPComponent()
        {
            tbHostOLAP.Enabled = true;
            tbDBNameOLAP.Enabled = true;
            tbUserOLAP.Enabled = true;
            tbPassOLAP.Enabled = true;
            btnConnectOLAP.Enabled = true;
            btnDiscOLAP.Enabled = false;
            lblStatOLAP.Text = "Status OLAP : Disconnected";
        }

        private void connToOLAPDB(string host, string user, string pass, string db_name)
        {
            try
            {
                myConnOLAP = new MySqlConnection("SERVER=" + host + ";PORT=3306;UID=" + user + ";PASSWORD=" + pass + ";DATABASE=" + db_name);

                if (myConnOLAP.State == ConnectionState.Closed)
                {
                    myConnOLAP.Open();
                    MessageBox.Show("Berhasil TERKONEKSI ke DATA WAREHOUSE (" + host + ")");
                    lblStatOLAP.Text = "Status OLAP : Connected";
                }
                else if (myConnOLAP.State == ConnectionState.Open)
                {
                    MessageBox.Show("Koneksi masih TERBUKA");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void FormAnalysis_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (myConnOLAP != null)
                if (myConnOLAP.State == ConnectionState.Open) myConnOLAP.Close();
        }

        private void btnReport1_Click(object sender, EventArgs e)
        {
            try
            {
                string cmdText = "CALL pMAUOrigin('" + cbReport1.Text  + "');";

                myAdapter = new MySqlDataAdapter(cmdText, myConnOLAP);
                dt = new DataTable();
                myAdapter.Fill(dt);
                dgvResult.DataSource = dt;
                dgvResult.Refresh();

                chart1.DataSource = dt;
                chart1.Series[0].Name = "Purchase Frequency";
                switch (cbReport1.Text)
                {
                    case "wilbert":
                        chart1.Series[0].XValueMember = "USERNAME";
                        chart1.Series[0].YValueMembers = "PurchaseFreq";
                        break;
                    case "mario":
                        chart1.Series[0].XValueMember = "USERNAME";
                        chart1.Series[0].YValueMembers = "PurchaseFreq";
                        break;
                    case "vicky":
                        chart1.Series[0].XValueMember = "USERNAME";
                        chart1.Series[0].YValueMembers = "PurchaseFreq";
                        break;
                    case "all":
                        chart1.Series[0].XValueMember = "USERNAME";
                        chart1.Series[0].YValueMembers = "PurchaseFreq";
                        break ;
                }
                chart1.DataBind();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void btnReport2_Click(object sender, EventArgs e)
        {
            try
            {
                string cmdText = "SELECT * FROM vTopSelling;";

                myAdapter = new MySqlDataAdapter(cmdText, myConnOLAP);
                dt = new DataTable();
                myAdapter.Fill(dt);
                dgvResult.DataSource = dt;
                dgvResult.Refresh();

                chart1.DataSource = dt;
                chart1.Series[0].Name = "Total Sold";
                chart1.Series[0].XValueMember = "Nama_produk";
                chart1.Series[0].YValueMembers = "ProductSales";
                chart1.DataBind();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string cmdText = "SELECT * FROM vSalesByCategory;";

                myAdapter = new MySqlDataAdapter(cmdText, myConnOLAP);
                dt = new DataTable();
                myAdapter.Fill(dt);
                dgvResult.DataSource = dt;
                dgvResult.Refresh();

                chart1.DataSource = dt;
                chart1.Series[0].Name = "Total Sold";
                chart1.Series[0].XValueMember = "Category";
                chart1.Series[0].YValueMembers = "TotalSales";
                chart1.DataBind();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                string cmdText = "SELECT * FROM vMonthlySales;";

                myAdapter = new MySqlDataAdapter(cmdText, myConnOLAP);
                dt = new DataTable();
                myAdapter.Fill(dt);
                dgvResult.DataSource = dt;
                dgvResult.Refresh();

                chart1.DataSource = dt;
                chart1.Series[0].Name = "Total Sold";
                chart1.Series[0].XValueMember = "Month";
                chart1.Series[0].YValueMembers = "TotalSales";
                chart1.DataBind();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                string cmdText = "SELECT * FROM vTopOrigin;";

                myAdapter = new MySqlDataAdapter(cmdText, myConnOLAP);
                dt = new DataTable();
                myAdapter.Fill(dt);
                dgvResult.DataSource = dt;
                dgvResult.Refresh();

                chart1.DataSource = dt;
                chart1.Series[0].Name = "Total Sold";
                chart1.Series[0].XValueMember = "orderorigin";
                chart1.Series[0].YValueMembers = "TotalSales";
                chart1.DataBind();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
}
