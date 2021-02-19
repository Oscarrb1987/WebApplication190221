using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace WebApplication190221
{
    public partial class WebFormPrueba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtAceptar_Click(object sender, EventArgs e)
        {
            //Usuarios
            //Variables
            //IDusuario
            //[Nombre]
            //[Apellidos]
            //[Direccion]
            //[Mail]

            String id = TxtIDusuario.Text;
            String nombre = TxNombre.Text;
            String apellidos = TxApellidos.Text;
            String direccion = TxDireccion.Text;
            String mail = TxMail.Text;
     
            string cadenacon = ConfigurationManager.ConnectionStrings["conexionPracticas"].ConnectionString;
            SqlConnection con = new SqlConnection(cadenacon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO dbo.Usuarios (IDusuario,Nombre,Apellidos,Direccion,Mail) VALUES(@param1,@param2,@param3,@param4,@param5)";
            
            cmd.Parameters.AddWithValue("@param1", id);
            cmd.Parameters.AddWithValue("@param2", nombre);
            cmd.Parameters.AddWithValue("@param3", apellidos);
            cmd.Parameters.AddWithValue("@param4", direccion);
            cmd.Parameters.AddWithValue("@param5", mail);

            cmd.ExecuteNonQuery();
            con.Close();


        }
    }
}