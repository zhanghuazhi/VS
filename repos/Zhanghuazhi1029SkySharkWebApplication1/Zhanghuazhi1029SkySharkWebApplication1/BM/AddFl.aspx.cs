using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Zhanghuazhi1029SkySharkWebApplication1.BM
{
    public partial class AddFl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtDepartureTime_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtFlightNumber_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            string selectSql = "SELECT FltNo FROM dtFltDetails";
            SqlCommand cmd = new SqlCommand(selectSql, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet, "FlightNo");
            conn.Close();
            foreach (DataRow row in dataSet.Tables["FlightNo"].Rows)
            {
                if (row[0].ToString().Trim() == txtFlightNumber.Text.Trim())
                {
                    lblMessage.Text = "The Flight already exists. Please try another fligh number";
                    return;
                }
            }
            TimeSpan deptime, arrtime;
            String DepDateTime, ArrDateTime;
            try
            {
                deptime = Convert.ToDateTime(txtDepartureTime.Text.Trim()).TimeOfDay;
                arrtime = Convert.ToDateTime(txtArrivalTime.Text.Trim()).TimeOfDay;
                DepDateTime = calDepartureTime.SelectedDate.ToShortDateString() + "" + deptime.ToString();
                ArrDateTime = calArrivalTime.SelectedDate.ToShortDateString() + "" + arrtime.ToString();

                if (deptime >= arrtime)
                {
                    lblMessage.Text = "Departure Time cant be greater than or equal to arrival time";
                    return;
                }
            }
            catch
            {
                lblMessage.Text = "Invalid departure or arrival time";
                return;
            }
            try
            {
                conn.Open();
                string updateSql = "INSERT INTO [dtFltDetails] ([FltNo], [Origin], [Destination], [Deptime], [Arrtime], [AircraftType], [SeatsExec], [SeatsBn], [FareExec], [FareBn], [LaunchDate]) " +
                    "VALUES (@FltNo, @Origin, @Destination, @Deptime, @Arrtime, @AircraftType, @SeatsExec, @SeatsBn, @FareExec, @FareBn, @LaunchDate)";
                SqlCommand cmd2 = new SqlCommand(updateSql, conn);
                cmd2.Parameters.AddWithValue("@FltNo", txtFlightNumber.Text.Trim());
                cmd2.Parameters.AddWithValue("@Origin", txtPlace.Text.Trim());
                cmd2.Parameters.AddWithValue("@Destination", txtDestination.Text.Trim());
                cmd2.Parameters.AddWithValue("@Deptime", DepDateTime);
                cmd2.Parameters.AddWithValue("@Arrtime", ArrDateTime);
                cmd2.Parameters.AddWithValue("@AircraftType", txtAircraftType.Text.Trim());
                cmd2.Parameters.AddWithValue("@SeatsExec", Convert.ToInt32(txtNOSE.Text.Trim()));
                cmd2.Parameters.AddWithValue("@SeatsBn", Convert.ToInt32(txtNOSB.Text.Trim()));
                cmd2.Parameters.AddWithValue("@FareExec", Convert.ToInt32(txtExecutieClassFares.Text.Trim()));
                cmd2.Parameters.AddWithValue("@FareBn", Convert.ToInt32(txtBusinessClassFares.Text.Trim()));
                cmd2.Parameters.AddWithValue("@LaunchDate", DateTime.Today.Date.ToShortDateString());
                int n = cmd2.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                conn.Close();
                return;
            }
            conn.Close();
            lblMessage.Text = "Flight add Successfully";
            txtFlightNumber.Text = "";
            txtPlace.Text = "";
            txtAircraftType.Text = "";
            //calArrivalTime= "";
            txtBusinessClassFares.Text = "";

            txtDestination.Text = "";
            txtExecutieClassFares.Text = "";
            txtBusinessClassFares.Text = "";
            txtNOSB.Text = "";
            txtNOSE.Text = "";

        }
    }
}